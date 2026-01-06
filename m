Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oBXbBf8K4WnoogAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:14:55 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id BC6F84117C7
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:14:54 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id BA0CA44AA5
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:14:53 +0000 (UTC)
Received: from mx07-00178001.pphosted.com (mx08-00178001.pphosted.com [91.207.212.93])
	by lists.linaro.org (Postfix) with ESMTPS id 270463F836
	for <linaro-mm-sig@lists.linaro.org>; Tue,  6 Jan 2026 11:35:01 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=foss.st.com header.s=selector2 header.b="BQtl/UpF";
	spf=pass (lists.linaro.org: domain of "prvs=5466e16fc3=alain.volmat@foss.st.com" designates 91.207.212.93 as permitted sender) smtp.mailfrom="prvs=5466e16fc3=alain.volmat@foss.st.com";
	arc=pass ("microsoft.com:s=arcselector10001:i=1");
	dmarc=pass (policy=none) header.from=foss.st.com
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
	by mx07-00178001.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 606BXfC9787565;
	Tue, 6 Jan 2026 12:34:36 +0100
Received: from duzpr83cu001.outbound.protection.outlook.com (mail-northeuropeazon11012018.outbound.protection.outlook.com [52.101.66.18])
	by mx07-00178001.pphosted.com (PPS) with ESMTPS id 4bes49gwha-1
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT);
	Tue, 06 Jan 2026 12:34:36 +0100 (CET)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=YX13/1CM2LssbesJzD4Ne5vG7zFQRP4+tJiDXJLIigNGohGm9iKxm8uobeQshCJH8CERAL98eQkmnNmqfrjDpWn6mcY3QVvYxLkh2M5H7AREXY9QNm+C8lQZaAsiXNp28oHrJduzXMO8f9DNBtuD+e7or8FiUp1XQz1He6kH5BUC2S4Q/FmElrtXmNoVPn7dJU4OD5vjujxQMQjrfN11FWt5pclEDz7gZuCIjeCYl+RvG3i2zSUuZ8Bas9sHzlyiaiUGHc8aj0VDtNyl6njPoClsouswHqhwM6p3QvRfX/L2iomoyjoDYM2PWJ2ekAGHn4R2tV7pa2OLv+Uw4tG7dw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=29N9GI/QkTcnZzdsjicf17/x4psCdLmq1b3W2v0qC4U=;
 b=Tu+y2GJ9fR57P0K++85qgepoX1cCP8tAZMYj3Ryf6Jp8UbxNBVWt+NbHhB51AEsAfBCuWo+AdQRZySYTPFIqIdZLk/NPhxsvp1cIp+sjemOHJeu+u7K1+ZABtLDbfZ9AghWDBymO/At6HAyvA0Jf8wUsXs4YiDHwmRaJ8HfEI9+aC8pn/Hy91EoAQLFUj0tRzTRcPuBpLnz3MySd/32MgPBT4ZYc4hx1Nak5oeT1D3uA9WmavbT+HOLP56X9furdsqKAgETUcqLqUR3+9VlZFDdHfbo39dx43w3OexU5sCrqqJyP1NfP3hD5kdh/3xsGmwhIJUCTB+U7083emSJVeQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=fail (sender ip is
 164.130.1.59) smtp.rcpttodomain=lists.freedesktop.org
 smtp.mailfrom=foss.st.com; dmarc=fail (p=none sp=none pct=100) action=none
 header.from=foss.st.com; dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foss.st.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=29N9GI/QkTcnZzdsjicf17/x4psCdLmq1b3W2v0qC4U=;
 b=BQtl/UpFjEPYWePzYuI093RKjfLRLMVNzj7QY2u8DRvbqhjg/knEMsuPcLSxbZ6r0zE3cIaIPlNoj6EL54YO+37YOtwCU31DCubGVW0wOcXY5wReATatB6ANRkKPlFFabLEhJbr3DeAi7lR3eChktnHKwfT7BJBwemJCjoANaPpFVPJbA9hjQt9jkoNzon8wLv0a7t9fF/+VBgv6RK4FgMnEBzenfiv/YDJhpplx3XwcduLtn6/R2iNzb820JklMm9JE422ZHqS4IZGRQjamGH1vqJfglMLAT4wB9xExXy77CRksXHszuoM/rtND3mvpTV4O13t+3Yz5v7g29jRjUA==
