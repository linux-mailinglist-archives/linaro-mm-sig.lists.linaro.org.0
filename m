Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id DF684731017
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 15 Jun 2023 09:05:35 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B9C2D43EA2
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 15 Jun 2023 07:05:34 +0000 (UTC)
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (mail-bn8nam11on2040.outbound.protection.outlook.com [40.107.236.40])
	by lists.linaro.org (Postfix) with ESMTPS id 0874E3F451
	for <linaro-mm-sig@lists.linaro.org>; Thu, 15 Jun 2023 07:05:22 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b="u8f6/48+";
	dmarc=pass (policy=quarantine) header.from=amd.com;
	arc=pass ("microsoft.com:s=arcselector9901:i=1");
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.107.236.40 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=X79vdGDe74d0ViP88O9UR+o+1Jx5lVQgXoQRSZGLED+sOYi9+jLRnPLCuTT//Eps/qrhqVZbxMhKcPmechUmHu3ueqluHKer3K6woxYAALpKQIQhh0BEU44z8PUNCe94Cme25SB7cskyjdX1cSwVw3z501FSRi/VwNFVg7Jm0F+kGLjHQmX4nou1ZTJX4nE1FST6BRnzzV3zIqGv0/ykGLosUpIbussvUBrknp49w8QPQp4zEbmEq4gX6elLF0XeV8z91e/0B+2xfKuiVZc2IgYBAE5FOqkbHv+ihrEU/TfgTs19RWTuPeMvJeZArwAluZcF9nXjVFKnIMOK6hM1gg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GLtCioAkKiKuhN7cN/J8BLXrgHuRRVRJm2G7HLIy0vc=;
 b=jKTEA7vkZEWmr4pRZimEXmpTaNLITWweECj4MBm5I5wrVJrHcZIhQL1S8lKtHWfP5QBxQlmaP5p4A9fYC84bx8eyaI5bP5tT0xkXz1NpUoMxvHq2503ugeTYjp9FMH47MyHsSUaRQD2GmCUD1YiYYgeb7H3M863WX8vEFfPVJa414nLzScajGlwEIoa7MoBsMAwHqGqXVRlXJxYSu+T1+9lEkGL3oQjugssv/KSXOPOcVCph4VEMtlqZG49dQmN/42zhfg7f4M6WL0l11+qJjN0ihrHhybni6vq04dlJwSxHjlDSfMgmxSGbHgy06Z6E3Kb3+xaXO7OmaxvdJnj3bA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GLtCioAkKiKuhN7cN/J8BLXrgHuRRVRJm2G7HLIy0vc=;
 b=u8f6/48+wg9YzrkgmVEUcaPlHeVmj5eB6NdZq/7CinygnP+DldljUxArm+9z5q6Da9vvkPjRQdPp/H2oZRHmyNi+5nyfvuXLRGm1J0oYTnMVUwld7BADYCBYxVc6Ci4iMnV05B23JeQv6ZknIMFQQk+6JOJONhU2xYo8wvObtFY=
Received: from BYAPR12MB3589.namprd12.prod.outlook.com (2603:10b6:a03:df::29)
 by IA0PR12MB8255.namprd12.prod.outlook.com (2603:10b6:208:404::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6477.29; Thu, 15 Jun
 2023 07:05:20 +0000
Received: from BYAPR12MB3589.namprd12.prod.outlook.com
 ([fe80::401e:2e7f:7c2b:6bff]) by BYAPR12MB3589.namprd12.prod.outlook.com
 ([fe80::401e:2e7f:7c2b:6bff%4]) with mapi id 15.20.6455.024; Thu, 15 Jun 2023
 07:05:20 +0000
Message-ID: <87ce15c9-670e-f270-94b7-580b0a54f59f@amd.com>
Date: Thu, 15 Jun 2023 09:05:12 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Content-Language: en-US
To: Jeffrey Hugo <quic_jhugo@quicinc.com>, quic_carlv@quicinc.com,
 quic_pkanojiy@quicinc.com, sukrut.bellary@linux.com, sumit.semwal@linaro.org
References: <20230614161528.11710-1-quic_jhugo@quicinc.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
In-Reply-To: <20230614161528.11710-1-quic_jhugo@quicinc.com>
X-ClientProxiedBy: FR0P281CA0121.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:97::19) To BYAPR12MB3589.namprd12.prod.outlook.com
 (2603:10b6:a03:df::29)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR12MB3589:EE_|IA0PR12MB8255:EE_
