Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id INlWFKne3GnrXgkAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 13 Apr 2026 14:16:41 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id A088D3EBC85
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 13 Apr 2026 14:16:40 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 37614402AE
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 13 Apr 2026 12:16:39 +0000 (UTC)
Received: from PH7PR06CU001.outbound.protection.outlook.com (mail-westus3azon11010003.outbound.protection.outlook.com [52.101.201.3])
	by lists.linaro.org (Postfix) with ESMTPS id AB5BD402AE
	for <linaro-mm-sig@lists.linaro.org>; Mon, 13 Apr 2026 12:16:35 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=Nvidia.com header.s=selector2 header.b=dZoKXTQT;
	dmarc=pass (policy=reject) header.from=nvidia.com;
	spf=pass (lists.linaro.org: domain of jgg@nvidia.com designates 52.101.201.3 as permitted sender) smtp.mailfrom=jgg@nvidia.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ACZgV2Uv9Yc1JXWVl4BS9B7AxZ+Wrt9RMlHaL8sRGoplLez1A5SMBnR9HeY9h99cDMSuqcIWQZKvLQua1Wuk3CRJXgQyxAdhDwH0CDbr5h3yYqmwl5sGSr7P/A6+UnRef/FtsTnPivd0SOqXE1D1SCdV/2ndtyEvKoBjY2mph2vJWTGKMBQLmjgpQpFDsuefVcaDjLplUxtUKOTYXiCTpGWiFz7p6yNcgl6Q7IwcniaiyvkMIoERhrClgNnx/Y77m0ghGRZcgrmf1ztGO+dKKEqspPgI4V/JhbjRoD2r5IDCNMoay6EWRnvJFZMRsJzUBTjVhEfhLn80psRbK0R35g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hdHUw/MgWYNUNCCOBm9JlWeYgmR/ML6TGzDWrdEykDA=;
 b=T1lIm9BQQQbDtJlfMq+1QwsgLFyV9Fp+DvXht3E5bOWjWvHyfzJVqL8QDYmu26QmFw6Y1++XVIZbqcVuQT5jJhIZFwO3OtQ5r48ebimRxdd3A5Mb5yssmHLmBN5oeHUkPEPi7E8YpwvxsqvWGyLMHRgmiMZNo00G+itCGP3gtN3c8MNp3Zlncu/0pQmOJ9EfYb/kvcHBfgQqsmOxstp/N/+OavVAilc7Cka0X8jdO3Y/v0NS3xRMpYJGvDw0ueuu0FcQ3CahqLfS1wsC/o+kWgSV2OVF6PGAk9ZKAYx54jLhJbA24aSWpoTCKXR2DPbCzQZiZEC5yEvbhRH0DraC4g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hdHUw/MgWYNUNCCOBm9JlWeYgmR/ML6TGzDWrdEykDA=;
 b=dZoKXTQTLK5mcETYsyBTujTdQdB0379HF1nbc3QomnEXu7EY75j6C4D1TrtPeu2zzol4/nFMd32dCWOuGLEheS7SrpQ9u2bXC0lJQIxKdJfQ8EU5lnd8iLZjin/IQ+V+mFHMULPpCH2STBXSE7G0flaaWniVCl3DucDf91B48g3fHNSkkAcMB1eGAFx28ptgWvN1uBj1AVZ6zHpIS7/0I/PHVTw6vq/g6t0a/yRuM+aIowNbynR1/D7YYbkczml9bayyN1ueLJkpLi72Dryq1xmhrQ3XAjDfAyjwxikXRHkgpMf4qKH+4D9ls0NT5GAgKl8ocUnj5ygs3CZYThrBLQ==
