Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yB7FOvgY4WmmpAAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 19:14:32 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 63F5641274D
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 19:14:32 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8031D458AC
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:14:31 +0000 (UTC)
Received: from mx0b-00082601.pphosted.com (mx0b-00082601.pphosted.com [67.231.153.30])
	by lists.linaro.org (Postfix) with ESMTPS id A1CF83F949
	for <linaro-mm-sig@lists.linaro.org>; Fri, 27 Feb 2026 13:02:38 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=meta.com header.s=s2048-2025-q2 header.b=AAEXXbZ1;
	spf=pass (lists.linaro.org: domain of "prvs=051866f39e=mattev@meta.com" designates 67.231.153.30 as permitted sender) smtp.mailfrom="prvs=051866f39e=mattev@meta.com";
	arc=pass ("microsoft.com:s=arcselector10001:i=1");
	dmarc=pass (policy=reject) header.from=meta.com
Received: from pps.filterd (m0148460.ppops.net [127.0.0.1])
	by mx0a-00082601.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61R4DKf42148593;
	Fri, 27 Feb 2026 05:02:27 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=meta.com; h=cc
	:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=s2048-2025-q2;
	 bh=KlcMemkc9bJtHR8db0IfOFGZB1VB4ARKq/c6FPjxsYs=; b=AAEXXbZ1U4EF
	CrPrC4m3dcg7aiUgAipYJ5xZlBhMmYnlulh0wC6HXoVE9YWtmgxcowlAg4ocKK6r
	nCS5P+MLuesaeaySMhRCyd7fQdTVg5ZCEPXRgO+T/tpQAYcXTq4VKVly/DJDyTIy
	Aqn+Y9Ip3TqlCtdz0SUuiui/ZZYZdmMx9F0yYiSXuZqB6keAInGR9+l20KG5FjfV
	8UWF4nWD6LflBR6njnb+eLb117VidTC5R3AS2FPy2AqObzpXnQINUiHdmh0JyJUF
	qT30pAvHMZ49CKucQFBbUxDV/upVNoh2M9dpO80D41LmQnTEeIGx5eJcmx5fDtFA
	1Z9MNBzA8Q==
Received: from mw6pr02cu001.outbound.protection.outlook.com (mail-westus2azon11012027.outbound.protection.outlook.com [52.101.48.27])
	by mx0a-00082601.pphosted.com (PPS) with ESMTPS id 4ck423ukvk-1
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT);
	Fri, 27 Feb 2026 05:02:27 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=xrsiuVrFOk66PCSsFu5Vj2AbOA9vFBO9iSpZvFb3v/+937FSIydCFV6ecJlcVDs2Clg5p9AheIXRUKJZ28ilQzO43EXc3z4bz2ckmxvE97XIXuUKByZ//OtcHROLRsl9uo+lN+kssaE4vnqQa3S8lX7LR9hmfL/yNUzltbhhJQ0r8Wfk9WrGtJcpSlutWw4yTI5qBJd1re8o5bFw3kCtBdQHCHL7VVIz44pRO1b3xhv7zwLPi3YSFfztII77+qffRHao66tGnYA+GMdrD6/aYj/PcjbDfB4Nba82LBC2z7TJNhzg78tulCVCpeBFjLFKI83zpySkNEoT4hIKZ9Tngw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KlcMemkc9bJtHR8db0IfOFGZB1VB4ARKq/c6FPjxsYs=;
 b=bmY/PIWWWDecM85Xtre6UoT97ueefjCqF3PQ9mlX+TphdawdWCPoxKkCVHeB/VGi0DVxYnhMFaXKJvhGkKg5yX6yMspiKQhK/S2j2sHaSV+EVMxvvB228J+LIUlIuRmNIpWCYggeHcUz2NnL4sSODqdzYQ1AlpeAmhAnlOUaiK3JmtOGiMe+L05GTEoXGpfCOlDuQqd+CUiazFMFlrviGjAFXACRgvtwz44urHe2FF0tYsBzJfZJfkRsyNwKvGRuaDUR72nts2Cn9twxCTuck2d1l12OcKUBROslxmHxtg+rQthpCtwc5digNLrruuEVpuRO7xvZ5Tp7CSR8y4JigA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=meta.com; dmarc=pass action=none header.from=meta.com;
 dkim=pass header.d=meta.com; arc=none
