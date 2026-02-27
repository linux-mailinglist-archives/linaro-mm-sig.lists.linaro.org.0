Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KNqcFS4Z4WmmpAAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 19:15:26 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 01CCF412781
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 19:15:25 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 150EC45932
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:15:25 +0000 (UTC)
Received: from mx0b-00082601.pphosted.com (mx0b-00082601.pphosted.com [67.231.153.30])
	by lists.linaro.org (Postfix) with ESMTPS id 59A6B4010F
	for <linaro-mm-sig@lists.linaro.org>; Fri, 27 Feb 2026 19:42:41 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=meta.com header.s=s2048-2025-q2 header.b=YO6kuv+P;
	spf=pass (lists.linaro.org: domain of "prvs=051866f39e=mattev@meta.com" designates 67.231.153.30 as permitted sender) smtp.mailfrom="prvs=051866f39e=mattev@meta.com";
	arc=pass ("microsoft.com:s=arcselector10001:i=1");
	dmarc=pass (policy=reject) header.from=meta.com
Received: from pps.filterd (m0109332.ppops.net [127.0.0.1])
	by mx0a-00082601.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61RHPGeQ1119659;
	Fri, 27 Feb 2026 11:42:32 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=meta.com; h=cc
	:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=s2048-2025-q2;
	 bh=bRuxVaLFaMJbjxWG1egSI2q81GTEYI21pSLZoQT1Nm4=; b=YO6kuv+POyy2
	/5o3UpXjbCJ/b7186fwBtUAxTMrXMDRqJUvraMnhxrilV5OSvFFNZ0FGmzHpFa0d
	QXee2vRK0SjXPp1wFE8HP3lDFk6xpSXdhbnclPOKGkLsN1EDKDNbZ97S3nFagPXK
	yz6PWIxAz161UKy9MQDmonh95tFDjaDSyEhNvRQlQ8yvJ9Wbhr5/yjyRDL2ajUvN
	qTHyk1ipXjvvxeEu1O01MlTy0O5PUaL8OXBUfTVzcqlU12r/bAPHCOhrbIm+8n0u
	hLaPN5R8V3H2mz0wpz8vZIOUh0NGGxA/xj+Bg10tmcrw9vfvDyNrM9UwMNe/D+pj
	k6e8eRYNwQ==
Received: from sa9pr02cu001.outbound.protection.outlook.com (mail-southcentralusazon11013000.outbound.protection.outlook.com [40.93.196.0])
	by mx0a-00082601.pphosted.com (PPS) with ESMTPS id 4ckad74r1c-1
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT);
	Fri, 27 Feb 2026 11:42:32 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Us1dV67xgbtaKpAFXtat3wLTc++M6q5zbJuCzd9cxYB4UZ179IuJEmaVT4Mts6vxS/I+WF1G+IkrxJYrazr+k8zW/5VKWXt0+0ESSF3oDUv127VjkpdKWFXcZlcOSBSI5wp7A2czjAPJJZtAdR6IL9XHC6V8yGBbJuf83SfH0kNr7+WRShoUZ7BXqoa4holhQjnerZZdbPk2OdSGGXLfM6wOjRP0BdE5iB0508vZcYOjOI51jZrjT6nl+tsxkGmbgTz3fbHZooeoj8/yUG9NOwX/71Hy1KQnMSt2zQJ8m+QNvLviXQzhKtir0FmD3XF179jBrMGs3V2yTTYYUmL7wQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bRuxVaLFaMJbjxWG1egSI2q81GTEYI21pSLZoQT1Nm4=;
 b=MCHgpYndRY8YAhlwtR0crnnXkcOEnGzKjpIfaTneZ3KKKfCfieKx17qQPGe/apsQZklbqFCgr5re8u413b1lUjE1747EUocNUUHHDkAMQY9EXZfoxs0Cs19Cr5xyMeDkOdeseIuzgb3SsIqe0E3UfHaH3fiWx0Hz7VBkJMoU4mIl5mTqbdszEYH2XgYcv/r7I66KofaqtKf82RTgXzx1yRHffuJUsTm+PphDlNX0cr58IFpRJgDpytyl3dgITRvllgSw/7XDlIsrGHmnlPV6CiVp/cLG5zb9aonVbZ/PoCGt2N7zPpHKLoxlSMjbX58QPoNTI5nEZTOzPwjTqM9iVg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=meta.com; dmarc=pass action=none header.from=meta.com;
 dkim=pass header.d=meta.com; arc=none