X-MS-Office365-Filtering-Correlation-Id: 41f0e3b4-6e74-489e-724f-08db6d6ee15e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	jYTm++mVn2DC6g1B3ydcXG1yo28MrjsAMcF5jLvUI1HddQ7FE2C1zcVqqmNOiCWqoSkY8oX+21S0bLTja7xgiWCBQR2pApRi7vm8GdjG0XeeCkr9ksYbkbcVTGWhUxNF8SjVBtlAmJknfG/rCXF5lLIyYnO+pTFfbca8E+BZQ9XUS1DaINDBNyAy7wFYDwg4wKM14hBvtTgRJeDef6zI9JYoJ2txDYJc+aUH1stBq83grzgLvOKodzskjHy1FHxvuGvKBBQGF6BFuM/VY8ycdT1glL7PFl6hITVLksgyRsd+67ZH8YPLzIJTlfQKdq/CvxI/PHyiD5U1xVjJ2V1COBhzCKv/GKT7KKkVMFqJTt3X9S5Ab81TRbnV+7tLfhZ90ISf0Ut3KunNvseC5fIaQRIz+T8q0gFXtZQsTHSI3Xg8EHs1vz+lEmTahEvMx3F0v1DyKSeUhgeY5yzPHJqrKhvQwrjF3w76yfsGAKWdk4R214GWJWfYxUd/hamYH+YS7hBxE6Dal5VArg5XcHAG4wRPgNyJW2c2TM9tukUCzlS+eE6HPfBjDY0tNZfzCt+d+pIlbd6R0oFPnX48XU3HhPK88cneq1gyAs9/GrQzyuNgTvbi1qUTUeib3ubJiBtq3kPai4LYB+w389t3PvBWPg==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR12MB3589.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(4636009)(39860400002)(396003)(366004)(376002)(346002)(136003)(451199021)(31686004)(66946007)(4326008)(66556008)(36756003)(66476007)(186003)(478600001)(66574015)(2906002)(2616005)(966005)(8676002)(41300700001)(316002)(31696002)(86362001)(6486002)(7416002)(6666004)(6506007)(8936002)(5660300002)(83380400001)(38100700002)(6512007)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?VWV1bklYSFZ1M3pxbjJBRElLbkNpNUpCazZTVDNTb2I1TmRqQTVlZEpOWHRE?=
 =?utf-8?B?bXU4K3NobVc4QXcweS81R0JMZFdNLzArL2JROU5IYzhVRUFwY2Z1SDBtdmxG?=
 =?utf-8?B?N0luZ1V4OGE2Y3g3R25PTjFvNGxFUkcxSm5IWDhpSG1QVEdTUXpPMFYvZExB?=
 =?utf-8?B?Ump1QVBjZzZQa0FXZi9icmFIWVg0MWh0MVdpZUFsK3c5YWd0NzF5MENuUGVy?=
 =?utf-8?B?SUF6Qit3dDIxOE1hd1RNTkdvNExMSFBrQitTZzlPZkNTdndKN3BtUjk4cFdO?=
 =?utf-8?B?QlE0YjZjbVlpeVl4U1BTdlc5MXN5YmE3OGF6ZnQvSGEybVptWWxiVTV6djMx?=
 =?utf-8?B?bFNTMlRrM3Jtbkk3ZzlsQStZM3JNaVdwc2tjZ0N1YXJMVzZBakVTNkF3MEcr?=
 =?utf-8?B?V0xyK00zeldZTzVNOFA4bHRHWDJQUkljc0t5OW1FdkdyTngrS1RybWYwNUZh?=
 =?utf-8?B?Qmt6RlZodmtWc3BJVE9NY3h2YmRtNmhucHQzZ1pNZ1NJN3EzcVg0eGM3OW9L?=
 =?utf-8?B?bUhud3JuSGtGL1l1aU5KeG9EbWNJTFRYcmN5SDNLSVpCN0hxdWQyTDRHRnhl?=
 =?utf-8?B?elBoODVVQUIvR1p1UEQ2REwzZjAxdi8vMGVNSE1lMlE4bk5rNnVQOHRMTW1E?=
 =?utf-8?B?ZXFnS3ZUWVlKWUZwbUZzV3lmZUNjaHNBRlRRRlR0N2dGUE9nT3VKVG9rcWt3?=
 =?utf-8?B?UUtVcExXbWtuZkYreENkUkUzbGg5OUl0M0pMeDBEUGtmbWp5enlERzh6VkN6?=
 =?utf-8?B?bWlQanBCd1hUQ0o1VUY2U0sxZW1NdXlMWStjY0dUblkrWHJGTTBCdVhxMFpH?=
 =?utf-8?B?eTY5NHNhenFvVkdpY3FQT3NOV3JtZEd0QnJVMFNlK1RlWWxkb2RhYXlVUGhX?=
 =?utf-8?B?UnFHZlkrMmNFNys2TVVrZHd4U2lWSVNndVU1YXlLSCtqajdSUGRKN29TZFY5?=
 =?utf-8?B?d3IvejN6c24ydXB5dXh6K2xRUlFBb3VQQVJkNUVaUXpQM0dlVVJZWTZKL2Zt?=
 =?utf-8?B?L09KZm1PUUR2MVFtRUZFRHF3UTlPOUltZWFDUThVejVLOUg5T09SRlMyQkNh?=
 =?utf-8?B?Y1p0bndUdE1yV3hPeVVPUFV2TkZ0a0JOcDZDb2lZM0ZEWE5qaCticVVLODRG?=
 =?utf-8?B?UkxvMXN6Uk1mLzdITEhWZzdydEIyMG4xTlV1TDE0clVDTGRpOWpRWW9tUHF1?=
 =?utf-8?B?QXBDMHZybC9pbnNUVXozaklQZE91cDlSdkcwb1lUN2E1UnNNTHA5Z1lFNDFR?=
 =?utf-8?B?MEtMaTh3YkQvenE1bXorbkZlUjVCaFplYUlzTXFhVVN5VXlHQ2F4cmdzcXg4?=
 =?utf-8?B?SjhGZ2EwOGlRL1NjVjZLejd5TU5BdzVzSWMvdHJMY0UrVjYxZUJqTk1tWjR5?=
 =?utf-8?B?bElRQVVkV3pSQnkxdG80MUkzUnNibXBuZzBWQUYvMVZJMWxKUGNwQ2dwNkJp?=
 =?utf-8?B?MXllVUhhajV3eW1vdVdPakpsOG91aFBJeTZIN2xBVUxBOHNLcWZFNDBKdUpn?=
 =?utf-8?B?cnROUTRmVXBadlhtUm0rNXNtSDhpRWJSVjE5WkFleDRkU05RYUJyZXFhMzFs?=
 =?utf-8?B?YnZ1eldTTHdZVWRUcDRHRUdvajc3T2hKREN4ODBHck5Wam5pWEhWNXlESmJ3?=
 =?utf-8?B?ZmIwTXYwTlZvNkdKaFBSKzNPMXpNZU9uVXBUZWt3K1pzUENhb3dkSFU5SzZR?=
 =?utf-8?B?MUFWWXQrbmZOeUt0ZmNESUUyVjRGYlhkRHloMkJ5emIzUnp0Vy9OeFlHQnp4?=
 =?utf-8?B?N1gxZ2x0MjZzTmVab3B1MGlDOXNOeXl5TndzWjBLcHdOanFzeTMvUWhEM0M2?=
 =?utf-8?B?a1BPMWNRTmpvOERacXJGamJxUWJTME5TdGNYclpKRnVvM0JCejhYYTVPVXNk?=
 =?utf-8?B?QlpsOWg5SkF3a25xZHlHbHN2N0t2RnVISU1ZNUs0UDFyQVdRVEZRVHdWNmty?=
 =?utf-8?B?U0JrekdyajJCaFA5blFOeTBoZkI4NzcrUllraWxYMXFyNllMU1RuYnRZWlJn?=
 =?utf-8?B?Q3FReEROUm5UV3JBWFo1VWtsdVkzSS9lU3VFeG9VM01ZYVA4MHl1UnBodlVI?=
 =?utf-8?B?aU5PaVk3ZVQycTYxTFRFVFNDazBYVXR3bnF4TWdwbHc3dzBXT09pMGRRaytD?=
 =?utf-8?B?ZVdqUW9OT21PdEo3YkI0a3Y1MHoxcmJVWG1NVEVFUDFvK29RUFcwNHYxaHhB?=
 =?utf-8?Q?HdLU/iQCVuKaW76DfW/wPb0/HDIRzPloUZkfJUDGc1ml?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 41f0e3b4-6e74-489e-724f-08db6d6ee15e