Received: from DU7P251CA0022.EURP251.PROD.OUTLOOK.COM (2603:10a6:10:551::24)
 by AM9PR10MB4037.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:20b:1fe::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9478.4; Tue, 6 Jan
 2026 11:34:32 +0000
Received: from DB3PEPF0000885F.eurprd02.prod.outlook.com
 (2603:10a6:10:551:cafe::4b) by DU7P251CA0022.outlook.office365.com
 (2603:10a6:10:551::24) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9499.2 via Frontend Transport; Tue, 6
 Jan 2026 11:34:31 +0000
X-MS-Exchange-Authentication-Results: spf=fail (sender IP is 164.130.1.59)
 smtp.mailfrom=foss.st.com; dkim=none (message not signed)
 header.d=none;dmarc=fail action=none header.from=foss.st.com;
Received-SPF: Fail (protection.outlook.com: domain of foss.st.com does not
 designate 164.130.1.59 as permitted sender) receiver=protection.outlook.com;
 client-ip=164.130.1.59; helo=smtpO365.st.com;
Received: from smtpO365.st.com (164.130.1.59) by
 DB3PEPF0000885F.mail.protection.outlook.com (10.167.242.10) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9499.1 via Frontend Transport; Tue, 6 Jan 2026 11:34:31 +0000
Received: from STKDAG1NODE2.st.com (10.75.128.133) by smtpo365.st.com
 (10.250.44.71) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.17; Tue, 6 Jan
 2026 12:35:46 +0100
Received: from localhost (10.130.74.193) by STKDAG1NODE2.st.com
 (10.75.128.133) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.17; Tue, 6 Jan
 2026 12:34:30 +0100
From: Alain Volmat <alain.volmat@foss.st.com>
Date: Tue, 6 Jan 2026 12:34:28 +0100
Message-ID: <20260106-stm32-dcmi-dma-chaining-v2-0-70688bccd80a@foss.st.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAETzXGkC/3WNzQ6CMBCEX4Xs2SX9UQRPvofhUNsCe2hLuoRoC
 O9uJfHo8ZvMfLMB+0ye4VZtkP1KTCkWUKcK7GTi6JFcYVBCXaSSGnkJWqGzgdAFg6VEkeKInTf
 SmVYLcXVQ1nP2A70O86MvPBEvKb+Po1V+05+z/etcJQrUXXdurWnsc2juQ2KuealtCtDv+/4Bz
 Rx0u8AAAAA=
X-Change-ID: 20251213-stm32-dcmi-dma-chaining-9ea1da83007d
To: Hugues Fruchet <hugues.fruchet@foss.st.com>,
        Mauro Carvalho Chehab
	<mchehab@kernel.org>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        "Alexandre
 Torgue" <alexandre.torgue@foss.st.com>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Sumit Semwal <sumit.semwal@linaro.org>,
        =?utf-8?q?Christian_K=C3=B6nig?=
	<christian.koenig@amd.com>