Received: from LV8PR12MB9620.namprd12.prod.outlook.com (2603:10b6:408:2a1::19)
 by IA0PR12MB8303.namprd12.prod.outlook.com (2603:10b6:208:3de::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9818.20; Mon, 13 Apr
 2026 12:16:30 +0000
Received: from LV8PR12MB9620.namprd12.prod.outlook.com
 ([fe80::299d:f5e0:3550:1528]) by LV8PR12MB9620.namprd12.prod.outlook.com
 ([fe80::299d:f5e0:3550:1528%5]) with mapi id 15.20.9791.032; Mon, 13 Apr 2026
 12:16:29 +0000
Date: Mon, 13 Apr 2026 09:16:28 -0300
From: Jason Gunthorpe <jgg@nvidia.com>
To: Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>
Message-ID: <20260413121628.GE2588311@nvidia.com>
References: <21-v1-b5cab63049c0+191af-dmabuf_map_type_jgg@nvidia.com>
 <c413710b-4c28-4ed8-88ec-aeb8c4482011@amd.com>
Content-Disposition: inline
In-Reply-To: <c413710b-4c28-4ed8-88ec-aeb8c4482011@amd.com>
X-ClientProxiedBy: BL1PR13CA0405.namprd13.prod.outlook.com
 (2603:10b6:208:2c2::20) To LV8PR12MB9620.namprd12.prod.outlook.com
 (2603:10b6:408:2a1::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: LV8PR12MB9620:EE_|IA0PR12MB8303:EE_
X-MS-Office365-Filtering-Correlation-Id: 1d1b16ba-9831-4f73-c0ec-08de99567e32
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|376014|7416014|366016|1800799024|56012099003|18002099003|22082099003;
X-Microsoft-Antispam-Message-Info: 
	7iH8i+y1I7cP8Sz3pgxttrOhGVUSnhjWuRpf9frGffcR0pmvByv2BlaOK9k3HbvuevIrPMGSrgVnicB5DUN6YWGlkP/4+BwBZ/qcYeqdg/I0sh0GqAy7dTGJVmrD3VhtNCLk9dJ6adJFc/HHchMmZFnfqY1rd8Hl7R4//T5zABXaKwK/N+kcaVvYM2GASXXYRkm1vuUR0QqQyOPU9Pe+aHx8OK6EK6qlxi2EG6fuyH6EHLx2+eowLCVqFMPkiR6Z7I2iMXofkQNovjYb4TgQlJet/j+rpihVfHdx1FAn08UW3Id2iEyYP3sOXys9cpy5bD6fPXwD4UqlO1HXNc7K7A6nk3tC2s1RX7n0QeeVtxAU2NyLTC7brCTPHMn8moSJPXIj8UtXylefpzdnT9Bcl6o4ZWmAOukbiFLtCKMaVy/1pbBJva4KcWE7lu7ra9SFJ4qvLneLrdTO8tSYBhn3/DFD65LuDSQkOIA0AKngM6nUwqSU9AYNvzyJx0L+hbBLWm48C6/D3evNEDVTHT/R/heFTQ7b6R3rlj9Qe1R+SIwYxQzc+DlbxvsbP6SCDyz3WTUTBkGzqJdpT8VIZVJLosQ/+8wRpWbBf7pTzq8XTlUWmiX6Gej2hTMGTPhsjdF0m14ZNkD+gaOqyv2al814XiqhqrQNrBLi6fkrifcgWZFSXZ3T28WD8vENa7JpJ8skBk5B87CO0aE2q/dXavaEIXbdevhSE/7bxFJH7MCa6Lg=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:LV8PR12MB9620.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(7416014)(366016)(1800799024)(56012099003)(18002099003)(22082099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?WktLWmNaRzNQRDZHSGZyQ29qeHdqTnZMN21Cem5wZEV0Nk5PZWgvWHhUa0tI?=
 =?utf-8?B?c0c0cmdqb0RMR0pBNTdrNWxHcHBWN3hPeFErUWRvZmltbyt5T0tGS3N2bWNu?=
 =?utf-8?B?RE5NMkFBMXZ1eS9FOG0yd0ZtZHFzSXJRSmF2cjBDMEZJbEpuU3plV3BZL0FJ?=
 =?utf-8?B?SVRvSEIwTFhpc2FyVk5QZmtQb3ByMG1PSkhvOFFadE1UVXBWa1BqSnR0UmRP?=
 =?utf-8?B?V1hjN25tRWNTMUdsZVN6RDNXbkd0RWY1M2g5ZUJIbHFUVW5jcWdHRFQ4VVRj?=
 =?utf-8?B?TTdWcnZNMnFreXVMeHdZakZ1bHFlUW5BaE5EQzdoendEbEhkK2xQYlhuUEdy?=
 =?utf-8?B?MnJuSktiSEJDN093blpyamtIeWx4K0RZelFhaS93M2YrSzhlU3AzT2hJWE8z?=
 =?utf-8?B?Nk1sR0UzZ1pPZTZDWldjSGZZL0RFUW5pdDIwZ0wzNXFJSmV2eW04cFUrMlZ2?=
 =?utf-8?B?UVpPWE12MG9XVVZJcnJnWFBxMlpEbUhSM2tKSm02Y1hlQ0kwbFdQcGVwMjVG?=
 =?utf-8?B?SU1WQmE3OHZFb3JMcmdDQ0NGZWtPTWpUS09xV2pxVHNyanRGUzIvRnNlM3ZW?=
 =?utf-8?B?bzNHT0NRRWZGRWwrOUd1Z0JkcWRSQ2ZqUEJvZ2Ywc2dYQXVTNUJqS0N0MklU?=
 =?utf-8?B?SXJtOHIwZGZyL1lpT0tVL2dMQUM5ZVlYNU5BTU9VUjhVSVhDZUV2TS9VTlZx?=
 =?utf-8?B?aEk1VHJHQ0l2SzhqU1JkSC9XMXJCVzJCR0dVN0t2NkpQQTd3UDBRWDdLaFFG?=
 =?utf-8?B?cnVRMG0xQjNCb3NqMU5POGFJL0NaVXpsV00xcGlVY2M2ZVBEcUlCQWUyeU1B?=
 =?utf-8?B?dlZPdWlFNjV2T1VsRDlrY1FraGNsR2c2cVJQRzdhVnRPa3MxbkhPekJGSGFz?=
 =?utf-8?B?dmRVdk5aR3VVWloyWStPSFdkcEoxTzFhZ3FVaFRrWEZuT2lhQXR4b3ROcTQw?=
 =?utf-8?B?VnhiVEtCVnNyaEYxbDd1U3BmNjRVc1A2d3VzQnRCWVFOb3duNndXWHFpWExS?=
 =?utf-8?B?WnAySEtyNVh2YlFtUzVrRTN4NXpLbXZLRkc1c1dUUUM4NlJIV3hxR3dZTXA4?=
 =?utf-8?B?bTYxbk5ZTkErVkx3UUJPeVdldWhSUmZRZ0ljNWdKa2hZZFhSQTQyRVRna0ZM?=
 =?utf-8?B?UmZKSVZRdzFqVXVtanZoYjJ5Y0FwVHNxSTlpMlRKWHJPbHRHSW9YV2MvVnhY?=
 =?utf-8?B?M1JBbG00OWlhb29hNEtuOGV3Smh6Z0tlMC95cGNJcHJuYjFza3FFL09CbDJR?=
 =?utf-8?B?ekEvWUxZb1dsUmE3ZVVmSWxQZmxZMjZBUnpENVo0RnVFb3RVZ1pNUGRTS3k3?=
 =?utf-8?B?L2IrcjZhRkZoQm1VNUN1VkgzMlN3RFBKYVlXdGFGOGFwRUpSdE85SDhVZ2hZ?=
 =?utf-8?B?TWNTT0xNd09BaWNUWG9iRStkZytXOUkzd1M3MzRZbk43ZmFhN3RLNEdZUFZR?=
 =?utf-8?B?YVRubHpQUFh0dGx4cTlHRTQ4OHduWlc3Q0xSL1ZPMi9DZTV6YnBjOVp5NTJY?=
 =?utf-8?B?aHk5OTBlUjVXbEdWMnhZYkR6dmdQVUI5RkNJSm5CWkttOWFDSmcrOWJzWFN4?=
 =?utf-8?B?WEowWlc2VWVmZ1JFZ0RXNWgyZFFnOFZpbWJPb2FOYjh5QjNvN3VLS1dsYThk?=
 =?utf-8?B?QmJQVVBncmVYN3dNQ0o5ZFluZFFRbGVYKzJUdXFJOUNXSVZLVGlmUUVDbHIx?=
 =?utf-8?B?U2ZGaEgzclE1YXF2enh6eHRhTFNKYTlkOVk3RW9CaGJmcjlSR0NUQ0M3WGxs?=
 =?utf-8?B?b1Evc1d1ZStwY2FWMEFmeXVoNTEzcVNEN0N1eVdyajFJQ3BSbUxtMFp6M2FV?=
 =?utf-8?B?WU5KNG9qUVJVYnpITnF6UEZFaG9kUFVLcERXcDRrU082cEY1UFZBRnRiU2pq?=
 =?utf-8?B?eFNLaGZxQXo1VnBSaTBKLzdnelV0Ui9hQlIzc1ZXUEpsbm1TYms4NzVhM042?=
 =?utf-8?B?T0dmY2F1aXdnY1NpWVRIWTZVSTBRRVFJR2g3WU5MWFI3VUZYR0hXZXlJYmVn?=
 =?utf-8?B?LysxRHhhNTFyM3grL0lUVFQxV0cwdWx3clhoaEM2WFZPNTVLTlBGeGt5VVQz?=
 =?utf-8?B?T1g2azFFMHhpU0ZpT0lIWnI4ZGFZVTFpRmRFRGpHU08wU01DUTJpbEMveE1J?=
 =?utf-8?B?SDMvZlRyczBXcHVCMHRPUlgzYmlPQytjWWhzY05xNnV4bWcwQTFoMFR0UjBk?=
 =?utf-8?B?QmVITWhMZFQwZXlpYjYyakE1WDk2VHEvQUpsOUE5emNSb0Y4QStxMzIvWEhP?=
 =?utf-8?B?VkQ3NlB0emFLbVU0cUdVSWZuYkdHMmlLVnJZdHpuRExhR3NkQVZtWkJxbkE4?=
 =?utf-8?Q?/J8WxBXm1k2c7Isc8b?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1d1b16ba-9831-4f73-c0ec-08de99567e32
X-MS-Exchange-CrossTenant-AuthSource: LV8PR12MB9620.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Apr 2026 12:16:29.8941
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: eAqU402pXdFr0TA0RI4GQ8XvjOxj/uMiKDTl11kuJmCrxtPQwADWSY5m5sfJLIM2
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR12MB8303
X-Spamd-Bar: ----
Message-ID-Hash: NMIRXZ72PAVQECYEDPL2SNFLUHRFMZTU
X-Message-ID-Hash: NMIRXZ72PAVQECYEDPL2SNFLUHRFMZTU
X-MailFrom: jgg@nvidia.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: dri-devel@lists.freedesktop.org, intel-xe@lists.freedesktop.org, iommu@lists.linux.dev, Kevin Tian <kevin.tian@intel.com>, Leon Romanovsky <leonro@nvidia.com>, linaro-mm-sig@lists.linaro.org, linux-media@vger.kernel.org, Matthew Brost <matthew.brost@intel.com>, Simona Vetter <simona.vetter@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, Thomas Hellstrom <thomas.hellstrom@linux.intel.com>, Vivek Kasireddy <vivek.kasireddy@intel.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH RFC 21/26] dma-buf: Add the Physical Address List DMA mapping type
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/NMIRXZ72PAVQECYEDPL2SNFLUHRFMZTU/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
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
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.985];
	FROM_NEQ_ENVFROM(0.00)[jgg@nvidia.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[Nvidia.com:-];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nvidia.com:mid,linaro.org:email]