Received: from PH0PR15MB7038.namprd15.prod.outlook.com (2603:10b6:510:38d::10)
 by LV3PR15MB6481.namprd15.prod.outlook.com (2603:10b6:408:1b2::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9654.14; Fri, 27 Feb
 2026 13:02:21 +0000
Received: from PH0PR15MB7038.namprd15.prod.outlook.com
 ([fe80::617b:b77c:494d:de19]) by PH0PR15MB7038.namprd15.prod.outlook.com
 ([fe80::617b:b77c:494d:de19%3]) with mapi id 15.20.9654.014; Fri, 27 Feb 2026
 13:02:21 +0000
Message-ID: <ad614dc4-0fd3-4897-b879-5d78a22b534f@meta.com>
Date: Fri, 27 Feb 2026 13:02:08 +0000
User-Agent: Mozilla Thunderbird
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
        Alex Williamson <alex@shazbot.org>, Leon Romanovsky <leon@kernel.org>,
        Jason Gunthorpe <jgg@nvidia.com>, Alex Mastro <amastro@fb.com>,
        Mahmoud Adam <mngyadam@amazon.de>, David Matlack <dmatlack@google.com>
References: <20260226202211.929005-1-mattev@meta.com>
 <20260226202211.929005-5-mattev@meta.com>
 <f75088c6-5795-49cc-8932-ea46c2223d74@amd.com>
Content-Language: en-GB
From: Matt Evans <mattev@meta.com>
In-Reply-To: <f75088c6-5795-49cc-8932-ea46c2223d74@amd.com>
X-ClientProxiedBy: AS4P190CA0017.EURP190.PROD.OUTLOOK.COM
 (2603:10a6:20b:5d0::7) To PH0PR15MB7038.namprd15.prod.outlook.com
 (2603:10b6:510:38d::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR15MB7038:EE_|LV3PR15MB6481:EE_
X-MS-Office365-Filtering-Correlation-Id: 9721e374-3c2d-4abf-ce95-08de760071a8
X-FB-Source: Internal
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|10070799003|1800799024|366016|376014|7416014;
X-Microsoft-Antispam-Message-Info: 
	y8Exu8QXtiiRxPeXIQL5XsuP2A8hDFMboowJe4Qt1mJUQmE8K5vTKQQGo1bfvdIFRsUoNVd1yXNZqNIxmaLjDdWOo4iDe/ZDQllgUsLUw9teYWnD33t1bQ3nPpDzSPzrbdnNmqCZyeLrc1ve9AFPHDcF0jN2HPTyPJQBZWiGjBUqoCFzCXVfGz8YZP5wYgc86LqHlCJ5zr4GZ3uI+R2Zo1BkusUSct4qnQFqvG1loIAYyalSUItRCaPIHHOwCMuUS9WRLa9fTxLZNx5bHE9XfDLT2L62n1igcQz0JdcOj3UfxkHjfkfjyks9GqGAYBQISDfATPdgHYIGlNScFMXV+flPJEr+7IPALmyhsNPDzxs6H7qtbKw6Xhi+mkafxFLIo0b3TXVOhlY8Dpc/2SdXHGyQL6fFZUBvGE0gWFsGnu+k5oQY3kELdqeH0rkP7BSelSxweJ6Y7zKTDMpOJ2sciD2UlvGBi+kpR6jzeysDPj5PiWGb7R8hAEjgAJDDLqHZBZzhjompoq6g78EwFhxnf13Z+l2SxBrs3W0iMwgZOab84dNfXeU8WnS+2479Wv1EXFXMNtMpfiC29Dp2PfYoJwH5BMPU0IQFL5nGmo+WsIG/9gEAbPMf2v7aASlGqDAFL1TXSupoAtY0f8lBefiYbtYC2KEY3HwEUFu0TrYwR4bjByBuCp2/d6OrAz0+iBdI
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH0PR15MB7038.namprd15.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(10070799003)(1800799024)(366016)(376014)(7416014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?aXozQlJseWFTaFpZbTdnTTJxMmM1cTVSREI2Tkx3VVo2RVdCbXJid3RYd0F1?=
 =?utf-8?B?eEY2aWY2WnlNOVh1VVNSb2diU1VXR2ZPREhDVVRvVVZLTDFram9xaHhNcHcx?=
 =?utf-8?B?ZldaZ2FuVE1JdldJZDVjOWJjT0dFd1diRGZvNkV0RndJRGEwVUszSHZBUmdh?=
 =?utf-8?B?b3V2emlMb0NZTkZYWVJrTnZ2dVNtdHZSRmxoR2lhYWRqdVFabW14TE9ldXFQ?=
 =?utf-8?B?NG5yMmlWdWwvbGZZU0xhUEpXV3R6STFIcGRBb1FiL1NmWWZjbFlkaHllM3Fj?=
 =?utf-8?B?KzNYY1dmUDJNd0s3bEpBai9kN0txTEJOaWczOTZkWnVvQU1KMzFONDUwa0pI?=
 =?utf-8?B?Q1JUTVM3czlZeSszenJZY0JDb2FiVnBSQndxeGFiSmdXYXFpUlpuNStkVjZo?=
 =?utf-8?B?YjJFei9CV1NoNUd2WDRZY0xyakk1QTN3TzdORWNXOW0wUWM2NnNLL1BjRjNl?=
 =?utf-8?B?M1RUMktIaUVKV0hjZkFKQWo3cVJwOG0wNE12N3RONUZwKzMwNnRaUTgwd0ZW?=
 =?utf-8?B?empTWnEyY2VnTzNoV0tVUWowMEtuUEQreE4wRFFlUDB3SnRtVTF1eHI4UC8w?=
 =?utf-8?B?bnVKSStxMkpHTEY0SkdGeHpDcTBZZ2lTcjZ5cDZEc2RSQmNHa1BHbmU2QjQ1?=
 =?utf-8?B?c1NhdmtqRGFuMVU0cG4yYStLR3hCT2VzaTA4RlhqVDRCSVdwL0hvOStTSFJu?=
 =?utf-8?B?ZlJqNHN5YWdycWtjWWpLZHc3Q1FRMXJNMlZSWVplZ05UYWNXRzBOM1VMdkE3?=
 =?utf-8?B?OVVKcEtYZkgzOUVtcTlPR3JVYjhHaTF3cFgvdTZTU3pUa2xJeGlqSnNBeGdq?=
 =?utf-8?B?TEdiQ2pNbWxKa1BtaEZIMVZKSnhUM2dHUDI3bkIrM2pCQmZia2o2eGpyUDU1?=
 =?utf-8?B?dGt1YzVCV2kvdlVxUFR6MWVzNmx5Um1iNG5OZ20rNkY0MEx1RFNDTjB1WHhW?=
 =?utf-8?B?Nm1YQ3J4bUd2bmpaVGRUVUtWMkVGS1FCcVhWZC9xbHp5ak8wdEN1Wk5KRVZE?=
 =?utf-8?B?YU13clFWR2Fra3NkVHo0bDRyNjRCQmNMeDR2azJjRi9DQ3YwRGM1c3U0SlZR?=
 =?utf-8?B?QUxlMCtFanhIKzVxQXhlTm9jQ1dnYnhYN3lyVHhBUTVsQnVqRjNOTUorNkJB?=
 =?utf-8?B?ejNEcFRnUVp1M29DcVNwS1hJRVFQMFQxaHdab2hsRDdDTjBqSnM0R0RIdVd0?=
 =?utf-8?B?VFFCWkZEbmkxZXJ5WnVMcHBlU1d5MGwwTUk2a1V2SDFTMUt5NDdOR2p4S2JU?=
 =?utf-8?B?TUtZYmxCRkVuYUhnclVSL3pNTWpkdGwxZVNQNzEzV3B1Nk84akVsQm1IblZ6?=
 =?utf-8?B?dS8rYW5TSk8rcDJKNnlFbmcxeHo4VUlxTEhuL3cvUGh2dWgvTnRiK21HS3Bu?=
 =?utf-8?B?czRoUUJYUENEK1FzWDJ5djNnTnIxY0phcmZiRFF0b0RjSDVSMHFMekNmRVkx?=
 =?utf-8?B?TFdIOWVSdlNCS1JMVVpoTlZlcUY3UGk4Skx5SUdNbTVLMysrYlNNU280YnRx?=
 =?utf-8?B?ZkUzNG9JOVMxUjlaQzhBWkRwRy8xZmRNR2NZUElyTHlnRkJMN1UrWVZWc0l1?=
 =?utf-8?B?M09lcGx6Y2JCc0Q1cXFKRDZhYVE0bkppeGlaVjlXWmF3Z2R5ejVhMG15dUZj?=
 =?utf-8?B?T1UwR1RXMU5FZ0VxaWdjMURDZWFhV3lOdzFMVkxQS09HcUlYTkN5cWNmM3hE?=
 =?utf-8?B?YkZYK1N1Q2Q2N1Y0Z2ExVUVCRkJDMGwyMEZodXgrZzNHb1FJM3ovK29tSXEy?=
 =?utf-8?B?QWoxOHhIcDMwNXUrbmk5TnV6endudU5BV25xeU5OWTljUCtYSEZHOUR6T1R1?=
 =?utf-8?B?ZmZ0R1drVGZETjV5azhtL2xxRHdTeEJMeVNoRG54QytjeTZIMnAxK3A5eFgx?=
 =?utf-8?B?dnpzTGJRcUJyTG82aU9KZ055K0ZpZ25KcGdVT1RWcCtpTkNuaENtemEwa3Zk?=
 =?utf-8?B?RER5aU51SmNUOWFTR0tqazQyTmh6V0xUL0tud0kyTGpkUmNYaGlBQ09GZjZG?=
 =?utf-8?B?V09QZ3hvaUJOSENUbHpsT09DbVN1WjZndGR6OG5VUVFBU2hxZVN1Y1ZmQmtQ?=
 =?utf-8?B?b1M4cmZoSkVQb0s5YWhYNm5kMUwwMGt5dXpzRnJMZmF2dzlob1RTYXJjeCtN?=
 =?utf-8?B?QldnSkQvbEtpVkZieXpDeGVScWtXZkFaS1NtMWJ3QWR0QUFRdjd5UDFGR3po?=
 =?utf-8?B?enpRN0lWWE0zYXlZSEFpeG1Md0ZwSU11M3Y3UHFkQm1iSVJxNmZiSzJkaEl3?=
 =?utf-8?B?UVZyWndVNE9BdE1zS3hvN2o3dE8yZkRFQWxoMHpHUVNNajBHQjZmd2I0UGsx?=
 =?utf-8?B?emUySG50cWJqcUVJQTFveDBOZWtkR0FldXQxSWloSlFERFA2dFh1c0NkODQ1?=
 =?utf-8?Q?ro8k2I8qHsZK7Sp8=3D?=
X-OriginatorOrg: meta.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9721e374-3c2d-4abf-ce95-08de760071a8
X-MS-Exchange-CrossTenant-AuthSource: PH0PR15MB7038.namprd15.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Feb 2026 13:02:21.4051
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ae927fe-1255-47a7-a2af-5f3a069daaa2
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 5UYK4oPLelYkNZmXDRoxUyQDDMo4r2R1or0MlDceTbOdzDwi43Fc9T1Ujpb/QIFi
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV3PR15MB6481
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjI3MDExNSBTYWx0ZWRfX5duXJt4+nC8q
 jcO5d8ZE3dCrTF6GSgD0tTnhCfF/liXVhM4YbSQxegBaa5iPMe7XTGrBATUXgGadtntMPOwoMNc
 koz5OgtPve9QJjLAvm1ZtXlxzktf50SYFl+6dCA0nc1LciQ1khicsxtG48CPDtp4BR8FLe1CKKx
 LFTrZnJFET4GeMydNpSZIIKXMUMDZ3NcmilDCAOmFgluj1ZrpeXQuXQIEfkKKcLHEPe7GXx2RVJ
 6cveIniHNtpuo6nyhDbL/Bg/8nCcUqDcuXM952haviXm3TeLKfhvdV5UBk7/6s5a8PmrLdO7JEk
 K/WrzjzRUKWjqaTlAEWtFlMcxVNs/dYXtIEqh85W9y9fdCaEVTtKalxxslf7LvpyyQbimk800jr
 e5Oi4HloP2AeUynH8MsvH33y8oo1K6wbPcJXKeGBEi8AFPkKJ3tGYP3wt+R3fOAtUzcbCs1G7iE
 hm9pFWjY0s39H2rOxKQ==
X-Authority-Analysis: v=2.4 cv=T6GBjvKQ c=1 sm=1 tr=0 ts=69a195e3 cx=c_pps
 a=ijphbjn0GKEIB6My7LrvAw==:117 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19
 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19
 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=VwQbUJbxAAAA:8 a=VabnemYjAAAA:8 a=l-GKBj7RSL6P71OzaQwA:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=gKebqoRLp9LExxC7YDUY:22
X-Proofpoint-GUID: LDs1q2z5YdSAnREppSkthvc0pZ1HtUV2
X-Proofpoint-ORIG-GUID: LDs1q2z5YdSAnREppSkthvc0pZ1HtUV2
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-27_02,2026-02-27_01,2025-10-01_01
X-Spamd-Bar: -----
X-MailFrom: prvs=051866f39e=mattev@meta.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: SD5ZZHQCP3ZRIX5CAMZ6FT2TDRITTBHM
X-Message-ID-Hash: SD5ZZHQCP3ZRIX5CAMZ6FT2TDRITTBHM
X-Mailman-Approved-At: Thu, 16 Apr 2026 16:51:07 +0000
CC: =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Kevin Tian <kevin.tian@intel.com>, Ankit Agrawal <ankita@nvidia.com>, Pranjal Shrivastava <praan@google.com>, Alistair Popple <apopple@nvidia.com>, Vivek Kasireddy <vivek.kasireddy@intel.com>, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, kvm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC PATCH 4/7] dma-buf: uapi: Mechanism to revoke DMABUFs via ioctl()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/SD5ZZHQCP3ZRIX5CAMZ6FT2TDRITTBHM/>
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
	DATE_IN_PAST(1.00)[1156];
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
	NEURAL_HAM(-0.00)[-0.909];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,meta.com:mid,meta.com:email,linaro.org:email]
X-Rspamd-Queue-Id: 63F5641274D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

SGkgQ2hyaXN0aWFuLA0KDQpPbiAyNy8wMi8yMDI2IDEwOjA1LCBDaHJpc3RpYW4gS8O2bmlnIHdy
b3RlOg0KPiBPbiAyLzI2LzI2IDIxOjIyLCBNYXR0IEV2YW5zIHdyb3RlOg0KPj4gQWRkIGEgbmV3
IGRtYS1idWYgaW9jdGwoKSBvcCwgRE1BX0JVRl9JT0NUTF9SRVZPS0UsIGNvbm5lY3RlZCB0byBh
IG5ldw0KPj4gKG9wdGlvbmFsKSBkbWFfYnVmX29wcyBjYWxsYmFjaywgcmV2b2tlKCkuICBBbiBl
eHBvcnRlciByZWNlaXZpbmcgdGhpcw0KPj4gd2lsbCBfcGVybWFuZW50bHlfIHJldm9rZSB0aGUg
RE1BQlVGLCBtZWFuaW5nIGl0IGNhbiBubyBsb25nZXIgYmUNCj4+IG1hcHBlZC9hdHRhY2hlZC9t
bWFwKCllZC4gIEl0IGFsc28gZ3VhcmFudGVlcyB0aGF0IGV4aXN0aW5nDQo+PiBpbXBvcnRlcnMg
aGF2ZSBiZWVuIGRldGFjaGVkIChlLmcuIHZpYSBtb3ZlX25vdGlmeSkgYW5kIGFsbCBtYXBwaW5n
cw0KPj4gbWFkZSBpbmFjY2Vzc2libGUuDQo+Pg0KPj4gVGhpcyBpcyB1c2VmdWwgZm9yIGxpZmVj
eWNsZSBtYW5hZ2VtZW50IGluIHNjZW5hcmlvcyB3aGVyZSBhIHByb2Nlc3MNCj4+IGhhcyBjcmVh
dGVkIGEgRE1BQlVGIHJlcHJlc2VudGluZyBhIHJlc291cmNlLCB0aGVuIGRlbGVnYXRlZCBpdCB0
bw0KPj4gYSBjbGllbnQgcHJvY2VzczsgYWNjZXNzIHRvIHRoZSByZXNvdXJjZSBpcyByZXZva2Vk
IHdoZW4gdGhlIGNsaWVudCBpcw0KPj4gZGVlbWVkICJkb25lIiwgYW5kIHRoZSByZXNvdXJjZSBj
YW4gYmUgc2FmZWx5IHJlLXVzZWQgZWxzZXdoZXJlLg0KPiANCj4gV2VsbCB0aGF0IG1lYW5zIHJl
dm9raW5nIGZyb20gdGhlIGltcG9ydGVyIHNpZGUuIFRoYXQgYWJzb2x1dGVseSBkb2Vzbid0IG1h
a2Ugc2Vuc2UgdG8gbWUuDQo+IA0KPiBXaHkgd291bGQgeW91IGRvIHRoYXQ/DQoNCldlbGwsIGl0
J3MgZm9yIGNsZWFudXAsIGJ1dCBkaXJlY3RlZCB0byBhIHNwZWNpZmljIGJ1ZmZlci4NCg0KRWxh
Ym9yYXRpbmcgb24gdGhlIG9yaWdpbmFsIGV4YW1wbGUsIGEgdXNlcnNwYWNlIGRyaXZlciBjcmVh
dGVzIGEgRE1BQlVGDQpmb3IgcGFydHMgb2YgYSBCQVIgYW5kIHRoZW4gc2VuZHMgaXRzIGZkIHRv
IHNvbWUgb3RoZXIgY2xpZW50IHByb2Nlc3MNCnZpYSBTQ01fUklHSFRTLiAgVGhlIGNsaWVudCBt
aWdodCB0aGVuIGRvIGFsbCBvZjoNCg0KLSBQcm9jZXNzIG1hcHBpbmdzIG9mIHRoZSBidWZmZXIN
Ci0gaW9tbXVmZCBJTy1tYXBwaW5ncyBvZiBpdA0KLSBvdGhlciB1bnJlbGF0ZWQgZHJpdmVycyBp
bXBvcnQgaXQNCi0gc2hhcmUgdGhlIGZkIHdpdGggbW9yZSBwcm9jZXNzZXMhDQoNCmkuZS4gcG9r
aW5nIGEgcHJvZ3JhbW1pbmcgaW50ZXJmYWNlIGFuZCBvcmNoZXN0cmF0aW5nIFAyUCBETUEgdG8g
aXQuDQpFdmVudHVhbGx5IHRoZSBjbGllbnQgY29tcGxldGVzIGFuZCBtZXNzYWdlcyB0aGUgZHJp
dmVyIHRvIHNheSBnb29kYnllLA0KZXhjZXB0IHRoZSBjbGllbnQgaXMgYnVnZ3k6IGl0IGhhbmdz
IGJlZm9yZSBpdCBtdW5tYXBzIG9yIHJlcXVlc3Qgb3RoZXINCmRyaXZlcnMgdG8gc2h1dCBkb3du
L2RldGFjaCB0aGVpciBpbXBvcnRzLg0KDQpOb3cgdGhlIG9yaWdpbmFsIGRyaXZlciBjYW4ndCBy
ZXVzZSBhbnkgQkFSIHJhbmdlcyBpdCBzaGFyZWQgb3V0LCBhcw0KdGhlcmUgbWlnaHQgc3RpbGwg
YmUgYWN0aXZlIG1hcHBpbmdzIG9yIGV2ZW4gb25nb2luZyBQMlAgRE1BIHRvIHRoZW0uDQoNClRo
ZSBnb2FsIGlzIHRvIGd1YXJhbnRlZSBhIHBvaW50IGluIHRpbWUgd2hlcmUgcmVzb3VyY2VzIGNv
cnJlc3BvbmRpbmcNCnRvIGEgcHJldmlvdXNseS1zaGFyZWQgRE1BQlVGIGZkIF9jYW5ub3RfIGJl
IGFjY2Vzc2VkIGFueW1vcmU6ICBDUFVzLA0Kb3Igb3RoZXIgZHJpdmVycy9pbXBvcnRlcnMsIG9y
IGFueSBvdGhlciBraW5kIG9mIFAyUCBETUEuICBTbyB5ZXMsIGENCnJldm9rZSBtdXN0IGRldGFj
aCBpbXBvcnRlcnMsIHVzaW5nIHRoZSBzeW5jaHJvbm91cyByZXZvY2F0aW9uIGZsb3cNCkxlb24g
YWRkZWQgaW4gWzBdICgiZG1hLWJ1ZjogVXNlIHJldm9rZSBtZWNoYW5pc20gdG8gaW52YWxpZGF0
ZSBzaGFyZWQNCmJ1ZmZlcnMiKS4NCg0KKEFwb2xvZ2llcywgSSBzaG91bGQgcmVhbGx5IGhhdmUg
anVzdCBidWlsdCB0aGlzIG9uIHRvcCBvZiBhIHRyZWUNCmNvbnRhaW5pbmcgdGhhdCBzZXJpZXMg
dG8gbWFrZSB0aGlzIG5lZWQgY2xlYXJlci4pDQoNCkJ1dCwgaXQgdWx0aW1hdGVseSBzZWVtcyB0
byBoYXZlIHRoZSBzYW1lIGRvd25zdHJlYW0gZWZmZWN0cyBhcyBpZiBvbmUNCndlcmUgdG8sIHNh
eSwgc2h1dCBkb3duIFZGSU8gZGV2aWNlIGZkcyBhbmQgdGhlcmVmb3JlIHRyaWdnZXINCnZmaW9f
cGNpX2RtYV9idWZfY2xlYW51cCgpLiAgSXQncyBqdXN0IHRoZSByZWFzb24gdG8gdHJpZ2dlciBy
ZXZvY2F0aW9uDQppcyBkaWZmZXJlbnQ6ICBhIHNlbGVjdGl2ZSB1c2Vyc3BhY2UtdHJpZ2dlcmVk
IHJldm9jYXRpb24gb2YgYSBnaXZlbg0KYnVmZmVyLCBpbnN0ZWFkIG9mIGFuIGV4cG9ydGVyIGNs
ZWFudXAtdHJpZ2dlcmVkIHJldm9jYXRpb24gb2YgYWxsDQpidWZmZXJzLiAgSW4gYm90aCBjYXNl
cyB0aGUgZ29hbHMgYXJlIGlkZW50aWNhbCB0b28sIG9mIGEgc3luY2hyb25pc2VkDQpwb2ludCBh
ZnRlciB3aGljaCBubyBtb3JlIERNQS9DUFUgYWNjZXNzIGNhbiBoYXBwZW4uDQoNCihJZiBJJ3Zl
IG1pc3VuZGVyc3Rvb2QgeW91ciBxdWVzdGlvbiBwbGVhc2UgY2xhcmlmeSwgYnV0IEkgaG9wZSB0
aGF0DQphbnN3ZXJzIGl0ISkNCg0KQ2hlZXJzLA0KDQoNCk1hdHQNCg0KWzBdIGh0dHBzOi8vbG9y
ZS5rZXJuZWwub3JnL2xpbnV4LWlvbW11LzIwMjYwMjA1LW5vY3R1cm5hbC1wb2V0aWMtY2hhbW9p
cy1mNTY2YWRAaG91YXQvVC8jbTMxMGNkMDcwMTFlM2ExNDYxYjZmZGE0NWUzZjliODg2YmE3NjU3
MWENCg0KPiANCj4gUmVnYXJkcywNCj4gQ2hyaXN0aWFuLg0KPiANCj4+DQo+PiBTaWduZWQtb2Zm
LWJ5OiBNYXR0IEV2YW5zIDxtYXR0ZXZAbWV0YS5jb20+DQo+PiAtLS0NCj4+ICBkcml2ZXJzL2Rt
YS1idWYvZG1hLWJ1Zi5jICAgIHwgIDUgKysrKysNCj4+ICBpbmNsdWRlL2xpbnV4L2RtYS1idWYu
aCAgICAgIHwgMjIgKysrKysrKysrKysrKysrKysrKysrKw0KPj4gIGluY2x1ZGUvdWFwaS9saW51
eC9kbWEtYnVmLmggfCAgMSArDQo+PiAgMyBmaWxlcyBjaGFuZ2VkLCAyOCBpbnNlcnRpb25zKCsp
DQo+Pg0KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMgYi9kcml2ZXJz
L2RtYS1idWYvZG1hLWJ1Zi5jDQo+PiBpbmRleCBlZGFhOWU0ZWU0YWUuLmI5YjMxNTMxN2YyZCAx
MDA2NDQNCj4+IC0tLSBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMNCj4+ICsrKyBiL2RyaXZl
cnMvZG1hLWJ1Zi9kbWEtYnVmLmMNCj4+IEBAIC01NjEsNiArNTYxLDExIEBAIHN0YXRpYyBsb25n
IGRtYV9idWZfaW9jdGwoc3RydWN0IGZpbGUgKmZpbGUsDQo+PiAgICAgICAgIGNhc2UgRE1BX0JV
Rl9JT0NUTF9JTVBPUlRfU1lOQ19GSUxFOg0KPj4gICAgICAgICAgICAgICAgIHJldHVybiBkbWFf
YnVmX2ltcG9ydF9zeW5jX2ZpbGUoZG1hYnVmLCAoY29uc3Qgdm9pZCBfX3VzZXIgKilhcmcpOw0K
Pj4gICNlbmRpZg0KPj4gKyAgICAgICBjYXNlIERNQV9CVUZfSU9DVExfUkVWT0tFOg0KPj4gKyAg
ICAgICAgICAgICAgIGlmIChkbWFidWYtPm9wcy0+cmV2b2tlKQ0KPj4gKyAgICAgICAgICAgICAg
ICAgICAgICAgcmV0dXJuIGRtYWJ1Zi0+b3BzLT5yZXZva2UoZG1hYnVmKTsNCj4+ICsgICAgICAg
ICAgICAgICBlbHNlDQo+PiArICAgICAgICAgICAgICAgICAgICAgICByZXR1cm4gLUVJTlZBTDsN
Cj4+DQo+PiAgICAgICAgIGRlZmF1bHQ6DQo+PiAgICAgICAgICAgICAgICAgcmV0dXJuIC1FTk9U
VFk7DQo+PiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS9saW51eC9kbWEtYnVmLmggYi9pbmNsdWRlL2xp
bnV4L2RtYS1idWYuaA0KPj4gaW5kZXggMGJjNDkyMDkwMjM3Li5hNjhjOWFkN2FlYmQgMTAwNjQ0
DQo+PiAtLS0gYS9pbmNsdWRlL2xpbnV4L2RtYS1idWYuaA0KPj4gKysrIGIvaW5jbHVkZS9saW51
eC9kbWEtYnVmLmgNCj4+IEBAIC0yNzcsNiArMjc3LDI4IEBAIHN0cnVjdCBkbWFfYnVmX29wcyB7
DQo+Pg0KPj4gICAgICAgICBpbnQgKCp2bWFwKShzdHJ1Y3QgZG1hX2J1ZiAqZG1hYnVmLCBzdHJ1
Y3QgaW9zeXNfbWFwICptYXApOw0KPj4gICAgICAgICB2b2lkICgqdnVubWFwKShzdHJ1Y3QgZG1h
X2J1ZiAqZG1hYnVmLCBzdHJ1Y3QgaW9zeXNfbWFwICptYXApOw0KPj4gKw0KPj4gKyAgICAgICAv
KioNCj4+ICsgICAgICAgICogQHJldm9rZToNCj4+ICsgICAgICAgICoNCj4+ICsgICAgICAgICog
VGhpcyBjYWxsYmFjayBpcyBpbnZva2VkIGZyb20gYSB1c2Vyc3BhY2UNCj4+ICsgICAgICAgICog
RE1BX0JVRl9JT0NUTF9SRVZPS0Ugb3BlcmF0aW9uLCBhbmQgcmVxdWVzdHMgdGhhdCBhY2Nlc3Mg
dG8NCj4+ICsgICAgICAgICogdGhlIGJ1ZmZlciBpcyBpbW1lZGlhdGVseSBhbmQgcGVybWFuZW50
bHkgcmV2b2tlZC4gIE9uDQo+PiArICAgICAgICAqIHN1Y2Nlc3NmdWwgcmV0dXJuLCB0aGUgYnVm
ZmVyIGlzIG5vdCBhY2Nlc3NpYmxlIHRocm91Z2ggYW55DQo+PiArICAgICAgICAqIG1tYXAoKSBv
ciBkbWEtYnVmIGltcG9ydC4gIFRoZSByZXF1ZXN0IGZhaWxzIGlmIHRoZSBidWZmZXINCj4+ICsg
ICAgICAgICogaXMgcGlubmVkOyBvdGhlcndpc2UsIHRoZSBleHBvcnRlciBtYXJrcyB0aGUgYnVm
ZmVyIGFzDQo+PiArICAgICAgICAqIGluYWNjZXNzaWJsZSBhbmQgdXNlcyB0aGUgbW92ZV9ub3Rp
ZnkgY2FsbGJhY2sgdG8gaW5mb3JtDQo+PiArICAgICAgICAqIGltcG9ydGVycyBvZiB0aGUgY2hh
bmdlLiAgVGhlIGJ1ZmZlciBpcyBwZXJtYW5lbnRseQ0KPj4gKyAgICAgICAgKiBkaXNhYmxlZCwg
YW5kIHRoZSBleHBvcnRlciBtdXN0IHJlZnVzZSBhbGwgbWFwLCBtbWFwLA0KPj4gKyAgICAgICAg
KiBhdHRhY2gsIGV0Yy4gcmVxdWVzdHMuDQo+PiArICAgICAgICAqDQo+PiArICAgICAgICAqIFJl
dHVybnM6DQo+PiArICAgICAgICAqDQo+PiArICAgICAgICAqIDAgb24gc3VjY2Vzcywgb3IgYSBu
ZWdhdGl2ZSBlcnJvciBjb2RlIG9uIGZhaWx1cmU6DQo+PiArICAgICAgICAqIC1FTk9ERVYgaWYg
dGhlIGFzc29jaWF0ZWQgZGV2aWNlIG5vIGxvbmdlciBleGlzdHMvaXMgY2xvc2VkLg0KPj4gKyAg
ICAgICAgKiAtRUJBREZEIGlmIHRoZSBidWZmZXIgaGFzIGFscmVhZHkgYmVlbiByZXZva2VkLg0K
Pj4gKyAgICAgICAgKi8NCj4+ICsgICAgICAgaW50ICgqcmV2b2tlKShzdHJ1Y3QgZG1hX2J1ZiAq
ZG1hYnVmKTsNCj4+ICB9Ow0KPj4NCj4+ICAvKioNCj4+IGRpZmYgLS1naXQgYS9pbmNsdWRlL3Vh
cGkvbGludXgvZG1hLWJ1Zi5oIGIvaW5jbHVkZS91YXBpL2xpbnV4L2RtYS1idWYuaA0KPj4gaW5k
ZXggNWE2ZmRhNjZkOWFkLi44NGJmMmRkMmQwZjMgMTAwNjQ0DQo+PiAtLS0gYS9pbmNsdWRlL3Vh
cGkvbGludXgvZG1hLWJ1Zi5oDQo+PiArKysgYi9pbmNsdWRlL3VhcGkvbGludXgvZG1hLWJ1Zi5o
DQo+PiBAQCAtMTc4LDUgKzE3OCw2IEBAIHN0cnVjdCBkbWFfYnVmX2ltcG9ydF9zeW5jX2ZpbGUg
ew0KPj4gICNkZWZpbmUgRE1BX0JVRl9TRVRfTkFNRV9CICAgICBfSU9XKERNQV9CVUZfQkFTRSwg
MSwgX191NjQpDQo+PiAgI2RlZmluZSBETUFfQlVGX0lPQ1RMX0VYUE9SVF9TWU5DX0ZJTEUgX0lP
V1IoRE1BX0JVRl9CQVNFLCAyLCBzdHJ1Y3QgZG1hX2J1Zl9leHBvcnRfc3luY19maWxlKQ0KPj4g
ICNkZWZpbmUgRE1BX0JVRl9JT0NUTF9JTVBPUlRfU1lOQ19GSUxFIF9JT1coRE1BX0JVRl9CQVNF
LCAzLCBzdHJ1Y3QgZG1hX2J1Zl9pbXBvcnRfc3luY19maWxlKQ0KPj4gKyNkZWZpbmUgRE1BX0JV
Rl9JT0NUTF9SRVZPS0UgICBfSU8oRE1BX0JVRl9CQVNFLCA0KQ0KPj4NCj4+ICAjZW5kaWYNCj4+
IC0tDQo+PiAyLjQ3LjMNCj4+DQo+IA0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0t
c2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5h
cm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
