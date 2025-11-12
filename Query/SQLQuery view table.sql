CREATE VIEW vw_ChurnData as
      SELECT * FROM prod_Churn
      WHERE Customer_Status In ('Churned','Stayed')

CREATE VIEW vw_JoinData as
      SELECT * FROM prod_Churn
      WHERE Customer_Status = 'Joined'