Received: from PH0PR15MB7038.namprd15.prod.outlook.com (2603:10b6:510:38d::10)
 by MN6PR15MB6242.namprd15.prod.outlook.com (2603:10b6:208:47c::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9654.14; Fri, 27 Feb
 2026 19:42:28 +0000
Received: from PH0PR15MB7038.namprd15.prod.outlook.com
 ([fe80::617b:b77c:494d:de19]) by PH0PR15MB7038.namprd15.prod.outlook.com
 ([fe80::617b:b77c:494d:de19%3]) with mapi id 15.20.9654.014; Fri, 27 Feb 2026
 19:42:28 +0000
Message-ID: <c5a8f318-20af-4d80-a279-2393192108c3@meta.com>
Date: Fri, 27 Feb 2026 19:42:08 +0000
User-Agent: Mozilla Thunderbird
Content-Language: en-GB
To: Jason Gunthorpe <jgg@nvidia.com>,
        =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
References: <20260226202211.929005-1-mattev@meta.com>
 <20260226202211.929005-4-mattev@meta.com>
 <90bd4185-1e87-4393-b9e1-1318a656a7d9@amd.com>
 <20260227125109.GH5933@nvidia.com>
From: Matt Evans <mattev@meta.com>
In-Reply-To: <20260227125109.GH5933@nvidia.com>
X-ClientProxiedBy: AM0PR02CA0186.eurprd02.prod.outlook.com
 (2603:10a6:20b:28e::23) To PH0PR15MB7038.namprd15.prod.outlook.com
 (2603:10b6:510:38d::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR15MB7038:EE_|MN6PR15MB6242:EE_
X-MS-Office365-Filtering-Correlation-Id: d008d02d-886e-49db-ecb2-08de763856c1
X-FB-Source: Internal
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|376014|7416014|1800799024|10070799003|366016;
X-Microsoft-Antispam-Message-Info: 
	auhGjtyFVbYYM9xJ7atmMsCX7uTDghYcI1fNo0nn+Frc3TjIqkfrNseQKOs5fq88wRBSybFTRJpLJ6zNaMmvAQss5VfaI5iMshXGSuMpgUSJvmkshQy84IDtWvrDB5AbQ9XBybpc69WsH9lGprh5AlRKYNLk31Zcumob90HuZhhKddJw9RlgQjlDiT9WzGJOgIA/IK5aWquGBVKAk2wli2GXvMbBiJmDPfKOb+KyzUTPvdpd6opGzbY23M0Oq+sS7mXGPmw2pYbfUj7X8FK8cbaAZzzqRFzM2zCc5yPusefaDLChhuqbvQ05hSca3pJmmSfDKqDT3fy3MK+E6Jz3k1h3Av9nmfZsOhGWbyk1jN/F7U8urQ24kUWrRTlqyNhiYo6Yi9qvfeiYFffL262UsmQLFFy3hYDM/7/O9bTYcR4PEYXCE7cbySftGCSdCAQY3++1sjzmz5zWkOW+V6bH65XGDscUCRw1BDAA9pjPdbfF7yXlnnR+1+sushxwS9LN1UlxPu55AAfQtOQLSbLGlTr8kO4PsJwi4klRMTT7HSBYD0+AiW/bRmoKkvaruE0W3ykG/USxsM6nohdKi3p/5S3uBngkHJi9tj9jfR5ZIsSGNcWl3RSJoXWFpHppx3bqkvFdfEa6qegm89YcdR8cj3wMYRYXP5bm3wVYZBdzl95NH1Jz4Altpo7db11qq4v+wVKtS/MyvsaEXVkaCYhQ7wbZ7mXBu6MOzNEm1lcCMdU=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH0PR15MB7038.namprd15.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(7416014)(1800799024)(10070799003)(366016);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?V2tQclNBSjh5RFR5MkhvYUQ5Z1VnKzFncGtPaHlkaElZTC9ZaU0zZ2hja3V3?=
 =?utf-8?B?VUpjTjg0a0w1aFRkaWhlUzZIbDh4U3lOcjg3UXVuU1htMFJXZW1kdDRERy9k?=
 =?utf-8?B?YzllQmNaK0VyRkFDYlE1S2x0aEcxaGc5NTc1ZDFDVi9GK3NJaTB5L3JMcitB?=
 =?utf-8?B?L2gvL0RDN2Z6UWV3VjdXQVJpcXJ2eStLOWJVaTJWRVZrb0xoMkxhTTNMemtF?=
 =?utf-8?B?L0tsS0x2SStLakdmUVRuQ2xwSzN0Qnh3USsvMEFJUkNCajQ1bnFSbFpVQlkw?=
 =?utf-8?B?VDQxOElTK1FjcWFLRnZYWnZpdExwQ25VNmRDMk1pdHRnK1QrZ0lGaEg5M1ht?=
 =?utf-8?B?NHFuN1ZEV0dKR2M4bk5vSDMrR0ZCTlBOc2ZhRE5jTDV2RWNxZ096Q3hNZldD?=
 =?utf-8?B?R3pDWStPRUdIUzVNdTNKcGlUNjBmTTcyMW9PVnZUQmFpaHd4ZXVNY2h2c2hv?=
 =?utf-8?B?ckYrWGlvdUR2OUhOd0E3azVxM1ZURVBTZlNqeHhESHFlZGNFTmFtendKNjZi?=
 =?utf-8?B?a0kvNEFoYzZvdnhLT1c3RjhqRHVyaUNIUkNhVVFEbjFPWU13eXpST2lMcitJ?=
 =?utf-8?B?UnNybUVnMExnOGV2dWZiS0pYc1RwMEorajVVbURVclpZSVN3eXoxemxjaDFi?=
 =?utf-8?B?dzZMdnNKcm4yNEpHaWh4V2dNSXlNZlpWZDk5OEw0ZnBMVklreVVVaVNldGU3?=
 =?utf-8?B?OGc4OFdLSXFZVHgrN211OEd5dy9xM0UwREdMWTQ2aGhFa1Rkb3dudG90V2hE?=
 =?utf-8?B?bEUzSkxvS3RLWmNsN2ZYbGVWb2VLclJwY21hQXNXeGZlazFCMitiWC9JWTN3?=
 =?utf-8?B?WC9HYzhVOGlmM1d2M2IyVXc0ZC9CdTYyaWx0RDRtZW9xcG1nL2kwSXRUZ0tI?=
 =?utf-8?B?Q21tVGc2NGFtR1lWTE1LZEw2TjM0SkVQMHFGWCszZjEyR1dwdWJTUCt4MUJl?=
 =?utf-8?B?RHVDQ20ydk1rNjV0ZElIR1dNZXI2NGRvSHVXdlJKb3U5KzRPRFZ5Y0dRbms5?=
 =?utf-8?B?Rm1KQ0x2MUVnTHhQQkFmN0crRFp3VnFXZEczNzQvSkd4alg0WDlDN3F1TFpH?=
 =?utf-8?B?QjFjakZUUXNBNWNrSXhnenBhTDhBeUhTOC81YU5lL0VRS1ZDSFVJU1dGejVH?=
 =?utf-8?B?b0FJbk1tRHJ0M0ZndEhRZXExSXp4S0Qwc1pYR2dxcHdQb2V4a2xldkVBMllN?=
 =?utf-8?B?TnFvQ0ZuVEllOVAzWFQ0cU02ZFJ0V05BYXU1YlZFSUlZZzFWU2pGOUVqWC9o?=
 =?utf-8?B?OXVCWlp2SHRDTE5vVERhaXNJanFWMDJldFhaQ3h5c2JxVXZ4eHYxYmtKTkxJ?=
 =?utf-8?B?aStCY1lRVFE1bDA1TlBacTNrRi9jSmtDcjhoN2VEdEtjWVN5K0FmYk51OVBs?=
 =?utf-8?B?ckdFTFdtYnQ3em1pUWJmeE9sWGQrNVBDenlOdDRlLzVWeDR6M3dmcThUaDZC?=
 =?utf-8?B?b2hpaUY2Y3NMZzVFV0p5V0FsVFVsUDRxUHJab2gwNmp3bm0wWlJLRWFUaitl?=
 =?utf-8?B?K29PWGpkZDEvMzRTRUNjN1JFZEpQdXducXIrU1RWMzBZYkExTjlyTkRERUFV?=
 =?utf-8?B?dDdwSGVlbENWNFZHSHB2cGhpbkFZTXBnSGRVbUxMNmN2b1htOWxDY0h1L3Q0?=
 =?utf-8?B?a2YwRUwzT3VIZGp4UFpEZkdGOUdzbXVFdnpqTGlKajA5ZlRUcDZ0ZlVwcmE1?=
 =?utf-8?B?YVIxR2RqNTJHdm1tbUxRMGw4cHVwQ1hoZVk5R0NWVUVMU2JTOTI3QUt5U0Q5?=
 =?utf-8?B?d0puTUNmbkg4RjllTjZobUY3YVYrNkM2UlN5WUlrcVZUSkdzeHRnZHM4YWk0?=
 =?utf-8?B?dzUreXV4NHZNNDMrOUpyek5oOFBGakZmaUw1QTlYYk1BRGRjdWNuUnFnVE5R?=
 =?utf-8?B?ZmlMUW9tTUxhb1dsZ2NQbm5KU2tJNWZlSFJSYlE4ZXBYRlNka2ZrbGdZOHk3?=
 =?utf-8?B?V1dtakRKNWttTDFmSVhSeExFZjlLWlp0NERJM2J1UDVpR3AxYWZLcWlJczRL?=
 =?utf-8?B?MjRTUjZsWjBEaWJ6V1k4dVpGZUcvY3B1eEV5eGVIS3NrOVNYTC9URWdYWkhL?=
 =?utf-8?B?S1Zlc0JYakhqZmNtSWY5L1FRWW9rdkdab3dvN0p2V252bmZHZTYrbHM3R2ty?=
 =?utf-8?B?cUdpbkpKQWdBODcrUk4zV21uU3hJRUplMzhhSTZrd0kyVE9nNnZiaE41ZHQz?=
 =?utf-8?B?eVZYTDZrcWQxbXZDcFlrMFc0VldJRmVZTEcxc3YzMDZDNGFEWUlHSE41bkgy?=
 =?utf-8?B?UkJEU1lNR25TRzc1Y0xLdHdnc2gzd1ZwWGlwVTR2TG4zZ21TNi96TXI4WmNL?=
 =?utf-8?B?eWlqajQ3ZnRIczdqMUFLaGpKRWl1QzlTZ1R2MGVQeVRrT1VJZUhtcnN2bkR6?=
 =?utf-8?Q?VXdDz99pQdJ3FeJU=3D?=
X-OriginatorOrg: meta.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d008d02d-886e-49db-ecb2-08de763856c1
X-MS-Exchange-CrossTenant-AuthSource: PH0PR15MB7038.namprd15.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Feb 2026 19:42:28.1132
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ae927fe-1255-47a7-a2af-5f3a069daaa2
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Qs+wtESPjOS++kaYAS3tngKpZr5izCtXkqqsjrOL70dUFDKaaRsOkQ8j+ad7U9gM
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN6PR15MB6242
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjI3MDE3MyBTYWx0ZWRfX5eoGKr0nOZ9d
 GmWwiGAYHEpHfsVj5SxuL2j450rq+bz/0nhGo/ojaFEzwuX3148rkzRA6yboxR9aDYu6JG4FWJi
 hlpYKef2eCHAFVCWlKIErWkux+RsZHukcy+B4oh4B1m7v38oeZPbusV2bhJovI+y6l/vVojqd+Q
 EQQQPTqeR2aJUT/pCoq0twj3gdmVdNw1W2cf6q7+C7EPXnMormN/M3NSjTskwb9qnTQoeseo5SS
 BiqxKgzHO2cJmsYIfSs0kww3J/wFXLkzuZ3YZV8gem56Ut3KptsJmMHW5a1XyoRHv5D5v+QVDdW
 /cLt0oP6xqkTNIkCDzS+QLa58WTVsg5GbR28+R8iSXFG8LXF/dhqgWc7WO9Tlj9+vy667i9TFTA
 sAhBcguPGdw7hMA2kQKf3b6N6hDNbHMAssc1xdYinrTYlFWBteAGm1/CnCbnY4rWK6s5TEZznlQ
 i1ppofjQw+fjlxwyjlw==
X-Authority-Analysis: v=2.4 cv=A7Jh/qWG c=1 sm=1 tr=0 ts=69a1f3a8 cx=c_pps
 a=9AjoWhdl+q7f6/Aw5qa/DQ==:117 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19
 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19
 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=Gp_XjBoH_XgP9xz1ZW0A:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
X-Proofpoint-GUID: 1jwUM4lGYqt3ez7jr7wcR4HdXJA6ZjtW
X-Proofpoint-ORIG-GUID: 1jwUM4lGYqt3ez7jr7wcR4HdXJA6ZjtW
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-27_04,2026-02-27_03,2025-10-01_01
X-Spamd-Bar: -----
X-MailFrom: prvs=051866f39e=mattev@meta.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: OL23IBQY23O7MMPTAUFASEJG4VTHADT5
X-Message-ID-Hash: OL23IBQY23O7MMPTAUFASEJG4VTHADT5
X-Mailman-Approved-At: Thu, 16 Apr 2026 16:51:11 +0000
CC: Alex Williamson <alex@shazbot.org>, Leon Romanovsky <leon@kernel.org>, Alex Mastro <amastro@fb.com>, Mahmoud Adam <mngyadam@amazon.de>, David Matlack <dmatlack@google.com>, =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Kevin Tian <kevin.tian@intel.com>, Ankit Agrawal <ankita@nvidia.com>, Pranjal Shrivastava <praan@google.com>, Alistair Popple <apopple@nvidia.com>, Vivek Kasireddy <vivek.kasireddy@intel.com>, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, kvm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC PATCH 3/7] vfio/pci: Support mmap() of a DMABUF
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/OL23IBQY23O7MMPTAUFASEJG4VTHADT5/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [4.59 / 15.00];
	DMARC_POLICY_REJECT(2.00)[meta.com : SPF not aligned (relaxed),reject];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_DKIM_REJECT(1.00)[meta.com:s=s2048-2025-q2];
	DATE_IN_PAST(1.00)[1149];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[19];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	GREYLIST(0.00)[pass,meta];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	FROM_NEQ_ENVFROM(0.00)[mattev@meta.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[meta.com:-];
	NEURAL_HAM(-0.00)[-0.986];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,meta.com:mid,linaro.org:email]
X-Rspamd-Queue-Id: 01CCF412781
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

SGkgSmFzb24gKyBDaHJpc3RpYW4sDQoNCk9uIDI3LzAyLzIwMjYgMTI6NTEsIEphc29uIEd1bnRo
b3JwZSB3cm90ZToNCj4gT24gRnJpLCBGZWIgMjcsIDIwMjYgYXQgMTE6MDk6MzFBTSArMDEwMCwg
Q2hyaXN0aWFuIEvDtm5pZyB3cm90ZToNCj4gDQo+PiBXaGVuIGEgRE1BLWJ1ZiBqdXN0IHJlcHJl
c2VudHMgYSBsaW5lYXIgcGllY2Ugb2YgQkFSIHdoaWNoIGlzDQo+PiBtYXAtYWJsZSB0aHJvdWdo
IHRoZSBWRklPIEZEIGFueXdheSB0aGVuIHRoZSByaWdodCBhcHByb2FjaCBpcyB0bw0KPj4ganVz
dCByZS1kaXJlY3QgdGhlIG1hcHBpbmcgdG8gdGhpcyBWRklPIEZELg0KDQpXZSB0aGluayBsaW1p
dGluZyB0aGlzIHRvIG9uZSByYW5nZSBwZXIgRE1BQlVGIGlzbid0IGVub3VnaCwNCmkuZS4gc3Vw
cG9ydGluZyBtdWx0aXBsZSByYW5nZXMgd2lsbCBiZSBhIGJlbmVmaXQuDQoNCkJ1bXBpbmcgdm1f
cGdvZmYgdG8gdGhlbiByZXVzZSB2ZmlvX3BjaV9tbWFwX29wcyBpcyBhIHJlYWxseSBuaWNlDQpz
dWdnZXN0aW9uIGZvciB0aGUgc2ltcGxlc3QgY2FzZSwgYnV0IGNhbid0IHN1cHBvcnQgbXVsdGlw
bGUgcmFuZ2VzOw0KdGhlIC5mYXVsdCgpIG5lZWRzIHRvIGJlIGF3YXJlIG9mIHRoZSBub24tbGlu
ZWFyIERNQUJVRiBsYXlvdXQuDQo+IEkgYWN0dWFsbHkgd291bGQgbGlrZSB0byBnbyB0aGUgb3Ro
ZXIgd2F5IGFuZCBoYXZlIFZGSU8gYWx3YXlzIGhhdmUgYQ0KPiBETUFCVUYgdW5kZXIgdGhlIFZN
QSdzIGl0IG1tYXBzIGJlY2F1c2UgdGhhdCB3aWxsIG1ha2UgaXQgZWFzeSB0bw0KPiBmaW5pc2gg
dGhlIHR5cGUxIGVtdWxhdGlvbiB3aGljaCByZXF1aXJlcyBmaW5kaW5nIGRtYWJ1ZnMgZm9yIHRo
ZQ0KPiBWTUFzLg0KPiANCj4+IEl0IGNhbiBiZSB0aGF0IHlvdSB3YW50IGFkZGl0aW9uYWwgY2hl
Y2tzIChlLmcuIGlmIHRoZSBETUEtYnVmIGlzDQo+PiByZXZva2VkKSBpbiB3aGljaCBjYXNlIHlv
dSB3b3VsZCBuZWVkIHRvIG92ZXJyaWRlIHRoZSB2bWEtPnZtX29wcywNCj4+IGJ1dCB0aGVuIGp1
c3QgZG8gdGhlIGFjY2VzcyBjaGVja3MgYW5kIGNhbGwgdGhlIHZmaW9fcGNpX21tYXBfb3BzIHRv
DQo+PiBnZXQgdGhlIGFjdHVhbGx5IHBhZ2UgZmF1bHQgaGFuZGxpbmcgZG9uZS4NCj4gDQo+IEl0
IGlzbid0IHRoYXQgc2ltcGxlLCB0aGUgdm1fb3BzIHdvbid0IGhhdmUgYSB3YXkgdG8gZ2V0IGJh
Y2sgdG8gdGhlDQo+IGRtYWJ1ZiBmcm9tIHRoZSB2bWEgdG8gZmluZCB0aGUgcGVyLWZkIHJldm9r
ZSBmbGFnIHRvIGNoZWNrIGl0Lg0KDQpTb3VuZHMgbGlrZSB0aGUgc3VnZ2VzdGlvbiBpcyBqdXN0
IHRvIHJldXNlIHZmaW9fcGNpX21tYXBfKmZhdWx0KCksIGkuZS4NCmluc3RhbGwgImludGVycG9z
ZXIiIHZtX29wcyBmb3Igc29tZSBuZXcgJ2ZhdWx0X2J1dF9jaGVja19yZXZva2UoKScgdG8NCnRo
ZW4gY2FsbCBkb3duIHRvIHRoZSBleGlzdGluZyB2ZmlvX3BjaV9tbWFwXypmYXVsdCgpLCBhZnRl
ciBmaXNoaW5nIHRoZQ0KRE1BQlVGIG91dCBvZiB2bV9wcml2YXRlX2RhdGEuICAoTGlrZSB0aGUg
cHJvcG9zZWQNCnZmaW9fcGNpX2RtYV9idWZfbW1hcF9odWdlX2ZhdWx0KCkgZG9lcy4pDQoNClB1
dHRpbmcgYXNpZGUgdGhlIGFib3ZlIHBvaW50IG9mIG5lZWRpbmcgYSBuZXcgLmZhdWx0KCkgYWJs
ZSB0byBmaW5kIGENClBGTiBmb3IgPjEgcmFuZ2UgZm9yIGEgbW8sIGhvdyB3b3VsZCB0aGUgdGVz
dCBvZiB0aGUgcmV2b2tlZCBmbGFnIHdvcmsNCncuci50LiBzeW5jaHJvbmlzYXRpb24gYW5kIHBy
b3RlY3RpbmcgYWdhaW5zdCBhIHJhY2luZyByZXZva2U/ICBJdCdzIG5vdA0Kc2FmZSB0byB0YWtl
IG1lbW9yeV9sb2NrLCB0ZXN0IHJldm9rZWQsIHVubG9jaywgdGhlbiBoYW5kIG92ZXIgdG8gdGhl
DQpleGlzdGluZyB2ZmlvX3BjaV9tbWFwXypmYXVsdCgpIC0tIHdoaWNoIHJlLXRha2VzIHRoZSBs
b2NrLiAgSSdtIG5vdA0KcXVpdGUgc2VlaW5nIGhvdyB3ZSBjb3VsZCByZXVzZSB0aGUgZXhpc3Rp
bmcgdmZpb19wY2lfbW1hcF8qZmF1bHQoKSwNClRCSC4gIEkgZGlkIGJyaWVmbHkgY29uc2lkZXIg
cmVmYWN0b3JpbmcgdGhhdCBleGlzdGluZyAuZmF1bHQoKSBjb2RlLA0KYnV0IHRoYXQgbWFrZXMg
Ym90aCBwYXRocyB1Z2xpZXIuDQoNClRvIHN1bW1hcmlzZSwgSSB0aGluayB3ZSBzdGlsbA0KLSBu
ZWVkIGEgbmV3IGZvcHMtPm1tYXAoKSB0byBsaW5rIHZmaW9fcGNpX2RtYV9idWYgaW50byB2bV9w
cml2YXRlX2RhdGEsDQogIGFuZCBkZXRlcm1pbmUgV0MgYXR0cnMNCi0gbmVlZCBhIG5ldyB2bV9v
cHMtPmZhdWx0KCkgdG8gdGVzdCBkbWFidWYtPnJldm9rZWQvc3RhdHVzIGFuZA0KICBkZXRlcm1p
bmUgbWFwIHZzIGZhdWx0IHdpdGggbWVtb3J5X2xvY2sgaGVsZCwgYW5kIHRvIGRldGVybWluZSB0
aGUgUEZODQogIGZyb20gPjEgRE1BQlVGIHJhbmdlcw0KDQo+Pj4gKyAgICAgICAgICAgICAgIHVu
bWFwX21hcHBpbmdfcmFuZ2UocHJpdi0+ZG1hYnVmLT5maWxlLT5mX21hcHBpbmcsDQo+Pj4gKyAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgMCwgcHJpdi0+c2l6ZSwgMSk7DQo+Pg0K
Pj4gV2hlbiB5b3UgbmVlZCB0byB1c2UgdW5tYXBfbWFwcGluZ19yYW5nZSgpIHRoZW4geW91IHVz
dWFsbHkgc2hhcmUNCj4+IHRoZSBhZGRyZXNzIHNwYWNlIG9iamVjdCBiZXR3ZWVuIHRoZSBmaWxl
IGRlc2NyaXB0b3IgZXhwb3J0aW5nIHRoZQ0KPj4gRE1BLWJ1ZiBhbmQgdGhlIERNQS1idWYgZmQg
aXRzZWxmLg0KPiANCj4gWWVhaCwgdGhpcyBiZWNvbWVzIHByb2JsZW1hdGljLiBSaWdodCBub3cg
dGhlcmUgaXMgYSBzaW5nbGUgYWRkcmVzcw0KPiBzcGFjZSBwZXIgdmZpby1kZXZpY2UgYW5kIHRo
ZSBpbnZhbGlkYXRpb24gaXMgZ2xvYmFsLg0KPiANCj4gUG9zc2libHkgZm9yIHRoaXMgdXNlIGNh
c2UgeW91IGNhbiBrZWVwIHRoYXQgYW5kIGRvIGEgZ2xvYmFsIHVubWFwIGFuZA0KPiByZWx5IG9u
IGZhdWx0IHRvIHJlc3RvcmUgdGhlIG1tYXBzIHRoYXQgd2VyZSBub3QgcmV2b2tlZC4NCg0KSG0s
IHRoYXQnZCBiZSBmdW5jdGlvbmFsLCBidXQgd2Ugc2hvdWxkIGNvbnNpZGVyIGh1Z2UgQkFScyB3
aXRoIGEgbG90IG9mDQpQVEVzIChldmVuIGh1Z2Ugb25lcyk7IHphcHBpbmcgYWxsIEJBUnMgbWln
aHQgbm90aWNlYWJseSBkaXN0dXJiIG90aGVyDQpjbGllbnRzLiAgQnV0IHNlZSBteSBxdWVyeSBi
ZWxvdyBwbGVhc2UsIGlmIHdlIGNvdWxkIHphcCBqdXN0IHRoZQ0KcmVzb3VyY2UgYmVpbmcgcmVj
bGFpbWVkIHRoYXQgd291bGQgYmUgcHJlZmVyYWJsZS4NCg0KPj4gT3RoZXJ3aXNlIGZ1bmN0aW9u
cyBsaWtlIHZmaW9fcGNpX3phcF9iYXJzKCkgZG9lc24ndCB3b3JrIGNvcnJlY3RseSANCj4+IGFu
eSBtb3JlIGFuZCB0aGF0IHVzdWFsbHkgY3JlYXRlcyBhIGh1Z2UgYnVuY2ggb2YgcHJvYmxlbXMu
DQoNCkknZCByZWFzb25lZCBpdCB3YXMgT0sgZm9yIHRoZSBETUFCVUYgdG8gaGF2ZSBpdHMgb3du
IHVuaXF1ZSBhZGRyZXNzDQpzcGFjZSAtLSBldmVuIHRob3VnaCBJSVVDIHRoYXQgbWVhbnMgYW4g
dW5tYXBfbWFwcGluZ19yYW5nZSgpIGJ5DQp2ZmlvX3BjaV9jb3JlX2RldmljZSB3b24ndCBhZmZl
Y3QgYSBETUFCVUYncyBtYXBwaW5ncyAtLSBiZWNhdXNlDQphbnl0aGluZyB0aGF0IG5lZWRzIHRv
IHphcCBhIEJBUiBfYWxzb18gbXVzdCBhbHJlYWR5IHBsYW4gdG8gbm90aWZ5DQpETUFCVUYgaW1w
b3J0ZXJzIHZpYSB2ZmlvX3BjaV9kbWFfYnVmX21vdmUoKS4gIEFuZCB0aGVuLA0KdmZpb19wY2lf
ZG1hX2J1Zl9tb3ZlKCkgd2lsbCB6YXAgdGhlIG1hcHBpbmdzLg0KDQpBcmUgdGhlcmUgcGF0aHMg
dGhhdCBfZG9uJ3RfIGFsd2F5cyBwYWlyIHZmaW9fcGNpX3phcF9iYXJzKCkgd2l0aCBhDQp2Zmlv
X3BjaV9kbWFfYnVmX21vdmUoKT8NCg0KSSdtIHN1cmUgSSdtIG1pc3Npbmcgc29tZXRoaW5nLCBz
byBxdWVzdGlvbiBwaHJhc2VkIGFzIGEgc3RhdGVtZW50Og0KVGhlIG9ubHkgd2F5IHRoYXQgbWFw
cGluZ3MgY291bGQgYmUgbWlzc2VkIHdvdWxkIGJlIGlmIHNvbWUgcGF0aA0KZm9yZ2V0cyB0byAu
Li5idWZfbW92ZSgpIHdoZW4gemFwcGluZyB0aGUgQkFScywgYnV0IHRoYXQnZCBiZSBhDQpwcm9i
bGVtIGZvciBpbXBvcnRlcnMgcmVnYXJkbGVzcyBvZiB3aGV0aGVyIHRoZXkgY2FuIG5vdyBhbHNv
IGJlDQptbWFwKCllZCwgbm8/DQoNCkkgZG9uJ3Qgd2FudCB0byBmbG91dCBjb252ZW50aW9uIGZv
ciB0aGUgc2FrZSBvZiBpdCwgYW5kIGFtIGtlZW4gdG8NCmxlYXJuIG1vcmUsIHNvIHBsZWFzZSBn
ZW50bHkgZXhwbGFpbiBpbiBtb3JlIGRldGFpbDogIFdoeSBtdXN0IHdlDQphc3NvY2lhdGUgdGhl
IERNQUJVRnMgd2l0aCB0aGUgVkZJTyBhZGRyZXNzIHNwYWNlIFtieSBzaGFyaW5nIHRoZSBBUw0K
b2JqZWN0IGJldHdlZW4gdGhlIFZGSU8gZmQgZXhwb3J0aW5nIHRoZSBETUFCVUYgYW5kIHRoZSBE
TUFCVUYgZmRdPw0KDQoNCk1hbnkgdGhhbmtzLA0KDQoNCk1hdHQNCg0KX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxp
c3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQg
YW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