X-MS-Exchange-CrossTenant-AuthSource: BYAPR12MB3589.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Jun 2023 07:05:20.0801
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: yGQUJFbzoSJHvnXC7Y71WpmleeYvEHFWrLgNYgyZfCGwmCuZkesbxtTO5yiaKivk
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR12MB8255
X-Rspamd-Queue-Id: 0874E3F451
X-Spamd-Bar: ---------
X-Spamd-Result: default: False [-9.00 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector9901:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:40.107.0.0/16];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:8075, ipnet:40.104.0.0/14, country:US];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	MIME_TRACE(0.00)[0:+];
	FROM_EQ_ENVFROM(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.107.236.40:from];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.997];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	DKIM_TRACE(0.00)[amd.com:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: P4XWHBXX6UFZ7P6HF3SRYZUO34NY46JA
X-Message-ID-Hash: P4XWHBXX6UFZ7P6HF3SRYZUO34NY46JA
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: ogabbay@kernel.org, linux-arm-msm@vger.kernel.org, kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-media@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] accel/qaic: Call DRM helper function to destroy prime GEM
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/P4XWHBXX6UFZ7P6HF3SRYZUO34NY46JA/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

DQoNCkFtIDE0LjA2LjIzIHVtIDE4OjE1IHNjaHJpZWIgSmVmZnJleSBIdWdvOg0KPiBGcm9tOiBQ
cmFuamFsIFJhbWFqb3IgQXNoYSBLYW5vaml5YSA8cXVpY19wa2Fub2ppeUBxdWljaW5jLmNvbT4N
Cj4NCj4gc21hdGNoIHdhcm5pbmc6DQo+IAlkcml2ZXJzL2FjY2VsL3FhaWMvcWFpY19kYXRhLmM6
NjIwIHFhaWNfZnJlZV9vYmplY3QoKSBlcnJvcjoNCj4gCQlkZXJlZmVyZW5jaW5nIGZyZWVkIG1l
bW9yeSAnb2JqLT5pbXBvcnRfYXR0YWNoJw0KPg0KPiBvYmotPmltcG9ydF9hdHRhY2ggaXMgZGV0
YWNoZWQgYW5kIGZyZWVkIHVzaW5nIGRtYV9idWZfZGV0YWNoKCkuDQo+IEJ1dCB1c2VkIGFmdGVy
IGZyZWUgdG8gZGVjcmVhc2UgdGhlIGRtYWJ1ZiByZWYgY291bnQgdXNpbmcNCj4gZG1hX2J1Zl9w
dXQoKS4NCj4NCj4gZHJtX3ByaW1lX2dlbV9kZXN0cm95KCkgaGFuZGxlcyB0aGlzIGlzc3VlIGFu
ZCBwZXJmb3JtcyB0aGUgcHJvcGVyIGNsZWFuDQo+IHVwIGluc3RlYWQgb2Ygb3BlbiBjb2Rpbmcg
aXQgaW4gdGhlIGRyaXZlci4NCj4NCj4gRml4ZXM6IGZmMTNiZTgzMDMzMyAoImFjY2VsL3FhaWM6
IEFkZCBkYXRhcGF0aCIpDQo+IFJlcG9ydGVkLWJ5OiBTdWtydXQgQmVsbGFyeSA8c3VrcnV0LmJl
bGxhcnlAbGludXguY29tPg0KPiBDbG9zZXM6IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2FsbC8y
MDIzMDYxMDAyMTIwMC4zNzc0NTItMS1zdWtydXQuYmVsbGFyeUBsaW51eC5jb20vDQo+IFN1Z2dl
c3RlZC1ieTogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPg0KPiBT
aWduZWQtb2ZmLWJ5OiBQcmFuamFsIFJhbWFqb3IgQXNoYSBLYW5vaml5YSA8cXVpY19wa2Fub2pp
eUBxdWljaW5jLmNvbT4NCj4gUmV2aWV3ZWQtYnk6IENhcmwgVmFuZGVybGlwIDxxdWljX2Nhcmx2
QHF1aWNpbmMuY29tPg0KPiBSZXZpZXdlZC1ieTogSmVmZnJleSBIdWdvIDxxdWljX2podWdvQHF1
aWNpbmMuY29tPg0KPiBTaWduZWQtb2ZmLWJ5OiBKZWZmcmV5IEh1Z28gPHF1aWNfamh1Z29AcXVp
Y2luYy5jb20+DQoNClJldmlld2VkLWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29l
bmlnQGFtZC5jb20+DQoNCj4gLS0tDQo+ICAgZHJpdmVycy9hY2NlbC9xYWljL3FhaWNfZGF0YS5j
IHwgNCArKy0tDQo+ICAgMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlv
bnMoLSkNCj4NCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvYWNjZWwvcWFpYy9xYWljX2RhdGEuYyBi
L2RyaXZlcnMvYWNjZWwvcWFpYy9xYWljX2RhdGEuYw0KPiBpbmRleCBlNDJjMWY5ZmZmZjguLmU5
YTFjYjc3OWIzMCAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9hY2NlbC9xYWljL3FhaWNfZGF0YS5j
DQo+ICsrKyBiL2RyaXZlcnMvYWNjZWwvcWFpYy9xYWljX2RhdGEuYw0KPiBAQCAtMjMsNiArMjMs
NyBAQA0KPiAgICNpbmNsdWRlIDxsaW51eC93YWl0Lmg+DQo+ICAgI2luY2x1ZGUgPGRybS9kcm1f
ZmlsZS5oPg0KPiAgICNpbmNsdWRlIDxkcm0vZHJtX2dlbS5oPg0KPiArI2luY2x1ZGUgPGRybS9k
cm1fcHJpbWUuaD4NCj4gICAjaW5jbHVkZSA8ZHJtL2RybV9wcmludC5oPg0KPiAgICNpbmNsdWRl
IDx1YXBpL2RybS9xYWljX2FjY2VsLmg+DQo+ICAgDQo+IEBAIC02MTYsOCArNjE3LDcgQEAgc3Rh
dGljIHZvaWQgcWFpY19mcmVlX29iamVjdChzdHJ1Y3QgZHJtX2dlbV9vYmplY3QgKm9iaikNCj4g
ICANCj4gICAJaWYgKG9iai0+aW1wb3J0X2F0dGFjaCkgew0KPiAgIAkJLyogRE1BQlVGL1BSSU1F
IFBhdGggKi8NCj4gLQkJZG1hX2J1Zl9kZXRhY2gob2JqLT5pbXBvcnRfYXR0YWNoLT5kbWFidWYs
IG9iai0+aW1wb3J0X2F0dGFjaCk7DQo+IC0JCWRtYV9idWZfcHV0KG9iai0+aW1wb3J0X2F0dGFj
aC0+ZG1hYnVmKTsNCj4gKwkJZHJtX3ByaW1lX2dlbV9kZXN0cm95KG9iaiwgTlVMTCk7DQo+ICAg
CX0gZWxzZSB7DQo+ICAgCQkvKiBQcml2YXRlIGJ1ZmZlciBhbGxvY2F0aW9uIHBhdGggKi8NCj4g
ICAJCXFhaWNfZnJlZV9zZ3QoYm8tPnNndCk7DQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFy
by1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRv
IGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
