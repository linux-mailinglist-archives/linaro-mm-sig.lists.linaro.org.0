Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YL6iAgH1oWkwxgQAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 27 Feb 2026 20:48:17 +0100
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F46A1BD105
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 27 Feb 2026 20:48:16 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 264C74010F
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 27 Feb 2026 19:48:15 +0000 (UTC)
Received: from CH4PR04CU002.outbound.protection.outlook.com (mail-northcentralusazon11013013.outbound.protection.outlook.com [40.107.201.13])
	by lists.linaro.org (Postfix) with ESMTPS id 7ECDF4010F
	for <linaro-mm-sig@lists.linaro.org>; Fri, 27 Feb 2026 19:48:12 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=Nvidia.com header.s=selector2 header.b=reyJsLbU;
	spf=pass (lists.linaro.org: domain of jgg@nvidia.com designates 40.107.201.13 as permitted sender) smtp.mailfrom=jgg@nvidia.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1");
	dmarc=pass (policy=reject) header.from=nvidia.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=utaE0lMJ7uENihgrEkcViHIdBRrb3DyjqxJA7t04HoMubv2jbW4QvRpOy1nxjtIawJS820s4UInJ8Sf0wLusdtsIv2csj2his/qT4I5f6Vj7jSMjTpNQVbftbu7gYfgm+6Hyt6gGcB9mecmuh7FOzFLWE6HLj7puWDuiZ786Z9KGTzeLHJPIJSK7FOiPp3mV6PVb0huuxVE4yzCMYsiaaHBdegq0HLWfkdeYZTulTNVUGHw1uVAd9sZSkQ5RjFylPAWfAm+NgeXNb+6kfIR+At30Bxu2uvfo3Yd7ihgMsQeQfK5bX7ae8neFuSI5GTvPvgCoqLdnkWdeMqCGqpKTow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yTnfbstCzX8EZQI9Cab7UKHsIREPVz8UcvE6A4G1pVU=;
 b=D/n4V/TUzHR0dKsmkKLUCAuOLwGfLfEOYgATlVhkpTD4uxnY4znEK+8wsHi27L1OJszFT3PQkkbQC7eS151oJxZpuiq+E7J1g7L6uOqm1tux5RCL3FVSY9Z0+Pi1j4H0sR2aKzqfJcEb8HwoOsIbY/QmeO24Ah/Ey3LnqoyUB/EvgSdJ95WxpQQrB0fzIeb1Z5ccMv5VQ3RjSEP5B25undgpOnL+9tzSkrLAFM5pXfjFmSO6DmOodfuGSI8OefqUYWAVPiVGC/t+gUDl+AkK2C1YGwS3jk5uoHJrPL12/wKfW5Lz75cY2qKybElvhpmXNwEP4wfK39rLUN4H3w0meg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yTnfbstCzX8EZQI9Cab7UKHsIREPVz8UcvE6A4G1pVU=;
 b=reyJsLbUVwaOgPKmU3FthhYcAP3MxJ54+cwE3U7LE/EIhnBA35mgIS8pEstkvLPUAQ871ZonZHcLh5yrPSyARO/4fGmDL3nioCA7dQhRVZ/rsIhDEEuVmfgiock/aUjOFBU2HqlvT3xCvQiRW4A3yOXIt1RC8IJjssoJHxv7F0YdGfnOi93idvozyqnD1FZ79u0Q9DoreNrKILGvf62FGdbtWbFqr021g4bC98Mnsi9kLl55zdnCxTQ0L5Esx0kyiP5QRed8JNfQfbyrdza5CBwdirYjXgJwBtUwxSC5Jas7zZEBnTxX+RAmqyzdL0hDzTrIpM0yp/xRjWMpLN2BHQ==