X-Mailer: b4 0.14.3
X-Originating-IP: [10.130.74.193]
X-ClientProxiedBy: STKCAS1NODE1.st.com (10.75.128.134) To STKDAG1NODE2.st.com
 (10.75.128.133)
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DB3PEPF0000885F:EE_|AM9PR10MB4037:EE_
X-MS-Office365-Filtering-Correlation-Id: e446fca4-16ac-481d-bc5c-08de4d178f51
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|82310400026|7416014|376014|36860700013|1800799024;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?eW1qdDFUeGdKZU1PMmI5dmtZUERCQ3lBVWVjK1RjdmFINjdwN1FPWGR6SGJo?=
 =?utf-8?B?emNNS1o3RnErTWZmV3ZYUHRvQ2drdk43dFlqamk2ZitlUWluUmFycXM5c2xT?=
 =?utf-8?B?czEydjYxenZFa2d3ZGFScDZoNzNDZlBTaUhIc2x4MnRXQlh6WjBrNjRoZ1V0?=
 =?utf-8?B?Q1FMNENqbjVTeTFUTXpmaWtIa2FSMVFPeDFaYVh5bDFkTHJoZE1MLzRxQVZq?=
 =?utf-8?B?UVptdzBSWnlFYndDM2dmbU15RWNUNFp1ZXZKVXFvbHByb1VkN0pGaVpVWHEv?=
 =?utf-8?B?THNEQndSdGE4cXY0bm5tZFpkeHdMWlh1SUZEbHlFMzJXZHYyN3lCd2ZGaEMz?=
 =?utf-8?B?R2dTUGhsV1FDei93amcyNjc1aW9lSk9sSEdhOWUrTVZpNjJlWFI0VkQzenJK?=
 =?utf-8?B?dzhQbUh4TTYrdFpwdmtEbk53VWRkNHNWQi91elpaNWh5Nk9tNU5DWk5QVVlm?=
 =?utf-8?B?dE9tNmxRcFJCNlR2ejVDZnpjWHdOeGhKdTlJczNRbTVJNGc2WURaeXJ5YXZl?=
 =?utf-8?B?bmlBYlF5MGI0Q0lnU29mTG0zQ0ZhNFUvKzYzYlp6ZU9ncDltUy9pZEY2L0NV?=
 =?utf-8?B?d1Z4cndJNG03TStnMUdrMW5UN0lVNGQyOUpDbW1SZjBBQzRHVExiMW8zU2RS?=
 =?utf-8?B?eUJqVjB6OUFic09rV20wZ3ltVXBocUV6QXd1Y2JzdGc1TlRRcHZLQU1RTXc2?=
 =?utf-8?B?eG5QSzhrQlV3dGtKQUFOaUhtalRlSlBJZWVQMmtGT2N2UmVjT1FUaGpLN3pz?=
 =?utf-8?B?YXRYWEFxMHVva0RaRWVUL3NtQWRWdEs3L01pM2N0L2l2dG9RNStqdUszZStD?=
 =?utf-8?B?R2RwRHFaNmowZkVFcWFrTEVrUUZ1ZEt0YWhtUk10QUVxOENVUGhSTlFOMnBF?=
 =?utf-8?B?TUdwcDc2UE1ZOTdZd2Ixd25XQmVlUWt6V1pMYmpxeWRnREJ6MmZHbzNQbUZv?=
 =?utf-8?B?OW9saDEyYjdWeGx4OGNETE11dnVmb01mTjJWUDZGMlQ0SG4rT3BodHE0dEVB?=
 =?utf-8?B?QXUydk43bDA0V0p3cGtyMFhhWEh1b3hQQUJ3QS9Hck1Gbkd6ZWZvVlpnZi9x?=
 =?utf-8?B?RldHUnEwejlzM2YvUXFsUlE1akwvRUtaeU8zZlhCVWd3Slk4cGZZaFhEZ0NO?=
 =?utf-8?B?RXVORXZ0djlSMWtXVFFnMk1QRmtSSi9zcjVrbTlRNFBoSjloaCthRUxRM3lG?=
 =?utf-8?B?WENBU004VDlYV0tmNERCemhqUUhLMUxMZU5yNHlPYlNGa0RTUWx2S2dJQlVF?=
 =?utf-8?B?S0IrdGRveVMxYXFLNVczNDY3U1hCVjdiWHoweXcwbG5ZUDR3K2dkOUFqUEZn?=
 =?utf-8?B?dEtybmNIZHJlZGtTcTNoaDgwQUJsUEhRMmF6cjRzRVUyQ2VSQVAxZ1RnMnpV?=
 =?utf-8?B?VDB6SWxrMUlnK1RtRVNTNk1JdnFwdy9FSVpFQ3JpaGswa1JZMjFpMWdhZUhP?=
 =?utf-8?B?L0Nxak1mb0JaMXZJYVM0a01rMWhxT3NtdXlVN1JWa04zWFoyMU1ROCtPL3ZI?=
 =?utf-8?B?WEx5NEVtb0RCYlc3Y1BMUzlCWFJ6cllVUE9iMjVQcG5Tc3JvanhTQnRIbXdH?=
 =?utf-8?B?ekwyTG5OdTZpeDdkSWZOWU5wWmNFbUtGcTEwTDVCT2VvQ1BFckVnejdOalJW?=
 =?utf-8?B?WldWS3k2N1ZoTUNEemNBKzlCQTBzTE9YV0VxV25qOWo2N3ZGTWk5dmxWdDYx?=
 =?utf-8?B?UC8va1paTXp3akdDNnpPOENPbTYrSTNqOGZ5bENQWGgwRUhXQ1FZcW81V1Nm?=
 =?utf-8?B?QWUwZDYxeDdweHpnMFN2TXNRcFoxSG5TS3BlSEhkNlhzL3FxUUo5MUVmNTQ0?=
 =?utf-8?B?L0dFMno1cmdPSkpaem5CTmtlNzBNVmRNRm5HakQvRHdTVktMcjduSmU4Rmo2?=
 =?utf-8?B?UE5weC9nVFhZRzFqWjdJbVVlcHo1Z1piZnREZWV0aUZ4N0FTU2FRaElrdlF1?=
 =?utf-8?B?UTBvakZ6d0FoTnR1dCthYmwrVW5nSEZxNmJ4TjdVODZpNUhlbEZNZGtKL1JT?=
 =?utf-8?B?K254VzN5Zmlidkk3UWVkclRDeWR0TG9iOFFoOURyd0hQWXhjZW9PWFBMMWhG?=
 =?utf-8?B?cWtzTjVvSXB1YlgwZkZFdE4rdFJoUWlyek90bzlGOTBFLzFHS0dyU1JWT0ZI?=
 =?utf-8?Q?bfB5huZnJoLwMT37eOcp8uC9p?=