X-Rspamd-Queue-Id: A088D3EBC85
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gTW9uLCBBcHIgMTMsIDIwMjYgYXQgMTA6NTg6MjBBTSArMDIwMCwgQ2hyaXN0aWFuIEvDtm5p
ZyB3cm90ZToNCj4gT24gMi8xOC8yNiAwMToxMSwgSmFzb24gR3VudGhvcnBlIHdyb3RlOg0KPiA+
IFRoaXMgdHlwZSBpcyByZXF1aXJlZCBieSBpb21tdWZkIGFuZCBrdm0gYXMgZG1hYnVmIGltcG9y
dGVycy4NCj4gPiANCj4gPiBEdWUgdG8gc2Vuc2l0aXZpdHkgYWJvdXQgYWJ1c2luZyBwaHlzaWNh
bCBhZGRyZXNzZXMsIHJlc3RyaWN0IGltcG9ydGVycyBieQ0KPiA+IHVzaW5nIEVYUE9SVF9TWU1C
T0xfRk9SX01PRFVMRVMoKS4gT25seSBpb21tdWZkIGNhbiBpbXBsZW1lbnQgYW4gaW1wb3J0ZXIs
DQo+ID4gdGhlIGtlcm5lbCBtb2R1bGUgbG9hZGVyIHdpbGwgZW5mb3JjZSB0aGlzLg0KPiA+IA0K
PiA+IEFsbG93IGFueXRoaW5nIHRvIGltcGxlbWVudCBhbiBleHBvcnRlciBhcyB0aGVyZSBhcmUg
dXNlIGNhc2VzIGluDQo+ID4gRFBESy9TUERLIHRvIGNvbm5lY3QgR1BVIG1lbW9yeSBpbnRvIFZG
SU8vaW9tbXVmZCBhbmQgaXQgaXMgaGFyZCB0byBhYnVzZQ0KPiA+IHRoZSBBUEkgYXMgYW4gZXhw
b3J0ZXIuDQo+ID4gDQo+ID4gVGhlIHBoeXNpY2FsIGFkZHJlc3MgbGlzdCBleHBvcnRlciByZXR1
cm5zIGEgcGh5c2ljYWwgYWRkcmVzcyBsaXN0IGluIGENCj4gPiBzaW1wbGUga3ZhbGxvYydkIGFy
cmF5IG9mIHN0cnVjdCBwaHlzX3ZlYy4NCj4gDQo+IEFzIGZhciBhcyBJIGNhbiBzZWUgdGhhdCBp
cyBzdGlsbCBhIHByZXR0eSBiaWcgTk8tR08uDQo+IA0KPiBXZSBoYXZlIHNlZW4gc28gbWFueSBw
cm9ibGVtcyB3aXRoIGRpcmVjdCBwaHlzaWNhbCBhZGRyZXNzIGFjY2VzcyBieQ0KPiB0aGUgaW1w
b3J0ZXIgdGhhdCBJIGNsZWFyIGRvbid0IHdhbnQgdG8gcmVwZWF0IHRoYXQgcGVyZm9ybWFuY2Uu
DQoNCllvdSd2ZSBzYWlkLCB0aGlzIGlzIHdoeSBJIHVzZWQgdGhlIEVYUE9SVF9TWU1CT0xfRk9S
X01PRFVMRVMoKSAtDQppb21tdWZkIGRvZXMgbm90IGhhdmUgYW55IHByb2JsZW1zIHRvIHVzZSB0
aGlzIGNvcnJlY3RseS4NCg0KV2h5IGlzIHRoYXQgbm90IGdvb2QgZW5vdWdoPyBBcyBJIHVuZGVy
c3RhbmQgaXQgeW91ciBvYmplY3Rpb24gaXNuJ3QNCnRoYXQgdGhlcmUgaXMgYSB0ZWNobmljYWwg
aXNzdWUgd2l0aCBpb21tdWZkJ3MgaW1wbGVtZW50YXRpb24gaXQgaXMNCnRoYXQgc29tZSBvdGhl
ciBkcml2ZXIgY291bGQgaW1wb3J0IHBoeXMsIGRvIGl0IHdyb25nIGFuZCBtYWtlIGENCm1lc3Mu
IEkgdGhpbmsgRVhQT1JUX1NZTUJPTF9GT1JfTU9EVUxFUygpIGZ1bGx5IGFkZHJlc3NlcyB0aGlz
LCBubz8NCg0KVGhlIG9ubHkgcGFzdCBwcm9ibGVtcyB5b3UndmUgcmFpc2VkIHdlcmUgcmVsYXRl
ZCB0byBpbXByb3Blcmx5IHVzaW5nDQpWTUFzLCB0aGF0IGlzbid0IGhhcHBlbmluZyBoZXJlLg0K
DQo+IE15IG1haW4gcXVlc3Rpb24gaXMgd2h5IGRvZXMgSU9NTVVGRCBuZWVkIHRoZSBwaHlzaWNh
bCBhZGRyZXNzIGluDQo+IHRoZSBmaXJzdCBwbGFjZT8NCg0KQ1BVIGlvbW11IGh3IG9ubHkgd29y
a3MgaW4gcGh5c2ljYWwgYWRkcmVzcy4NCg0KPiBJZiB0aGF0IGlzIHJlYWxseSBzdHJpY3RseSBu
ZWNlc3NhcnkgdGhlbiBJIHN0cm9uZ2x5IHN1Z2dlc3QgdG8gbm90DQo+IHRvdWNoIGRyaXZlcnMv
ZG1hLWJ1ZiBpbiBhbnkgd2F5LCBidXQgb25seSBkbyB0aGlzIGlzIHByaXZhdGUNCj4gaW50ZXJm
YWNlIGJldHdlZW4gaW9tbXVmZCBhbmQgS1ZNLg0KDQpUaGlzIGlzbid0IGJldHdlZW4gaW9tbXVm
ZCBhbmQga3ZtLiBJZiBpdCB3YXMganVzdCB0aGF0IHdlJ2QgcHJvYmFibHkNCmJlIGFibGUgdG8g
a2VlcCBnb2luZyB3aXRoIHRoZSBwcml2YXRlIHBhdGggbGlrZSBWRklPL2lvbW11ZmQgYWxyZWFk
eQ0KaGFzLg0KDQpUaGUgdHdvIHBhdGhzIHdlIGFyZSBpbnRlcmVzdGVkIGluOg0KDQoxKSBWRklP
IHRvIEtWTQ0KICAgQWxsb3cgS1ZNIHRvIGltcG9ydCBhIEZEIGluc3RlYWQgb2YgdXNpbmcgYSBW
TUEgbGlrZSBpb21tdWZkIG5vdyBjYW4uDQoyKSBHUFUgYW5kIFJETUEgZHJpdmVycyB0byBJT01N
VUZEDQogICBTdXBwb3J0IFNQREsgYW5kIERQREsgdHlwZSB1c2Vyc3BhY2UgZHJpdmVycyB0byB3
b3JrIHdpdGggR1BVIG1lbW9yeQ0KICAgVGhpcyBpcyBiZWNvbWluZyBhIHBvcHVsYXIgdG9waWMN
Cg0KSmFzb24NCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJv
Lm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVA
bGlzdHMubGluYXJvLm9yZwo=