Received: from LV8PR12MB9620.namprd12.prod.outlook.com (2603:10b6:408:2a1::19)
 by PH0PR12MB7791.namprd12.prod.outlook.com (2603:10b6:510:280::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9654.14; Fri, 27 Feb
 2026 19:48:08 +0000
Received: from LV8PR12MB9620.namprd12.prod.outlook.com
 ([fe80::299d:f5e0:3550:1528]) by LV8PR12MB9620.namprd12.prod.outlook.com
 ([fe80::299d:f5e0:3550:1528%5]) with mapi id 15.20.9654.014; Fri, 27 Feb 2026
 19:48:08 +0000
Date: Fri, 27 Feb 2026 15:48:07 -0400
From: Jason Gunthorpe <jgg@nvidia.com>
To: Matt Evans <mattev@meta.com>
Message-ID: <20260227194807.GL5933@nvidia.com>
References: <20260226202211.929005-1-mattev@meta.com>
 <20260226202211.929005-4-mattev@meta.com>
 <90bd4185-1e87-4393-b9e1-1318a656a7d9@amd.com>
 <20260227125109.GH5933@nvidia.com>
 <c5a8f318-20af-4d80-a279-2393192108c3@meta.com>
Content-Disposition: inline
In-Reply-To: <c5a8f318-20af-4d80-a279-2393192108c3@meta.com>
X-ClientProxiedBy: BL1P222CA0002.NAMP222.PROD.OUTLOOK.COM
 (2603:10b6:208:2c7::7) To LV8PR12MB9620.namprd12.prod.outlook.com
 (2603:10b6:408:2a1::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: LV8PR12MB9620:EE_|PH0PR12MB7791:EE_
X-MS-Office365-Filtering-Correlation-Id: af37b064-b963-4a50-8bb1-08de76392180
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|7416014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: 
	UvSwDkaWIQ0G2Alais2L9bG+OtWx3BoHtlwnO0wZTh2IQ9Lm+OEJOXWAcSwmr2utlqx4JSfQdgMUQiyhepquti1huwvokVA5EVPN0iL8YRS/Da7Zn2VJR/uuFO9LU6VfIi4tP2+sEbKkTAo2EMBLEZV1ygGo2ksEPYn6nPtPqvft3dwCppOTOWZYhhEj5HBf4Ug+2it3ZaRreNa4Pki8igrTflKWRCnu0my1iUxZ107V/6bEOSyYnU98HfCkVF6NJrFMr6r6IRgOREBTqeM/Byckixk+4DQcM7lP6RWCycY1TwVEdyCXA1AtZhmrE5nOvuJEjBsQxVn7yXK3vutbcgu6FnWl6vlDAnLLNpWGjqSCBRVNl0+DfO09Vf49GOLmuTPr4+Cc1pz/C6gy0OnQJWt11IzWqmPe19mfI/t8S875lz5fbDweuJ/SJO4XuWdBiyGw9Nc8gVjqeGPtT0TQSAAvEgUqtTih3G+9YAhak2o9jIWJ76QgvdtwHIFFz17XDMkzdCaVm8thluLubvkh8cV5kPTksQeisw+Y4AJtVBSrqFsZ6CSTp530gEI5J1r1aNj+73oPH9U7afIfIVJg1JGe7LY4Dt9qGHVSTaZUNyXBLJm2zZcjnvRSTfw+0CR1Zci59QleQbCF76BW3eq1kb/F7BCG6Kq93945dOEO5NEdgrukAqcSacr4QudnLN1NKGGDEhxyXiD11sA3NFwr7xZjZ+TdhyLJi2T2cqT5fnI=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:LV8PR12MB9620.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(7416014)(366016)(1800799024);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?ZVNUa2N1ajRqaC8wZXRYRTRkdUpuSkJoUXFYSWcwT1dMUThaOXhiOFNtSHBJ?=
 =?utf-8?B?cmhVNUJzaFh6MEhVWGRiTWIvWWhCdjBzVXFySjYyYUpWSzRZL0Q1RU1tU0hT?=
 =?utf-8?B?Mkw2RHNmWDlMYnU4RXovRDBLZm1ReHJHSlUzZzkxdWUvUzNGZDgvd2hJVThk?=
 =?utf-8?B?TDVzb295ajVub0RkSEZmWjhZbXF2TFI4WkFlVHNYOEJmU1o5ZlNmSDd5V1Mr?=
 =?utf-8?B?bmk4MGRyUHcrR1hSdW9iU3pZMDBkVzkrYlFhcWxpcXZwVnB0UUtyRlZpUi95?=
 =?utf-8?B?YmwzZXBSZ2srU3p3eUwyOUM1RVNtR1cyV2o2bXNNMDg4aE03TDc2bFUxUU1j?=
 =?utf-8?B?VWZiVEtUZHdUdjVuTnRqeU5Kdi95UWJlMTVGdVpBdVFLdW9QbGQvMTRGQUpi?=
 =?utf-8?B?S0hCbU1Mc2xTOVpaV3VMaytBV21vR0JUa0VOTXJjTUhGdGljVUdnRFlVaUtl?=
 =?utf-8?B?QmlETHRjaHBwNno0ZUpOZzZ3N3c2dUlxWEJyekpJQWs2WElCaXF6Vmk2cGpl?=
 =?utf-8?B?Mi9CclBwN3JCQlVDaEF0OENNbWpOU0ZnYUhzeWZJQ3ZQTm9MRXRJcTZWYUQ1?=
 =?utf-8?B?R3BqTVlHZEhwWUppZjg4Vk1QN3BkUWZmcXVCTUIzbi9TbXVRRnJJOU5aZjBE?=
 =?utf-8?B?NlVlbTFsT1J5d0NFQ29KOUE5cEYzbGJCb0RldmZ3ZnhER0lrYStkTzgxY1Y3?=
 =?utf-8?B?aWJyd2krOEhOMDVCQnVPSjRWRWRrL0txWWVtekNnUTFmNUVzUHVweTNLOGQ2?=
 =?utf-8?B?Sno5R2NJNEZYVGhuYzQ2L2oxS2U1YloxZktiYkVmb1hRRVpjblpjaGdtVmFK?=
 =?utf-8?B?cnRiUlFnRzNyMHR5RVhnYy9oV3pPSjVKYTlVNmxjdHFiU3IyVHlaU1dRcVR0?=
 =?utf-8?B?R3ZKdlI3K3BuZDc0ODZDWkkxWWJTekZJay9lTGpSQ1dzODI5WHJnNjR3UG1D?=
 =?utf-8?B?aVVhV1Y0WE12SHdTa2lSYjl1YnE1bHZXS09DOVZLREdnTmN4dm9peUVPd2NG?=
 =?utf-8?B?Ni9EV3M2dHZ4N2xFdjV2L0RJc3h3TlhUeDJaanFhNUtEeWhPZ0p3N05TRnI2?=
 =?utf-8?B?UTBrNkZKTXl3bGlVQ3JtdFkycTJyM1FNWlJoY2Z5T2drV3BxVTNobkcyZjBR?=
 =?utf-8?B?RkRGblVEVHFIanErRTY4Sm5rTno5L2hSNTQ2NXV5eWR1UThIZEQ4OVZmZ2lP?=
 =?utf-8?B?UStLb1plUit1RzVqRTVlS3hqM0U0aVNYZHgrNnpSdVg3LzFia3psaElLV09x?=
 =?utf-8?B?QVlxdGxMb1gvLzNMUnNIcVNsUEJSZ0hvRDR2eWR0Ty9qVUhWUkFRbUdZbnpn?=
 =?utf-8?B?ZW55am1sT2FBQnRqQnZZNTVCZkJsY3pYNWhvVGd2VkdqU0xqVGNrTTZBSG5k?=
 =?utf-8?B?cU5QaHVDSHMwWks3WEJyRER4MlpaeEZSN2lXc3BzWW1jam9oZUhQRE12SWlm?=
 =?utf-8?B?OEEwWTV0YW9TNXlCTEhkTlo4elgzNStVMHNtS1kvQ2ZvOHh0M1FpODluV1Bh?=
 =?utf-8?B?YkZ3M0kyQklHQkVrbEtuUEI4WTErb2VTYitSaFE5UUdZQU5GYkZBTWQ0YWtF?=
 =?utf-8?B?Snk0U0htUTlTWVdRMUdyL2pTMnRFZ1R4QmtzSlQ5RFkzZSsyNWlFSXkvRVFX?=
 =?utf-8?B?bDVsU2tqNEM3bFgrQWJxNlZBTjlvSmM0dk00ODlLWWFCaDZra0pPMlhIMnIr?=
 =?utf-8?B?dC84V0JzNjNSUWtHNWE4UE1Kd1hQelFwREQ3KzJQRE5Dd2xidEt4VXBwOUd5?=
 =?utf-8?B?eGkzZFp6Q3M5eUQ3Vk4za0tsZ3ZlMmdPMlgxR2dVYk1KeWxXMUppS2ZZRFY5?=
 =?utf-8?B?bkNTcFhZelgzSW5LWEJ5MFlvT2VEczdaclgvUC8yRW5YMC9OWE9HRUd3SlJr?=
 =?utf-8?B?Y0ZRUnhDUFhzeFV0NWtTcXR6NG5oM2NGc09XYVROM2ZQeGk3T2twb0p4TGtZ?=
 =?utf-8?B?NjErRDVqQ0w2ZUZoK01zdVNHaytGVjAvUHE0WmJqQXMwMGVzRC9Ib01KL2Fw?=
 =?utf-8?B?TTZOVW9SallwdzZOUHozb082bHkxWlZ4ODNsZnVDL2Z4U2JldHlOS2FYOWxr?=
 =?utf-8?B?T1dXamNlQmdxS1BxZmRtTG5iblg1OHRzMmlxSXg3SFdTNGkybVp4WWYrb05U?=
 =?utf-8?B?eXNKeEpvRkx2MGlxMzQyc3ZJYXZ5WDI1MURCUWJhZGdKU2p1dXJaOVZXcU1P?=
 =?utf-8?B?d2l3cTQwMHhuYjZ3d2dQekRMbzE2VTl6aWJ6djFnTzB5dmtoTXlqRlQzWS92?=
 =?utf-8?B?RmhPblZRSHBLYnlvWE9ZRzVJN2o0ZzhKMXRhVCthSVRKYnNRbTNuWXZ2MzU0?=
 =?utf-8?B?NzJYak9GWjBKeFBUanJCczlDanJSbkQ4QU9wcElkRUJjVXRzOVUxdz09?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: af37b064-b963-4a50-8bb1-08de76392180
X-MS-Exchange-CrossTenant-AuthSource: LV8PR12MB9620.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Feb 2026 19:48:08.2867
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: aEqhnJqwJ0JXd/dQdR6+tPA9Yp/hEjDb/rxkwTO3BkbfxrNiskH8G9KQfAvr4uZC
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR12MB7791
X-Spamd-Bar: ------
Message-ID-Hash: KSTWCTN7MV7LHCRX6G7U34RLONGFMXZN
X-Message-ID-Hash: KSTWCTN7MV7LHCRX6G7U34RLONGFMXZN
X-MailFrom: jgg@nvidia.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, Alex Williamson <alex@shazbot.org>, Leon Romanovsky <leon@kernel.org>, Alex Mastro <amastro@fb.com>, Mahmoud Adam <mngyadam@amazon.de>, David Matlack <dmatlack@google.com>, =?utf-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Kevin Tian <kevin.tian@intel.com>, Ankit Agrawal <ankita@nvidia.com>, Pranjal Shrivastava <praan@google.com>, Alistair Popple <apopple@nvidia.com>, Vivek Kasireddy <vivek.kasireddy@intel.com>, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, kvm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC PATCH 3/7] vfio/pci: Support mmap() of a DMABUF
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/KSTWCTN7MV7LHCRX6G7U34RLONGFMXZN/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [3.59 / 15.00];
	DMARC_POLICY_REJECT(2.00)[nvidia.com : SPF not aligned (relaxed),reject];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_DKIM_REJECT(1.00)[Nvidia.com:s=selector2];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[19];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	FROM_NEQ_ENVFROM(0.00)[jgg@nvidia.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[Nvidia.com:-];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nvidia.com:mid,linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: 5F46A1BD105
X-Rspamd-Action: no action

T24gRnJpLCBGZWIgMjcsIDIwMjYgYXQgMDc6NDI6MDhQTSArMDAwMCwgTWF0dCBFdmFucyB3cm90
ZToNCj4gSGkgSmFzb24gKyBDaHJpc3RpYW4sDQo+IA0KPiBPbiAyNy8wMi8yMDI2IDEyOjUxLCBK
YXNvbiBHdW50aG9ycGUgd3JvdGU6DQo+ID4gT24gRnJpLCBGZWIgMjcsIDIwMjYgYXQgMTE6MDk6
MzFBTSArMDEwMCwgQ2hyaXN0aWFuIEvDtm5pZyB3cm90ZToNCj4gPiANCj4gPj4gV2hlbiBhIERN
QS1idWYganVzdCByZXByZXNlbnRzIGEgbGluZWFyIHBpZWNlIG9mIEJBUiB3aGljaCBpcw0KPiA+
PiBtYXAtYWJsZSB0aHJvdWdoIHRoZSBWRklPIEZEIGFueXdheSB0aGVuIHRoZSByaWdodCBhcHBy
b2FjaCBpcyB0bw0KPiA+PiBqdXN0IHJlLWRpcmVjdCB0aGUgbWFwcGluZyB0byB0aGlzIFZGSU8g
RkQuDQo+IA0KPiBXZSB0aGluayBsaW1pdGluZyB0aGlzIHRvIG9uZSByYW5nZSBwZXIgRE1BQlVG
IGlzbid0IGVub3VnaCwNCj4gaS5lLiBzdXBwb3J0aW5nIG11bHRpcGxlIHJhbmdlcyB3aWxsIGJl
IGEgYmVuZWZpdC4NCj4gDQo+IEJ1bXBpbmcgdm1fcGdvZmYgdG8gdGhlbiByZXVzZSB2ZmlvX3Bj
aV9tbWFwX29wcyBpcyBhIHJlYWxseSBuaWNlDQo+IHN1Z2dlc3Rpb24gZm9yIHRoZSBzaW1wbGVz
dCBjYXNlLCBidXQgY2FuJ3Qgc3VwcG9ydCBtdWx0aXBsZSByYW5nZXM7DQo+IHRoZSAuZmF1bHQo
KSBuZWVkcyB0byBiZSBhd2FyZSBvZiB0aGUgbm9uLWxpbmVhciBETUFCVUYgbGF5b3V0Lg0KDQpT
aWdoLCB5ZXMgdGhhdCdzIHJpZ2h0IHdlIGhhdmUgdGhlIG5vbi1saW5lYXIgdGhpbmcsIGFuZCBp
ZiB5b3UgbmVlZA0KdGhhdCB0byB3b3JrIGl0IGNhbid0IHVzZSB0aGUgZXhpc3RpbmcgY29kZS4N
Cg0KPiA+IEkgYWN0dWFsbHkgd291bGQgbGlrZSB0byBnbyB0aGUgb3RoZXIgd2F5IGFuZCBoYXZl
IFZGSU8gYWx3YXlzIGhhdmUgYQ0KPiA+IERNQUJVRiB1bmRlciB0aGUgVk1BJ3MgaXQgbW1hcHMg
YmVjYXVzZSB0aGF0IHdpbGwgbWFrZSBpdCBlYXN5IHRvDQo+ID4gZmluaXNoIHRoZSB0eXBlMSBl
bXVsYXRpb24gd2hpY2ggcmVxdWlyZXMgZmluZGluZyBkbWFidWZzIGZvciB0aGUNCj4gPiBWTUFz
Lg0KDQpUaGlzIGlzIGEgc3RpbGwgYmV0dGVyIGlkZWEgc2luY2UgaXQgYXZvaWQgZHVwbGljYXRp
bmcgdGhlIFZNQSBmbG93DQppbnRvIHR3byBwYXJ0cy4uDQoNCj4gUHV0dGluZyBhc2lkZSB0aGUg
YWJvdmUgcG9pbnQgb2YgbmVlZGluZyBhIG5ldyAuZmF1bHQoKSBhYmxlIHRvIGZpbmQgYQ0KPiBQ
Rk4gZm9yID4xIHJhbmdlIGZvciBhIG1vLCBob3cgd291bGQgdGhlIHRlc3Qgb2YgdGhlIHJldm9r
ZWQgZmxhZyB3b3JrDQo+IHcuci50LiBzeW5jaHJvbmlzYXRpb24gYW5kIHByb3RlY3RpbmcgYWdh
aW5zdCBhIHJhY2luZyByZXZva2U/ICBJdCdzIG5vdA0KPiBzYWZlIHRvIHRha2UgbWVtb3J5X2xv
Y2ssIHRlc3QgcmV2b2tlZCwgdW5sb2NrLCB0aGVuIGhhbmQgb3ZlciB0byB0aGUNCj4gZXhpc3Rp
bmcgdmZpb19wY2lfbW1hcF8qZmF1bHQoKSAtLSB3aGljaCByZS10YWtlcyB0aGUgbG9jay4gIEkn
bSBub3QNCj4gcXVpdGUgc2VlaW5nIGhvdyB3ZSBjb3VsZCByZXVzZSB0aGUgZXhpc3RpbmcgdmZp
b19wY2lfbW1hcF8qZmF1bHQoKSwNCj4gVEJILiAgSSBkaWQgYnJpZWZseSBjb25zaWRlciByZWZh
Y3RvcmluZyB0aGF0IGV4aXN0aW5nIC5mYXVsdCgpIGNvZGUsDQo+IGJ1dCB0aGF0IG1ha2VzIGJv
dGggcGF0aHMgdWdsaWVyLg0KDQpNb3JlIHJlYXNvbnMgdG8gZG8gdGhlIGFib3ZlLi4NCg0KPiA+
IFBvc3NpYmx5IGZvciB0aGlzIHVzZSBjYXNlIHlvdSBjYW4ga2VlcCB0aGF0IGFuZCBkbyBhIGds
b2JhbCB1bm1hcCBhbmQNCj4gPiByZWx5IG9uIGZhdWx0IHRvIHJlc3RvcmUgdGhlIG1tYXBzIHRo
YXQgd2VyZSBub3QgcmV2b2tlZC4NCj4gDQo+IEhtLCB0aGF0J2QgYmUgZnVuY3Rpb25hbCwgYnV0
IHdlIHNob3VsZCBjb25zaWRlciBodWdlIEJBUnMgd2l0aCBhIGxvdCBvZg0KPiBQVEVzIChldmVu
IGh1Z2Ugb25lcyk7IHphcHBpbmcgYWxsIEJBUnMgbWlnaHQgbm90aWNlYWJseSBkaXN0dXJiIG90
aGVyDQo+IGNsaWVudHMuICBCdXQgc2VlIG15IHF1ZXJ5IGJlbG93IHBsZWFzZSwgaWYgd2UgY291
bGQgemFwIGp1c3QgdGhlDQo+IHJlc291cmNlIGJlaW5nIHJlY2xhaW1lZCB0aGF0IHdvdWxkIGJl
IHByZWZlcmFibGUuDQoNCkh1cm0uIE90aGVyd2lzZSB5b3UgaGF2ZSB0byBjcmVhdGUgYSBidW5j
aCBvZiBhZGRyZXNzIHNwYWNlcyBhbmQNCmp1Z2dsZSB0aGVtLg0KDQo+ID4+IE90aGVyd2lzZSBm
dW5jdGlvbnMgbGlrZSB2ZmlvX3BjaV96YXBfYmFycygpIGRvZXNuJ3Qgd29yayBjb3JyZWN0bHkg
DQo+ID4+IGFueSBtb3JlIGFuZCB0aGF0IHVzdWFsbHkgY3JlYXRlcyBhIGh1Z2UgYnVuY2ggb2Yg
cHJvYmxlbXMuDQo+IA0KPiBJJ2QgcmVhc29uZWQgaXQgd2FzIE9LIGZvciB0aGUgRE1BQlVGIHRv
IGhhdmUgaXRzIG93biB1bmlxdWUgYWRkcmVzcw0KPiBzcGFjZSAtLSBldmVuIHRob3VnaCBJSVVD
IHRoYXQgbWVhbnMgYW4gdW5tYXBfbWFwcGluZ19yYW5nZSgpIGJ5DQo+IHZmaW9fcGNpX2NvcmVf
ZGV2aWNlIHdvbid0IGFmZmVjdCBhIERNQUJVRidzIG1hcHBpbmdzIC0tIGJlY2F1c2UNCj4gYW55
dGhpbmcgdGhhdCBuZWVkcyB0byB6YXAgYSBCQVIgX2Fsc29fIG11c3QgYWxyZWFkeSBwbGFuIHRv
IG5vdGlmeQ0KPiBETUFCVUYgaW1wb3J0ZXJzIHZpYSB2ZmlvX3BjaV9kbWFfYnVmX21vdmUoKS4g
IEFuZCB0aGVuLA0KPiB2ZmlvX3BjaV9kbWFfYnVmX21vdmUoKSB3aWxsIHphcCB0aGUgbWFwcGlu
Z3MuDQoNClRoYXQgbWlnaHQgYmUgY29ycmVjdCwgYnV0IGlmIHRoZW4gaXQgaXMgeWV0IGFub3Ro
ZXIgcmVhc29uIHRvIGRvIHRoZQ0KZmlyc3QgcG9pbnQgYW5kIHJlbW92ZSB0aGUgc2hhcmVkIGFk
ZHJlc3Nfc3BhY2UgZnVsbHkuDQoNCkJhc2ljYWxseSBvbmUgbW1hcCBmbG93IHRoYXQgYWx3YXlz
IHVzZXMgZG1hLWJ1ZiBhbmQgYWx3YXlzIHVzZXMgYQ0KcGVyLWRtYS1idWYgYWRkcmVzcyBzcGFj
ZSB3aXRoIGEgcGVyLUZEIHJldm9rZSBhbmQgc28gb24gYW5kIHNvIGZvcnRoLg0KDQpUaGlzIHdh
eSB0aGVyZSBpcyBzdGlsbCBvbmUgb2YgZXZlcnl0aGluZywgd2UganVzdCBwYXkgYSBiaXQgb2Yg
Y29zdA0KdG8gYXV0b21hdGljYWxseSBjcmVhdGUgYSBkbWFidWYgZmlsZSAqIGluIHRoZSBleGlz
dGluZyBwYXRoLg0KDQo+IEFyZSB0aGVyZSBwYXRocyB0aGF0IF9kb24ndF8gYWx3YXlzIHBhaXIg
dmZpb19wY2lfemFwX2JhcnMoKSB3aXRoIGENCj4gdmZpb19wY2lfZG1hX2J1Zl9tb3ZlKCk/DQoN
ClRoZXJlIHNob3VsZCBub3QgYmUuDQoNCkphc29uDQpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5h
cm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0
byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
