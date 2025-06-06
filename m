Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 059AAAD01DC
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  6 Jun 2025 14:09:37 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 06F2E447EC
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  6 Jun 2025 12:09:36 +0000 (UTC)
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (mail-bn8nam04on2067.outbound.protection.outlook.com [40.107.100.67])
	by lists.linaro.org (Postfix) with ESMTPS id 5BF8844137
	for <linaro-mm-sig@lists.linaro.org>; Fri,  6 Jun 2025 12:09:23 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=Nvidia.com header.s=selector2 header.b=NnXfVkE4;
	spf=pass (lists.linaro.org: domain of jgg@nvidia.com designates 40.107.100.67 as permitted sender) smtp.mailfrom=jgg@nvidia.com;
	dmarc=pass (policy=reject) header.from=nvidia.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=DNAX0P0W7fOnry6PlT9ffgOHb1gLQ7EExKOG3qmxCEHJUI9/qJxCSVUhAnLuKOOB5EERINIWKEu50XmZNVyr6buZNqra4QfhfchSbbbQoFdeIjAR+9uBbGa26U9TB6ZN335vsg+nCSt9h47S/3pwSSqCdZ5cIdvO5YPhYP2+c29yRrA3RUI1d/ZMH1zxBX0qo/AwCXX5IT4LTkHdpcqLUVDadv0k7lpyXrjO4g7DObH051zsIn11q/GtzmipC2wD10xUVq2Bb8xOWr5zwiPY7vCgwQqL+NzBQkvBF4vP5daQxEki+q8Im9HJ4kDfsgchjeGG3tPOaSvCYRxM1Etzvw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=N3vajKJzTltQ5QgU3O/kpupizQuA+grCCB+TaVPS2gM=;
 b=EIUdHdrhZPI+er2DOKULb+y1VQWl5CrN1KDNuGUqFedGp95T6y8Ve7gxgzW8OWswgOYBfsv3dwk8fgrUXLkNl+NWsQQ6qv9mfBtrqfadjAcVfCsPrZihZWWGJhHz1MHQQFvk5Ahuner4iy9tSJwsJuMXVQtxXZxEX4uouapJjUfwTSLNlvcDAbU7jGQrCzVuLzK0oHW4zOzZ6mATGhSCCQx90of+61H+ZYAd+Lustqz4PWa+53/4wVQqNVdaTu05gY5WjPXTMJJ6pYQak7WgV26aW+kO26bS1V6r/eg9SBSVsiQNoiiLHvVc2qxPHdwz9Q+qan6e6l6fi34pphDcXw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=N3vajKJzTltQ5QgU3O/kpupizQuA+grCCB+TaVPS2gM=;
 b=NnXfVkE45jiEco5vgLUlgldbxDxZwqzjARarQSbeByMnmCUXbEdkCS4b2vO2epmm8/HA872rx1ZsOAmtFQOroMTI2OWQ3eCsVnAvwKVQo6Rp1T6kqxTdxmP0f4TZeTf14B0A12QV+CQfdBLYTkqw+S+ZnhJyBWs1AJxZ4fPuJhQsUCU16lmqnk9CBIMC8DLNoO39EhZgPiyjlvp/gKTqZR4BsqNBoKJjWZ1hI12HV2IMHQWI6YHN23mbij8rXIGNeEXqj++eGDeB8XHnEe1r0PAluCd9eb5fXGzmbei5MWURJK+W/GCesZTjMLmL1NMRFmuzRhCjGiF/TdNG9D3ENg==