X-Forefront-Antispam-Report: 
	CIP:164.130.1.59;CTRY:IT;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:smtpO365.st.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(82310400026)(7416014)(376014)(36860700013)(1800799024);DIR:OUT;SFP:1101;
X-OriginatorOrg: foss.st.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Jan 2026 11:34:31.6171
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: e446fca4-16ac-481d-bc5c-08de4d178f51
X-MS-Exchange-CrossTenant-Id: 75e027c9-20d5-47d5-b82f-77d7cd041e8f
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=75e027c9-20d5-47d5-b82f-77d7cd041e8f;Ip=[164.130.1.59];Helo=[smtpO365.st.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	DB3PEPF0000885F.eurprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM9PR10MB4037
X-Proofpoint-ORIG-GUID: dYMMI9TRKwi8epPife8v9Ql2JJ4HqAln
X-Authority-Analysis: v=2.4 cv=SvWdKfO0 c=1 sm=1 tr=0 ts=695cf34c cx=c_pps
 a=6Uyp6RSWOiYq5P6bN3pzmg==:117 a=d6reE3nDawwanmLcZTMRXA==:17
 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19 a=wL9PcE0S0AMA:10 a=IkcTkHD0fZMA:10
 a=vUbySO9Y5rIA:10 a=s63m1ICgrNkA:10 a=KrXZwBdWH7kA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=8b9GpE9nAAAA:8
 a=6iEvN7UnCeBHclABOGUA:9 a=QEXdDO2ut3YA:10 a=T3LWEMljR5ZiDmsYVIUa:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA2MDA5OSBTYWx0ZWRfXzKGVqLOVl2Yg
 tc+rVjCEVHkvc7MgnK3jZa2E6hJ/3jqwne5JJbj0jXiozoG6LKJjsAKzYFX6sX1KqhUfHEKOm92
 YuOt24i5IxWOquH3n6E3KPmW9fOM/J38kTXbX5MFMlUd8iNSdLKt45pGdrg6FnocxAfbAojk/1v
 DzAAh6b3lAsR0CknGz7hOAio9yMzK6sVEDdwG/ybYEAe+z0uXCGCu5+30XmOLUEPWDwZ+Sbiniw
 xfM96qqNOCAhH3HBQ3EPNOo5FGZZNp9fNGjdcEWEpAdwm1UX4jo+QOlHNtsUuF//BbYzlHrihtM
 vCOfawwuB8wt0H6QL+V3g8O9ULHdvvoJJj7t18alk/Mgk+mflei/3R/6j80WWZL/Y8duO1wD/V5
 t6viT+v8vorOyw+2+xZ34c6m2/TzWg2mWD0SWGdROabdZKbUDzcVcKWEme5GWIjsovo+FzmSsa9
 KaD6xQJeWKRg28Vpf7A==
X-Proofpoint-GUID: dYMMI9TRKwi8epPife8v9Ql2JJ4HqAln
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-06_01,2026-01-06_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 clxscore=1015
 bulkscore=0 malwarescore=0 lowpriorityscore=0 spamscore=0 adultscore=0
 phishscore=0 suspectscore=0 impostorscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601060099
X-Spamd-Bar: ----
X-MailFrom: prvs=5466e16fc3=alain.volmat@foss.st.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 6SVSYN4MPB6N54TLV5AX6VS7OGVM6PXP
X-Message-ID-Hash: 6SVSYN4MPB6N54TLV5AX6VS7OGVM6PXP
X-Mailman-Approved-At: Thu, 16 Apr 2026 16:05:15 +0000
CC: linux-media@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, Alain Volmat <alain.volmat@foss.st.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v2 00/12] media: stm32: dcmi: stability & performance enhancements
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/6SVSYN4MPB6N54TLV5AX6VS7OGVM6PXP/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [4.09 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_REJECT(1.00)[foss.st.com:s=selector2];
	DATE_IN_PAST(1.00)[2404];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[foss.st.com : SPF not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[17];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[foss.st.com,kernel.org,gmail.com,linaro.org,amd.com];
	SUSPICIOUS_AUTH_ORIGIN(0.00)[];
	GREYLIST(0.00)[pass,meta];
	DBL_BLOCKED_OPENRESOLVER(0.00)[st.com:email,foss.st.com:mid,linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns];
	DKIM_TRACE(0.00)[foss.st.com:-];
	HAS_XOIP(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alain.volmat@foss.st.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.598];
	TAGGED_RCPT(0.00)[linaro-mm-sig,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: BC6F84117C7
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

This series improve stability of the capture by fixing the
handling of the overrun which was leading to captured
frame corruption.
Locking within the driver is also simplified and the way
DMA is handled is reworked allowing to avoid having a
specific handling for the JPEG data.

Performances of capture can now be increased via the usage
of a DMA->MDMA chaining which allows for capture of higher
resolution / framerate.

Signed-off-by: Alain Volmat <alain.volmat@foss.st.com>
---
Changes in v2:
- Fix pm_sleep_ptr -> pm_ptr to avoid unused function warning
- Fix typo / remove useless comment in binding
- Link to v1: https://lore.kernel.org/r/20251218-stm32-dcmi-dma-chaining-v1-0-39948ca6cbf6@foss.st.com

---
Alain Volmat (12):
      media: stm32: dcmi: Switch from __maybe_unused to pm_ptr()
      media: stm32: dcmi: perform dmaengine_slave_config at probe
      media: stm32: dcmi: only create dma descriptor once at buf_prepare
      media: stm32: dcmi: stop the dma transfer on overrun
      media: stm32: dcmi: rework spin_lock calls
      media: stm32: dcmi: perform all dma handling within irq_thread
      media: stm32: dcmi: use dmaengine_terminate_async in irq context
      media: stm32: dcmi: continuous mode capture in JPEG
      dt-bindings: media: st: dcmi: add DMA-MDMA chaining properties
      media: stm32: dcmi: addition of DMA-MDMA chaining support
      ARM: dts: stm32: add sram node within stm32mp151.dtsi
      ARM: dts: stm32: enable DCMI DMA-MDMA chaining on stm32mp157c-ev1.dts

 .../devicetree/bindings/media/st,stm32-dcmi.yaml   |  11 +-
 arch/arm/boot/dts/st/stm32mp151.dtsi               |   8 +
 arch/arm/boot/dts/st/stm32mp157c-ev1.dts           |  15 +
 drivers/media/platform/st/stm32/stm32-dcmi.c       | 475 +++++++++++++--------
 4 files changed, 341 insertions(+), 168 deletions(-)
---
base-commit: f7231cff1f3ff8259bef02dc4999bc132abf29cf
change-id: 20251213-stm32-dcmi-dma-chaining-9ea1da83007d

Best regards,
-- 
Alain Volmat <alain.volmat@foss.st.com>

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