Received: from CH3PR12MB8659.namprd12.prod.outlook.com (2603:10b6:610:17c::13)
 by DM4PR12MB5939.namprd12.prod.outlook.com (2603:10b6:8:6a::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8792.38; Fri, 6 Jun
 2025 12:09:20 +0000
Received: from CH3PR12MB8659.namprd12.prod.outlook.com
 ([fe80::6eb6:7d37:7b4b:1732]) by CH3PR12MB8659.namprd12.prod.outlook.com
 ([fe80::6eb6:7d37:7b4b:1732%6]) with mapi id 15.20.8792.038; Fri, 6 Jun 2025
 12:09:20 +0000
Date: Fri, 6 Jun 2025 09:09:19 -0300
From: Jason Gunthorpe <jgg@nvidia.com>
To: "Aneesh Kumar K.V" <aneesh.kumar@kernel.org>
Message-ID: <20250606120919.GH19710@nvidia.com>
References: <20250529053513.1592088-1-yilun.xu@linux.intel.com>
 <20250529053513.1592088-20-yilun.xu@linux.intel.com>
 <yq5ah60u8kev.fsf@kernel.org>
 <20250605151029.GC19710@nvidia.com>
 <yq5a7c1q88oy.fsf@kernel.org>
 <20250605163339.GE19710@nvidia.com>
 <yq5a1prx8bb2.fsf@kernel.org>
Content-Disposition: inline
In-Reply-To: <yq5a1prx8bb2.fsf@kernel.org>
X-ClientProxiedBy: YT4PR01CA0262.CANPRD01.PROD.OUTLOOK.COM
 (2603:10b6:b01:10f::26) To CH3PR12MB8659.namprd12.prod.outlook.com
 (2603:10b6:610:17c::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH3PR12MB8659:EE_|DM4PR12MB5939:EE_
X-MS-Office365-Filtering-Correlation-Id: 61e6fef9-f8ee-4289-2a00-08dda4f2f7cb
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|7416014|376014|1800799024;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?MmJocU9oVDE3eloyMXg4TFRMTWJnRkM2VmV6N0FtTEZCQkswRThCZEtldGxD?=
 =?utf-8?B?SUk1RjlobmFVMnlneXljNEg1YjJ5eHRFSElBMTJFa2JlTnBLcVEzK1dyVmEz?=
 =?utf-8?B?Ymhab0JPMXNFZ29MdUN0RVVGUGlGWGZpVjVmQkNURXZuWmVqVzhTcXNaelRn?=
 =?utf-8?B?bExCOGFxMXhOR2xmWU03NU9ERmtXSjVxYVpvb2xpUWdoSzE3K3dudlpjaXNT?=
 =?utf-8?B?RGxocmtWRzJzOFBOQjF5V0Z1RzBJQ0ZTQkJkdERtT0FnT2tYcWl0TWRBWnJJ?=
 =?utf-8?B?c1hKbVRETzliLzFnTnErekEzU1hXQ3RaaXA4R1c0SkpZdkR1cHVTdGFqdG5w?=
 =?utf-8?B?d1lCbTVCTkJhOElxR0F5MjM4c2J4RzRHN2wvUk82VzZTaGhIZ1FVcHBhS2M4?=
 =?utf-8?B?VzZRRHNwTXpoTDBYY3BBejhabEduN0JHL3pSTVhZWDFGNDFWZGg5S3ZUOGt0?=
 =?utf-8?B?RysybGROMGh2VHdSMUpxdGJZWERNczlreGN3dTVWK09SbUkwYlZWYWtBNVB0?=
 =?utf-8?B?dmtWRzRPZXhuSlJ1TTljZmFHV2d4Z2ZWMGF1V1ZuYU1GbnhFWG1hL0wzZFFN?=
 =?utf-8?B?M0F5eVpZYTN0NGNMTGt1eGJDMGRaRDhVQUVCaExSOFNhVS81RitEcW5CR09X?=
 =?utf-8?B?TnR6S1RLVVQrMHhLaURiK2RZZGdqZ1BHalRTZUNXNFptRUtLaGRJZ3c2dXBl?=
 =?utf-8?B?VXo3VTNwY293MG5vQ2VocXo2UEUrWjhWb2k0QldINFdUMk90NlVxUUtpemg3?=
 =?utf-8?B?SkJFamdoQVBFNUlTT3h6U2FvWTFiUU5lMmZpc2V6T1ArdzRhWUxPeG50Tmsv?=
 =?utf-8?B?QUVPa05XbmY3cWZiRGI3V29DVjNvcWIrZ3d0LzU3dTJRTUJ4VFFFRjBUSTda?=
 =?utf-8?B?QWVuUStUZTFzQnlNbzRyamJZbkZNQkxiQ2dTTElrOVJPL0l0ejRJb09WeWND?=
 =?utf-8?B?bjJZQVM4TnB5Q0pvQWg5R0ZxTlFDSWlsYW9FNjlLbVJNMFpNVzB3WWlyaVN4?=
 =?utf-8?B?TExPNHkzN0RjdHgrRy9FcnZGTWcydXRSTTduYUhSN3k2anhoNG1oN1d5Ylpj?=
 =?utf-8?B?ZTBkMHZIT0FIN0x4UDZDUFdtLzROajRaTHJ3bE9lS3hBZnZjR1NvWkQ1Szkv?=
 =?utf-8?B?TlFKUWM1WGhwY3MvcERYdG5nZ0srWEt3cUpIZ2gyMG5BUEF2c2JyWC9vMENL?=
 =?utf-8?B?T0ZsRVpEK1FxSkdhV2V2MFNIN0c3d3dGeDl6TTF3WE9WKytueWM0eHRtUkY0?=
 =?utf-8?B?QnVWNmM4eFJkaDkrVi95Q3IvcTVmbDZFS3h2MEw4Sjc2WFY1Yk43bThXcmti?=
 =?utf-8?B?K3Y5dTZVSlQzU2xFMVlvUGttYzJTYUFEbzVRTXV1MWxkRWk2VXRKMXpQb0Q3?=
 =?utf-8?B?dnYycEE0cjFTd0Rvalo1Slhjak1zcVVFQTRWZHRLdzRubkFsWFdDUWdBbkkw?=
 =?utf-8?B?dXJVdmxrR0VhVmkwYTl0cktqa2RSUnVqSGorVUxnRGZxSHYvdnNDODBsYlo0?=
 =?utf-8?B?NEIrNkQxV0V6b0ZqNGRMYlVRVHVsbFpiZTFqRm1lRlJzMzNwWkdpRkhDb1BY?=
 =?utf-8?B?RVd0R09xRW4wQWxpd3Y2WWJnUEFYVXNMbXpDV2xybFhpQm0xR211VXJCaFpa?=
 =?utf-8?B?dWRUTGNXaFRNYU9sSXFnckl4ZmRpS2xDYllzR1pjZHh2Mjh5cFJ0ZjdKelN1?=
 =?utf-8?B?VzIvcmUvSnFVS2VVZzhsK2lST0w4cWNKQzZsNk1Vb0RDNnluOGxncEd5a09v?=
 =?utf-8?B?TXNjeHZUNGVLcUtnQzF0RmhjVHdHNTE0Nk5QVktQRU1hK0lQcFhqME9SalVO?=
 =?utf-8?B?cURYTENBOC9lWjVRQVFteE1xL3luMzZ0ZGJXeGVzSnhnZHZEeks5Y01ZeEtM?=
 =?utf-8?B?cEdBNmkyQzBLNk5RRHBCbnpZZVZqWEVkNEF6T09HVE9WeDkyVFRXSHNvNEVs?=
 =?utf-8?Q?RvbPuwxiQbs=3D?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CH3PR12MB8659.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(7416014)(376014)(1800799024);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?VDI3Q1VBM1ViK0Y1RHdoVEpDa3g5ZGtPeTVha25IVmhPSmhBUFlDdjN2WHhm?=
 =?utf-8?B?eW9TTVlRcjZpSERoYjY1YW5EQXppZ1RlajdtYzRtY2c5dlFOSkk2WXpWMkF3?=
 =?utf-8?B?NElhM0RVU0J2cEs2aEh0WCs4S2txL1VsWGZTbTAwZjMzTnJ5SVJpWGMxcVQv?=
 =?utf-8?B?TDBiQTlpdnYwOW1FT25xYVZXcGJMRHpmajYxbEdpU1FzdGladVJVTXhDVlVk?=
 =?utf-8?B?akVjNHRTeDNBdTNNdVFVamdJYjk4QVVwY01aSFcwNk9DOHlmUG9lR3RjcDlV?=
 =?utf-8?B?eldGZ0tFa1lWbDVFTHFaVXJFbTZ2bzZMaThDQTBPM1ZFTXNtQXozYURQOGxI?=
 =?utf-8?B?VTA2L1pqMkNVY3pWMjJBTVNKRVVSMXVmeW0xb3lIYmVEMG54SURpU2tVNkhD?=
 =?utf-8?B?NUowZDZJTUpQaXJzZDIrNUh2bHVTVlVhVHVBanU2QktYdDVOd2JTNTRibG1B?=
 =?utf-8?B?LzE1NFhnU29kY0JhY2ZBcVN1OTR0UU1wNmx2M2g2ZWtPZUpPQ3Byd3h6U1NL?=
 =?utf-8?B?UGZ2RW9vTVp6ZjRCbk12UE42Y0pZZkxOdS9ibGY3My9OMEgyMzdGNHZpUS9i?=
 =?utf-8?B?WCtIaEpvbU5kKzAzSGdHWFJkRzlOVWRjaDF3RGI2RFpGUVA5czlEWkxaeHJl?=
 =?utf-8?B?V2lubnhSWlVvR2c3bjVLYmM3U0JQYUZNTWY5akU1eER2QXFJQU5UQXNBSTV1?=
 =?utf-8?B?US9PYk0xN1JPQXRnVGo2SXZXMWJMMksxLy85d1RmSjc2KzR1b3F3SmxpbSts?=
 =?utf-8?B?Sll3UnZPVzVOSktmSEZzNXdmM3RhNGV5VmhQampHL2V0WTl2Qzd3RkRDR1VW?=
 =?utf-8?B?YnRxOEM0SzBWcHMvN0pWZ2xFdllSQzFqdkJzOFpya3FsQzFSdVlUWHFHbUxQ?=
 =?utf-8?B?dXNmRnNIb0lDVXlJb2R3TWxSdnh0TjIwUFlHWjNwTTlKV0xyVUYxcGtCYVNa?=
 =?utf-8?B?Vlp0cEFBVzkvT0M5MVVHMXk0Slg2dkYrZ3BXMi8wMzUvYVNTMXR6Zy9hNy9n?=
 =?utf-8?B?eVV1bGlWbXV3U1JwY0hmTEFOUDU0LzM1OXEwUVhta3dhVDJLUFUvYlJmbjRI?=
 =?utf-8?B?N0tBVFZhZ05laG1MWUZIR25sbFRQYklwdGhTTFF5YWNyL1gvdVBqOUg1QXRw?=
 =?utf-8?B?OUNrbEsvNUxZY2FtbjNMOWVxS0Q4TG1GdEJQMitPV04vbjF3VURmUFNqbUhK?=
 =?utf-8?B?bGgzTDBpQUludVY1TGZPUnk1amoxNDZ4WFRqc2RnMTRGY3F0NkpVc3VnODNL?=
 =?utf-8?B?VG5LbVRjNEsvc2R0cGgwYmNRNTNlNVM4dSt5cEFkMDhVMnVsK3cyK1lDbTdr?=
 =?utf-8?B?dHNuYjNUdXF5dGpTUjQxUk4wZHpYTy9SanhHL1J3ZWZ2RGZPbzV6RzkwQmhs?=
 =?utf-8?B?R01HOGxrd0FDSUh5T2hwY29yNkVUZmY0YWRZTFdjOG5DZ2xhVEtjM09iRkZy?=
 =?utf-8?B?NUJrMGlwQ081U3F0Z0tvR1FIYVZLNlhuME8zSlZJWUtIZ2J6bVFkbEZwcUVX?=
 =?utf-8?B?S2xnd3JTNTR3ME9HeVN4QUVzb2E5VVRaVTVudlVJTXdOY0hmTXV2ZEJ1N0Fn?=
 =?utf-8?B?eXZEdm44RDRxd0xTSHFKU3lOZHJVUkVBbjdpaStxTVVsbTd6Wkp2blB2enli?=
 =?utf-8?B?Qkd5a2ZucUxMNjJUbXIxTG5oNjZOK0F3R1dqUVZsNktVVjlCV1ZuMG01c0l3?=
 =?utf-8?B?dVhXVk9BTnFDVDlLa0U1WlNKcW0wZVYySnBsRVNDZ29QMzFhT2x0UnAvM2hG?=
 =?utf-8?B?RVViek90UGlSdXFVVXZsSVRuVUxRTTc1TmdKbFN3OWRtcW1PaVI0WnZMMjI3?=
 =?utf-8?B?b2M4RUY5UW16OHp1WUNpakZCTHdMNGVDLzFOaDc0TC93ZlJFV1hYZzkrRG5a?=
 =?utf-8?B?Y3RkbVdmRThRRVJrNGNLZzF6bERnajdBd1JHV29QNnlCVFcwWXBDeWx6VWVC?=
 =?utf-8?B?YjN5UWYrYS9ORFd2VVZCL2NyUG8zNUY1YWlCcktBdXowRi9GZ29RRnNya1p5?=
 =?utf-8?B?UktpTEVvR1FpVFNCTm8rRUltMUlkQWtLQTh4dlVJRFpRTTBHUzg2clhpZWti?=
 =?utf-8?B?TWY4K1ZkWUcrQjU0dURST2VnanR0d2lUcm16RWtyUXBlWFMyQnpibmlJTWEy?=
 =?utf-8?Q?MXVfLK7ldzpLMsANUdIQvzUqF?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 61e6fef9-f8ee-4289-2a00-08dda4f2f7cb
X-MS-Exchange-CrossTenant-AuthSource: CH3PR12MB8659.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Jun 2025 12:09:20.4491
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: AEywOH8tCuw6hGedYoC6SP5tQZM2Inu6b5WsJrLSP3+gVpVC/TGu9ZJOAg1LK4N6
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR12MB5939
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Spamd-Result: default: False [-5.00 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[nvidia.com,reject];
	R_DKIM_ALLOW(-0.20)[Nvidia.com:s=selector2];
	R_SPF_ALLOW(-0.20)[+ip4:40.107.0.0/16];
	MIME_GOOD(-0.10)[text/plain];
	RCPT_COUNT_TWELVE(0.00)[30];
	MIME_TRACE(0.00)[0:+];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:8075, ipnet:40.104.0.0/14, country:US];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.107.100.67:from];
	DWL_DNSWL_BLOCKED(0.00)[Nvidia.com:dkim];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	DNSWL_BLOCKED(0.00)[2603:10b6:610:17c::13:received,40.107.100.67:from];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[Nvidia.com:+]
X-Rspamd-Queue-Id: 5BF8844137
X-Spamd-Bar: ----
Message-ID-Hash: A5JPMKHRMYI2RMUZY3V4XESKZDG3GX2D
X-Message-ID-Hash: A5JPMKHRMYI2RMUZY3V4XESKZDG3GX2D
X-MailFrom: jgg@nvidia.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Xu Yilun <yilun.xu@linux.intel.com>, kvm@vger.kernel.org, sumit.semwal@linaro.org, christian.koenig@amd.com, pbonzini@redhat.com, seanjc@google.com, alex.williamson@redhat.com, dan.j.williams@intel.com, aik@amd.com, linux-coco@lists.linux.dev, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, vivek.kasireddy@intel.com, yilun.xu@intel.com, linux-kernel@vger.kernel.org, lukas@wunner.de, yan.y.zhao@intel.com, leon@kernel.org, baolu.lu@linux.intel.com, zhenzhong.duan@intel.com, tao1.su@intel.com, linux-pci@vger.kernel.org, zhiw@nvidia.com, simona.vetter@ffwll.ch, shameerali.kolothum.thodi@huawei.com, iommu@lists.linux.dev, kevin.tian@intel.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC PATCH 19/30] vfio/pci: Add TSM TDI bind/unbind IOCTLs for TEE-IO support
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/A5JPMKHRMYI2RMUZY3V4XESKZDG3GX2D/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gRnJpLCBKdW4gMDYsIDIwMjUgYXQgMDM6MDI6NDlQTSArMDUzMCwgQW5lZXNoIEt1bWFyIEsu
ViB3cm90ZToNCj4gSmFzb24gR3VudGhvcnBlIDxqZ2dAbnZpZGlhLmNvbT4gd3JpdGVzOg0KPiAN
Cj4gPiBPbiBUaHUsIEp1biAwNSwgMjAyNSBhdCAwOTo0NzowMVBNICswNTMwLCBBbmVlc2ggS3Vt
YXIgSy5WIHdyb3RlOg0KPiA+PiBKYXNvbiBHdW50aG9ycGUgPGpnZ0BudmlkaWEuY29tPiB3cml0
ZXM6DQo+ID4+IA0KPiA+PiA+IE9uIFRodSwgSnVuIDA1LCAyMDI1IGF0IDA1OjMzOjUyUE0gKzA1
MzAsIEFuZWVzaCBLdW1hciBLLlYgd3JvdGU6DQo+ID4+ID4NCj4gPj4gPj4gPiArDQo+ID4+ID4+
ID4gKwkvKiBUbyBlbnN1cmUgbm8gaG9zdCBzaWRlIE1NSU8gYWNjZXNzIGlzIHBvc3NpYmxlICov
DQo+ID4+ID4+ID4gKwlyZXQgPSBwY2lfcmVxdWVzdF9yZWdpb25zX2V4Y2x1c2l2ZShwZGV2LCAi
dmZpby1wY2ktdHNtIik7DQo+ID4+ID4+ID4gKwlpZiAocmV0KQ0KPiA+PiA+PiA+ICsJCWdvdG8g
b3V0X3VubG9jazsNCj4gPj4gPj4gPiArDQo+ID4+ID4+ID4NCj4gPj4gPj4gDQo+ID4+ID4+IEkg
YW0gaGl0dGluZyBmYWlsdXJlcyBoZXJlIHdpdGggc2ltaWxhciBjaGFuZ2VzLiBDYW4geW91IHNo
YXJlIHRoZSBRZW11DQo+ID4+ID4+IGNoYW5nZXMgbmVlZGVkIHRvIG1ha2UgdGhpcyBwY2lfcmVx
dWVzdF9yZWdpb25zX2V4Y2x1c2l2ZSBzdWNjZXNzZnVsLg0KPiA+PiA+PiBBbHNvIGFmdGVyIHRo
ZSBUREkgaXMgdW5ib3VuZCwgd2Ugd2FudCB0aGUgcmVnaW9uIG93bmVyc2hpcCBiYWNrdG8NCj4g
Pj4gPj4gInZmaW8tcGNpIiBzbyB0aGF0IHRoaW5ncyBjb250aW51ZSB0byB3b3JrIGFzIG5vbi1z
ZWN1cmUgZGV2aWNlLiBJIGRvbid0DQo+ID4+ID4+IHNlZSB3ZSBkb2luZyB0aGF0LiBJIGNvdWxk
IGFkZCBhIHBjaV9iYXJfZGVhY3RpdmF0ZS9wY2lfYmFyX2FjdGl2YXRlIGluDQo+ID4+ID4+IHVz
ZXJzcGFjZSB3aGljaCB3aWxsIHJlc3VsdCBpbiB2ZmlvX3VubWFwKCkvdmZpb19tYXAoKS4gQnV0
IHRoYXQgZG9lc24ndA0KPiA+PiA+PiByZWxlYXNlIHRoZSByZWdpb24gb3duZXJzaGlwLg0KPiA+
PiA+DQo+ID4+ID4gQWdhaW4sIElNSE8sIHdlIHNob3VsZCBub3QgYmUgZG9pbmcgdGhpcyBkeW5h
bWljYWxseS4gVkZJTyBzaG91bGQgZG8NCj4gPj4gPiBwY2lfcmVxdWVzdF9yZWdpb25zX2V4Y2x1
c2l2ZSgpIG9uY2UgYXQgdGhlIHZlcnkgc3RhcnQgYW5kIGl0IHNob3VsZA0KPiA+PiA+IHN0YXkg
dGhhdCB3YXkuDQo+ID4+ID4NCj4gPj4gPiBUaGVyZSBpcyBubyByZWFzb24gdG8gY2hhbmdlIGl0
IGR5bmFtaWNhbGx5Lg0KPiA+PiA+DQo+ID4+ID4gVGhlIG9ubHkgZGVjaXNpb24gdG8gbWFrZSBp
cyBpZiBhbGwgdmZpbyBzaG91bGQgc3dpdGNoIHRvIGV4Y2x1c2l2ZQ0KPiA+PiA+IG1vZGUgb3Ig
aWYgd2UgbmVlZCB0byBtYWtlIGl0IG9wdGlvbmFsIGZvciB1c2Vyc3BhY2UuDQo+ID4+IA0KPiA+
PiBXZSBvbmx5IG5lZWQgdGhlIGV4Y2x1c2l2ZSBtb2RlIHdoZW4gdGhlIGRldmljZSBpcyBvcGVy
YXRpbmcgaW4gc2VjdXJlDQo+ID4+IG1vZGUsIGNvcnJlY3Q/IFRoYXQgc3VnZ2VzdHMgd2XigJls
bCBuZWVkIHRvIGR5bmFtaWNhbGx5IHRvZ2dsZSB0aGlzDQo+ID4+IHNldHRpbmcgYmFzZWQgb24g
dGhlIGRldmljZeKAmXMgc2VjdXJpdHkgc3RhdGUuDQo+ID4NCj4gPiBObywgaWYgdGhlIGRlY2lz
aW9uIGlzIHRoYXQgVkZJTyBzaG91bGQgYWxsb3cgdGhpcyB0byBiZSBjb250cm9sbGVkIGJ5DQo+
ID4gdXNlcnNwYWNlIHRoZW4gdXNlcnNwYWNlIHdpbGwgdGVsbCBpb21tdWZkIHRvIHJ1biBpbiBy
ZWdpb25zX2V4Y2x1c2l2ZQ0KPiA+IG1vZGUgcHJpb3IgdG8gb3BlbmluZyB0aGUgdmZpbyBjZGV2
IGFuZCBWRklPIHdpbGwgc3RpbGwgZG8gaXQgb25jZSBhdA0KPiA+IG9wZW4gdGltZSBhbmQgbmV2
ZXIgY2hhbmdlIGl0Lg0KPiANCj4gU28gdGhpcyB3aWxsIGJlIGhhbmRsZWQgYnkgc2V0dGluZw0K
PiB2ZGV2aWNlOjpmbGFncyA9IElPTU1VRkRfUENJX1JFR0lPTl9FWENMVVNJVkUgaW4NCg0KTm90
IGxpa2UgdGhhdC4uIEkgd291bGQgc3VnZ2VzdCBhIGdsb2JhbCB2ZmlvIHN5c2ZzIG9yIG1vZHVs
ZSBwYXJhbWV0ZXIsIG9yDQptYXliZSBhIGlvbW11ZmQgaWN0eCBnbG9iYWwgb3B0aW9uOg0KDQog
SU9NTVVfT1BUSU9OKElPTU1VX09QVElPTl9PUF9TRVQsIElPTU1VX09QVElPTl9FWENMVVNJVkVf
UkFOR0VTKQ0KDQpZb3Ugd2FudCBzb21ldGhpbmcgc2ltcGxlIGhlcmUsIG5vdCB0aWVkIHRvIHZk
ZXZpY2Ugb3IgdmVyeSBkeW5hbWljLg0KDQpUaGUgdXNlIGNhc2VzIGZvciBub24tZXhjbHVzaXZl
IHJhbmdlcyBhcmUgdmVyeSBuYXJyb3csIElNSE8NCg0KPiBhbmQgdmZpb19wY2lfY29yZV9tbWFw
KCkgd2lsbCBkbw0KPiANCj4gCWlmICghdmRldi0+YmFybWFwW2luZGV4XSkgew0KPiANCj4gCQlp
ZiAoY29yZV92ZGV2LT5pb21tdWZkX2RldmljZSAmJg0KPiAJCSAgICBpb21tdWZkX3ZkZXZpY2Vf
cmVnaW9uX2V4Y2x1c2l2ZShjb3JlX3ZkZXYtPmlvbW11ZmRfZGV2aWNlKSkNCj4gCQkJcmV0ID0g
cGNpX3JlcXVlc3Rfc2VsZWN0ZWRfcmVnaW9uc19leGNsdXNpdmUocGRldiwNCj4gCQkJCQkJCTEg
PDwgaW5kZXgsICJ2ZmlvLXBjaSIpOw0KPiAJCWVsc2UNCj4gCQkJcmV0ID0gcGNpX3JlcXVlc3Rf
c2VsZWN0ZWRfcmVnaW9ucyhwZGV2LA0KPiAJCQkJCQkxIDw8IGluZGV4LCAidmZpby1wY2kiKTsN
Cg0KQW5kIElNSE8sIHRoZXNlIHNob3VsZCBiZSBtb3ZlZCB0byBwcm9iZSB0aW1lIG9yIGF0IGxl
YXN0IEZEIG9wZW4NCnRpbWUsIG5vdCBhdCBtbWFwIHRpbWUuLi4NCg0KSmFzb24NCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFp
bGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmli
ZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
