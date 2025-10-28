Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EC1EC1503E
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 28 Oct 2025 14:59:26 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0E5483F7B8
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 28 Oct 2025 13:59:25 +0000 (UTC)
Received: from CY7PR03CU001.outbound.protection.outlook.com (mail-westcentralusazon11010040.outbound.protection.outlook.com [40.93.198.40])
	by lists.linaro.org (Postfix) with ESMTPS id 10DAA3F683
	for <linaro-mm-sig@lists.linaro.org>; Tue, 28 Oct 2025 13:59:11 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=WWyxexrW;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1");
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.93.198.40 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=LslehMp9OOWi2FQ2P22I1Xk9H5TO0pzvMcH6vm5lOwx1tbyF1ZA5j9+oXJ8G0a3dQaOGZoUi/6J/IkEYrNPc6g5sGfu6cERTYl0dpPgM8F1b/IrjHy2UYo+qO9+EnXJ5U82PQikk4jiSvAIMH/vwMZTO7eSJXRyCS5Tyf05g8RTrNlJd8EiMD+NWd7yhw8Zte+kUjHbM8pfHokRPilj5octCUsp2mqv7sGUXlsW5v02lrMnUgy+CMzgnjJC81Cbyw7qGaDu1nOW79TGZTR0zkl43OTTbLR3C09GY/Z/OySIksLl86tuUSBzE5bg1rHtUqebp/KyJyySyBn1voL4OWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6Rd2Gno2NwHM3qO6D0XF0R4JwBU6Ha+Lh+hA87Eg3GA=;
 b=iON3Ch7ZvcIiKU7+6FvjPux31SlibUMFH0r/qVRBpnB2RhofvbruKSKwLUGjOuxirr1lR37r5L3YGv+Iiwng+KDfxaFUiyv+ggjlQpxVQ9TbeE+q7XdRwWGE9IbTT6iAGQ80e793KRFkLHusDWN99VkoYP40xK6hGANZjYqgOLHW6fyBD5W0VHYIiGijDKxSCPPRU68e41A6yDlx0iqW03a8dm/CMMUTob2cxRw6uR4+kEfQihHCyYSJDrSUpCJtBmF9lSge/zI+orIRtLz0nnH/yW9sotXJxUsnDhBV23fMtv3DqXi5wT/9GEEO9MPvPEGr4YALl5ONHU4rOCabBA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6Rd2Gno2NwHM3qO6D0XF0R4JwBU6Ha+Lh+hA87Eg3GA=;
 b=WWyxexrW0NONmw259XQC1QDN7JyjEJk/PCI8Qc9x7NIrLyndJ6LTz9E1sUfjJ+l83zxfqizEjLyeH+8I8mA9GcrdJTNnO0R5QqntAXJNEPKBIk7bOOoTz4VKE1KJxZg9dOfjQx2ivhAMVbbA7cy+UALVxREPkhFR8MmTyWpu9qo=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by BN5PR12MB9511.namprd12.prod.outlook.com (2603:10b6:408:2a9::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9253.19; Tue, 28 Oct
 2025 13:59:04 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5%4]) with mapi id 15.20.9253.017; Tue, 28 Oct 2025
 13:59:04 +0000
Message-ID: <61c5edcb-2b22-4583-9138-c117bea7a9b3@amd.com>
Date: Tue, 28 Oct 2025 14:58:57 +0100
User-Agent: Mozilla Thunderbird
To: Vivek Kasireddy <vivek.kasireddy@intel.com>,
 dri-devel@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
References: <20251014071243.811884-1-vivek.kasireddy@intel.com>
 <20251014071243.811884-2-vivek.kasireddy@intel.com>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <20251014071243.811884-2-vivek.kasireddy@intel.com>
X-ClientProxiedBy: BN9PR03CA0640.namprd03.prod.outlook.com
 (2603:10b6:408:13b::15) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|BN5PR12MB9511:EE_
X-MS-Office365-Filtering-Correlation-Id: 1352b08f-4efe-4d92-1ac9-08de162a2776
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014|7053199007;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?V2xSTWlrN3JxZWQyM0RtblE4QnNreU9BVmY3Y1hzdHQ3bW5xY0Zwd1hBc1Jr?=
 =?utf-8?B?aXhsM0RWcjNRZ2JGTDkrbkxnRlI4d2R1MytVZzVUTFp5dS9lTmZucHVyVWFh?=
 =?utf-8?B?ZmFDTDM3MFFoRVJQbVJjazRYYkhZVmhoRjBaakVhT1Y0d3djUkRHblZEWHJB?=
 =?utf-8?B?S1VoN21RTWJhZldjaGJVYzF5TXRYcWt4OG9JSkh2bDZDOHpXR2g2dlk4T1Fj?=
 =?utf-8?B?KzBna1FTa1V0Y3NQajNobGtGcy9pM0NBS0d4dFVrMVQ5c0RLZzRJd0UxSGVO?=
 =?utf-8?B?TkVZSEF1eGZ4cVlKN2txdDB2NHNTNWVCd3JPdGhLbTVZYlNDQjM4b3N1QlR6?=
 =?utf-8?B?V1VDbTVGZHJYV3gvMzdmRDFpUldva3F5R0xsUmphd2kzaXpnVmM5aDhjV3JY?=
 =?utf-8?B?Wk0xNldsemRmTHU1RkM4WEJ1V3A2SmdNVjlYcW1mU3JMYk1qUVBHM3JpQzRR?=
 =?utf-8?B?WDZqbFFQUUFRdmlVNHk5Qm9MR3UvakwwMEZzYmtxYzFxTHVEZGwwcEpzc3FT?=
 =?utf-8?B?cGIyTzRMVmRYS25MeExtcWtOcHBrNStveks5NGtRZkpGeU42bEFMQmJINm1L?=
 =?utf-8?B?VTFJRkdmQ25Sek5pa0hiYmNjcmU4QjdIUHBwY3pVZUVUdkV4YzMvOVJuSzlN?=
 =?utf-8?B?UG5zWmFZS0txUi9NcGlNZnZFTjUyS1pjYUJJcFcvVFVtZVlDd0lPUmdab292?=
 =?utf-8?B?ckRlZFFyWkovT0NnQ2Nud1RDUGNqdnR2MTk4dHpNMFlaUDJVK2dBcXA5eVI0?=
 =?utf-8?B?ckJQVlYvS2syQkNJbEN4dXF2T2RaSkUxWGFWQXhucS9NR1kyQW5lUVhsR3pV?=
 =?utf-8?B?czZUZk5FRWlIOXFEU2dmSENMSlQ1MTUvNzljQ3NhWWhidEdZdnNiZE1KTzd4?=
 =?utf-8?B?b25idGxZM0Ntb2lweXNWZWxldDVNVCt2NC92SFgzK2tGYmU1YTltOStWYW13?=
 =?utf-8?B?YWQwRm5kbHdRdHEwTEQ5T3FQSWJ4MTBpdTVZTDIxZGs1ZmhkQjl6MTNpMVU3?=
 =?utf-8?B?N2tCYWtoVEwyYnhZUkx3emNSVjBSMXdOaGxNc2tGK3RxOFZ3TDJmQk9weEpK?=
 =?utf-8?B?WHlHaUtVanZwblNqREI5ZVlpa2dlalVFMWhRclBpTVdUTmN0cDdUTHhjbldG?=
 =?utf-8?B?OXFaWjR6U3VHTzEyWDZuUHc1WTJqMHNpV0hsTzRXMUtSVm1KQTFzb215Z1Nn?=
 =?utf-8?B?Nzhmb3pRVDU1ZkJEdmFZZTBydWZXbGlFNS91OFFqWUFVRkJXekxEM3NqL1Fu?=
 =?utf-8?B?KzBLcWgySktOdEFtY2llN3BDWTIrNUViV1VMTUk5aVNwWUE3OFdsYVNjTTdD?=
 =?utf-8?B?RUlPK0pRMkFMdFZaQ0ZuRCtFb2EzdU9kT0YzTmVYczhxVHJLbEw5cWxGak54?=
 =?utf-8?B?K1NEcnZ0cW1oTXJobVJVdzI0aHdUSFhIVEhRcTZrMENXUWRKQkRFbVl6RXla?=
 =?utf-8?B?MzF4dW51V1JmZVQvZVQxZGtPMmxnSjh3TG9Wb0Y0dHBseVBVVjAzbXh0WjY0?=
 =?utf-8?B?UHBubldLUkUxZEpaTDlDTHVHVGdBaFhPVnV3VjVacUZLTkxzRTMveS9oYnpP?=
 =?utf-8?B?SXoxMTBGbE9Vak51QzllSFFxLzdwNWN6Y0pGNHBGOUFqWXcvTzR5VEhJdlBN?=
 =?utf-8?B?SS81OTk4d1BBZmQxK2k4MkRHWUEvZFNZTk83UDMwaHkxblFIbGExOHgza3Vu?=
 =?utf-8?B?MmE2MGg3ZExDU0N1NUN3T0dOSUQ0TWIrd3o5a1lCOFlnZ3VtRDZGbmNjOVI4?=
 =?utf-8?B?SFpQMjZlZlVpcXBtaHNhSmhyd2Zzb0FLMzhpdFFJZ3V2TEFPQnZvUnlscTZV?=
 =?utf-8?B?L1V0T3FRZytlTlV2Y2FudEduKy82bjJBRU4vbkdXVlNCY3YwRTdGYmhESzJj?=
 =?utf-8?B?Z01BdnFCeFphS0xMWFNpWk0xb2pxSS8zQ2pYekxiN1I4Y0RScjFzWGVTNDBl?=
 =?utf-8?Q?wnaKZStPjKa4eaOa3ERODGQShVD9uQo5?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(376014)(7053199007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?MnNOMzFaYVdjSk1rdmpQT1dqbUxCV3lXWGFubVRUcWF0TnFOWkFGTVIyM2tE?=
 =?utf-8?B?ajc3Y2NIaDlzOWw4bFdyVkxsTzM2a2xWZ1ltT0x2ci8reTV3L2NoUkFmZ1py?=
 =?utf-8?B?bHV0czRuMUNIdFZDRExuMWtabExkZHg4QzYyVUtZZnkxdlY4UXhjRHcyNWVU?=
 =?utf-8?B?SmJlcUxlKzl5QXhYUUpMWDBhd25UVytNdC9iY2lIWDU1MXZ5dHk5Q3dOM0ty?=
 =?utf-8?B?ZUF5OGRSUnNuVSsvK21nNVlTeEhDTnprRDh4bUl3ZnFvQkI3Wkh1dCtENU5M?=
 =?utf-8?B?UFNzeGZoTEt0dEs5QlN2cUpkWi8rY0k5TndsNzBKc294OTZVUjlNRFgrc2NH?=
 =?utf-8?B?KzEyY0hocnhDdlpSWU80WlY2MmZxR1BaTlZnVHRTV1VIemFhZ3JxaEpnZjkx?=
 =?utf-8?B?VjcrQWJveEtDbEZtUGw5bWVoRzhnN09jTU1QUHRQNjV0MjJKOXpLK0JZeGRC?=
 =?utf-8?B?L1pIbnJ6R05QazgzeXorVjVYQmF2VzR2em96UlpscGZuSldsaGRwcEpzOWRm?=
 =?utf-8?B?dnA1QytNaW9Ea0x6TEZpRGRRa0M2djBkemNnTlYyQjNrYmtXdFhlT1d2Z1Qy?=
 =?utf-8?B?VEVKQlJlcGsxSk5kMEQxaUpUMzZVMXJ3WDF6Nm5vek1aL0lXdUtORlVCTFdN?=
 =?utf-8?B?VHVIRzM2R3F5RkhLdGdCTEp5eWFOelozTk5LV3NLcUlIMWV0TUhQTENqRitM?=
 =?utf-8?B?Vk01S0R4VmtONUtyYlpsdnFpSW5TQndtQ0FBeDNXRFFVMk82UXNhRVR0TGhS?=
 =?utf-8?B?V0txSUtmdXVmTnhNY01ma2dYTHVWRlQ4a3NJenFRaENVQjFGN0tpTUY4Zk1l?=
 =?utf-8?B?b0d3YjlZRWk5M3VLVVR2Y1JpUy9McmhpUEY3akJqdk9GaWZ5L3RsNEZjdEtn?=
 =?utf-8?B?RmVZOEhaV1hGd3hEeHBYR3FUY1NQbWYwQ09KNHRwYitSemNVMVQrZlhublVE?=
 =?utf-8?B?QloyQjEzcDI0dmpzdHhtMUlUVGxjTjNkZEluRGdGWlZueTBEeVNXQjJvVllo?=
 =?utf-8?B?bDE5emRJRE9RZ3FHNlJFM1l5N0hTWTN4ZnN1TkVFMm1naFdidEpCUDh4c3Ir?=
 =?utf-8?B?dWQybEFIcGh1RzZtL2FBQ3kzTnp0S3k1TisxY0ZUMjVsRXIwVUs0S0ViNGo3?=
 =?utf-8?B?c3d1YlZFZnhKb25MOW15TFFmd3BnNmFnVFU1VTJWNDBhOTlZZjZqVmZtUlhE?=
 =?utf-8?B?dmdyN0JsRmZINVpXYXZGeDBGeXUrQzl2cUhxTFJnMmozaVJVRWZwVkQzMmxD?=
 =?utf-8?B?ZXRVVW9TcDd4Yy9GTThvd0ZxYVZXZVpxdFhQVHNMc1QzR3lzbVBEV3JPQTNm?=
 =?utf-8?B?WmdSTlM2RzYyUC9CQnNUTjFUMjNQVWg0bndjVXNHRldyV0xGS0JnRVpIZFdz?=
 =?utf-8?B?U1N5V0ttc2RXTFE3ZUJiTXFubXE0cWVMWG5aQkd1NC92Tm5yTVltVXdTNE5O?=
 =?utf-8?B?b0JjdzNFQ0tBdDQwWGRiRy9iNUJyelZqUGgxbU5WQXJLYnEvbW03SEt1TGVV?=
 =?utf-8?B?RnZJVEtWKzJCaytGdGV5by9VS2tsWFNqOWgxZVVaYlIxdWpjNC9iMVJ5ZDJE?=
 =?utf-8?B?WnNZaExnRWgzM0crTDFBV0tTQ3RzcEloL2ZGVWdaRG5tWHFJS2dXeWRKekR0?=
 =?utf-8?B?Q3VQMksyL3NueHZGRXZhcUdFMUY4eWFyeXV4TmhUOUlLcjQ5ODBycEphb2tD?=
 =?utf-8?B?bTFUd0JiNDlyY1RmVmgzV09XS3prdUx6MWI3L3QvR20xSnl1U3FOWHkzcFcv?=
 =?utf-8?B?QjBTeElYU1FFRDJHb0lRNkhHNjZWaGVuWEc0R0c0M0w4WmxrVHE2enZybHIr?=
 =?utf-8?B?Ym42blJ5d1BiR2IzWm4xeWllYVVYMGsvdHQwWUtjdk9hYmtTRGFRa2RsZEh4?=
 =?utf-8?B?dUY4VUhXZ1ZFMmFQWUxnMUZFd0FnRzdOd1l0ZnVaMkx1cjNmQ2JwWGE0MGY2?=
 =?utf-8?B?K0RhMDJxWHhNSVMwZEpGSGl2RUJWRldubnRwZHM2a0c5Qk0rd0NIeFpUZmtn?=
 =?utf-8?B?bTU5L0tlVlEvZ09RcW9HdTI5UnNMVTcwRktLUjk0VzVjSmhxZWttWE5na3VZ?=
 =?utf-8?B?RDR6NmxkODVFQmp3SC8rVFJxUXVweWVXRWdnNGhpWjEyajJIQVdDN1RIVjRt?=
 =?utf-8?Q?igwg2Hl8+4d16ABAuAIyn/pBW?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1352b08f-4efe-4d92-1ac9-08de162a2776
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Oct 2025 13:59:04.1795
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Kg3DVKegoVcey6UDSeiZfFPHXf4HjzALbx27nvjvuR6ZPfuZd2lTh3U5xVeEitEe
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN5PR12MB9511
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 10DAA3F683
X-Spamd-Bar: -----
X-Spamd-Result: default: False [-5.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:40.92.0.0/15];
	MIME_GOOD(-0.10)[text/plain];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:8075, ipnet:40.80.0.0/12, country:US];
	DWL_DNSWL_BLOCKED(0.00)[amd.com:dkim];
	RCPT_COUNT_SEVEN(0.00)[9];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.93.198.40:from];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	URIBL_BLOCKED(0.00)[linaro.org:email,CY7PR03CU001.outbound.protection.outlook.com:helo,ffwll.ch:email];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	DNSWL_BLOCKED(0.00)[40.93.198.40:from,2603:10b6:510:13c::22:received];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[amd.com:+]
X-Rspamd-Action: no action
Message-ID-Hash: UU25ISLDPNJRGWEOFI7OOP3TKGDQENOE
X-Message-ID-Hash: UU25ISLDPNJRGWEOFI7OOP3TKGDQENOE
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Jason Gunthorpe <jgg@nvidia.com>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>, Simona Vetter <simona.vetter@ffwll.ch>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC 1/8] dma-buf: Add support for map/unmap APIs for interconnects
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/UU25ISLDPNJRGWEOFI7OOP3TKGDQENOE/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gMTAvMTQvMjUgMDk6MDgsIFZpdmVrIEthc2lyZWRkeSB3cm90ZToNCj4gRm9yIHRoZSBtYXAg
b3BlcmF0aW9uLCB0aGUgZG1hLWJ1ZiBjb3JlIHdpbGwgY3JlYXRlIGFuIHhhcnJheSBidXQNCj4g
dGhlIGV4cG9ydGVyIGlzIGV4cGVjdGVkIHRvIHBvcHVsYXRlIGl0IHdpdGggdGhlIGludGVyY29u
bmVjdA0KPiBzcGVjaWZpYyBhZGRyZXNzZXMuIEFuZCwgc2ltaWxhcmx5IGZvciB1bm1hcCwgdGhl
IGV4cG9ydGVyIGlzDQo+IGV4cGVjdGVkIHRvIGNsZWFudXAgdGhlIGluZGl2aWR1YWwgZW50cmll
cyBvZiB0aGUgeGFycmF5Lg0KPiANCj4gQ2M6IEphc29uIEd1bnRob3JwZSA8amdnQG52aWRpYS5j
b20+DQo+IENjOiBDaHJpc3RpYW4gS29lbmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+DQo+
IENjOiBTdW1pdCBTZW13YWwgPHN1bWl0LnNlbXdhbEBsaW5hcm8ub3JnPg0KPiBDYzogVGhvbWFz
IEhlbGxzdHLDtm0gPHRob21hcy5oZWxsc3Ryb21AbGludXguaW50ZWwuY29tPg0KPiBDYzogU2lt
b25hIFZldHRlciA8c2ltb25hLnZldHRlckBmZndsbC5jaD4NCj4gU2lnbmVkLW9mZi1ieTogVml2
ZWsgS2FzaXJlZGR5IDx2aXZlay5rYXNpcmVkZHlAaW50ZWwuY29tPg0KPiAtLS0NCj4gIGRyaXZl
cnMvZG1hLWJ1Zi9kbWEtYnVmLmMgICAgICAgICAgICB8IDY4ICsrKysrKysrKysrKysrKysrKysr
KysrKysrKysNCj4gIGluY2x1ZGUvbGludXgvZG1hLWJ1Zi1pbnRlcmNvbm5lY3QuaCB8IDI5ICsr
KysrKysrKysrKw0KPiAgaW5jbHVkZS9saW51eC9kbWEtYnVmLmggICAgICAgICAgICAgIHwgMTEg
KysrKysNCj4gIDMgZmlsZXMgY2hhbmdlZCwgMTA4IGluc2VydGlvbnMoKykNCj4gIGNyZWF0ZSBt
b2RlIDEwMDY0NCBpbmNsdWRlL2xpbnV4L2RtYS1idWYtaW50ZXJjb25uZWN0LmgNCj4gDQo+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jIGIvZHJpdmVycy9kbWEtYnVmL2Rt
YS1idWYuYw0KPiBpbmRleCAyYmNmOWNlY2E5OTcuLjE2MjY0MmJkNTNlOCAxMDA2NDQNCj4gLS0t
IGEvZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYw0KPiArKysgYi9kcml2ZXJzL2RtYS1idWYvZG1h
LWJ1Zi5jDQo+IEBAIC0xNjEyLDYgKzE2MTIsNzQgQEAgdm9pZCBkbWFfYnVmX3Z1bm1hcF91bmxv
Y2tlZChzdHJ1Y3QgZG1hX2J1ZiAqZG1hYnVmLCBzdHJ1Y3QgaW9zeXNfbWFwICptYXApDQo+ICB9
DQo+ICBFWFBPUlRfU1lNQk9MX05TX0dQTChkbWFfYnVmX3Z1bm1hcF91bmxvY2tlZCwgIkRNQV9C
VUYiKTsNCj4gIA0KPiArc3RydWN0IGRtYV9idWZfcmFuZ2VzICoNCj4gK2RtYV9idWZfbWFwX2lu
dGVyY29ubmVjdChzdHJ1Y3QgZG1hX2J1Zl9hdHRhY2htZW50ICphdHRhY2gpDQo+ICt7DQo+ICsJ
Y29uc3Qgc3RydWN0IGRtYV9idWZfaW50ZXJjb25uZWN0X29wcyAqaWNfb3BzOw0KPiArCXN0cnVj
dCBkbWFfYnVmICpkbWFidWYgPSBhdHRhY2gtPmRtYWJ1ZjsNCj4gKwlzdHJ1Y3QgZG1hX2J1Zl9y
YW5nZXMgKnJhbmdlczsNCj4gKwlpbnQgcmV0Ow0KPiArDQo+ICsJbWlnaHRfc2xlZXAoKTsNCj4g
Kw0KPiArCWlmIChXQVJOX09OKCFhdHRhY2ggfHwgIWF0dGFjaC0+ZG1hYnVmKSkNCj4gKwkJcmV0
dXJuIEVSUl9QVFIoLUVJTlZBTCk7DQo+ICsNCj4gKwlpZiAoIWRtYV9idWZfYXR0YWNobWVudF9p
c19keW5hbWljKGF0dGFjaCkpDQo+ICsJCXJldHVybiBFUlJfUFRSKC1FSU5WQUwpOw0KPiArDQo+
ICsJaWYgKCFhdHRhY2gtPmFsbG93X2ljKQ0KPiArCQlyZXR1cm4gRVJSX1BUUigtRU9QTk9UU1VQ
UCk7DQo+ICsNCj4gKwlkbWFfcmVzdl9hc3NlcnRfaGVsZChhdHRhY2gtPmRtYWJ1Zi0+cmVzdik7
DQo+ICsNCj4gKwlpY19vcHMgPSBkbWFidWYtPm9wcy0+aW50ZXJjb25uZWN0X29wczsNCj4gKwlp
ZiAoIWljX29wcyB8fCAhaWNfb3BzLT5tYXBfaW50ZXJjb25uZWN0KQ0KPiArCQlyZXR1cm4gRVJS
X1BUUigtRUlOVkFMKTsNCj4gKw0KPiArCXJhbmdlcyA9IGt6YWxsb2Moc2l6ZW9mKCpyYW5nZXMp
LCBHRlBfS0VSTkVMKTsNCj4gKwlpZiAoIXJhbmdlcykNCj4gKwkJcmV0dXJuIEVSUl9QVFIoLUVO
T01FTSk7DQo+ICsNCj4gKwl4YV9pbml0KCZyYW5nZXMtPnJhbmdlcyk7DQo+ICsJcmV0ID0gaWNf
b3BzLT5tYXBfaW50ZXJjb25uZWN0KGF0dGFjaCwgcmFuZ2VzKTsNCj4gKwlpZiAocmV0KQ0KPiAr
CQlnb3RvIGVycl9mcmVlX3JhbmdlczsNCj4gKw0KPiArCXJldHVybiByYW5nZXM7DQo+ICsNCj4g
K2Vycl9mcmVlX3JhbmdlczoNCj4gKwl4YV9kZXN0cm95KCZyYW5nZXMtPnJhbmdlcyk7DQo+ICsJ
a2ZyZWUocmFuZ2VzKTsNCj4gKwlyZXR1cm4gRVJSX1BUUihyZXQpOw0KPiArfQ0KPiArRVhQT1JU
X1NZTUJPTF9OU19HUEwoZG1hX2J1Zl9tYXBfaW50ZXJjb25uZWN0LCAiRE1BX0JVRiIpOw0KPiAr
DQo+ICt2b2lkIGRtYV9idWZfdW5tYXBfaW50ZXJjb25uZWN0KHN0cnVjdCBkbWFfYnVmX2F0dGFj
aG1lbnQgKmF0dGFjaCwNCj4gKwkJCQlzdHJ1Y3QgZG1hX2J1Zl9yYW5nZXMgKnJhbmdlcykNCj4g
K3sNCj4gKwljb25zdCBzdHJ1Y3QgZG1hX2J1Zl9pbnRlcmNvbm5lY3Rfb3BzICppY19vcHM7DQo+
ICsJc3RydWN0IGRtYV9idWYgKmRtYWJ1ZiA9IGF0dGFjaC0+ZG1hYnVmOw0KPiArDQo+ICsJaWYg
KFdBUk5fT04oIWF0dGFjaCB8fCAhYXR0YWNoLT5kbWFidWYgfHwgIXJhbmdlcykpDQo+ICsJCXJl
dHVybjsNCj4gKw0KPiArCWlmICghYXR0YWNoLT5hbGxvd19pYykNCj4gKwkJcmV0dXJuOw0KPiAr
DQo+ICsJaWNfb3BzID0gZG1hYnVmLT5vcHMtPmludGVyY29ubmVjdF9vcHM7DQo+ICsJaWYgKCFp
Y19vcHMgfHwgIWljX29wcy0+dW5tYXBfaW50ZXJjb25uZWN0KQ0KPiArCQlyZXR1cm47DQo+ICsN
Cj4gKwlkbWFfcmVzdl9hc3NlcnRfaGVsZChhdHRhY2gtPmRtYWJ1Zi0+cmVzdik7DQo+ICsNCj4g
KwlpY19vcHMtPnVubWFwX2ludGVyY29ubmVjdChhdHRhY2gsIHJhbmdlcyk7DQo+ICsNCj4gKwl4
YV9kZXN0cm95KCZyYW5nZXMtPnJhbmdlcyk7DQo+ICsJa2ZyZWUocmFuZ2VzKTsNCj4gK30NCj4g
K0VYUE9SVF9TWU1CT0xfTlNfR1BMKGRtYV9idWZfdW5tYXBfaW50ZXJjb25uZWN0LCAiRE1BX0JV
RiIpOw0KPiArDQo+ICAjaWZkZWYgQ09ORklHX0RFQlVHX0ZTDQo+ICBzdGF0aWMgaW50IGRtYV9i
dWZfZGVidWdfc2hvdyhzdHJ1Y3Qgc2VxX2ZpbGUgKnMsIHZvaWQgKnVudXNlZCkNCj4gIHsNCj4g
ZGlmZiAtLWdpdCBhL2luY2x1ZGUvbGludXgvZG1hLWJ1Zi1pbnRlcmNvbm5lY3QuaCBiL2luY2x1
ZGUvbGludXgvZG1hLWJ1Zi1pbnRlcmNvbm5lY3QuaA0KPiBuZXcgZmlsZSBtb2RlIDEwMDY0NA0K
PiBpbmRleCAwMDAwMDAwMDAwMDAuLjE3NTA0ZGVhOTY5MQ0KPiAtLS0gL2Rldi9udWxsDQo+ICsr
KyBiL2luY2x1ZGUvbGludXgvZG1hLWJ1Zi1pbnRlcmNvbm5lY3QuaA0KPiBAQCAtMCwwICsxLDI5
IEBADQo+ICsvKiBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogTUlUICovDQo+ICsNCj4gKyNpZm5k
ZWYgX19ETUFfQlVGX0lOVEVSQ09OTkVDVF9IX18NCj4gKyNkZWZpbmUgX19ETUFfQlVGX0lOVEVS
Q09OTkVDVF9IX18NCj4gKw0KPiArI2luY2x1ZGUgPGxpbnV4L3hhcnJheS5oPg0KPiArDQo+ICtz
dHJ1Y3QgZG1hX2J1Zl9hdHRhY2htZW50Ow0KPiArDQo+ICtzdHJ1Y3QgZG1hX2J1Zl9yYW5nZXMg
ew0KPiArCXN0cnVjdCB4YXJyYXkgcmFuZ2VzOw0KPiArCXVuc2lnbmVkIGludCBucmFuZ2VzOw0K
PiArfTsNCg0KSHVpPyBIb3cgaXMgdGhhdCBzdXBwb3NlZCB0byB3b3JrPyBTaG91bGQgdGhlIGV4
cG9ydGVyIGZpbGwgaW4gdGhlIHhhcnJheSB3aXRoIHZhbHVlcz8NCg0KVGhhdCBjbGVhcmx5IG5l
ZWRzIG1vcmUgZGVzY3JpcHRpb24uDQoNCkFuZCBJSVJDIHhhcnJheSBjYW4gb25seSBjb250YWlu
IHBvaW50ZXJzIGJlY2F1c2UgdGhlIGxvd2VyIGJpdHMgYXJlIHVzZWQgZm9yIGludGVybmFsIGhh
bmRsaW5nLg0KDQpTb21lIGtpbmQgb2YgaXRlcmF0b3IgbGlrZSBpbnRlcmZhY2Ugd291bGQgYmUg
cHJlZmVycmVkIHdoZXJlIHlvdSBoYXZlIGZpcnN0IGFuZCBuZXh0IGNhbGxiYWNrcy4NCg0KPiAr
DQo+ICtlbnVtIGRtYV9idWZfaW50ZXJjb25uZWN0X3R5cGUgew0KPiArCURNQV9CVUZfSU5URVJD
T05ORUNUX05PTkUgPSAwLA0KDQpMZXQncyBzdGFydCB3aXRoIGEgRE1BX0JVRl9ETUFfQUREUiB0
eXBlLg0KDQo+ICt9Ow0KPiArDQo+ICtzdHJ1Y3QgZG1hX2J1Zl9pbnRlcmNvbm5lY3Qgew0KPiAr
CWVudW0gZG1hX2J1Zl9pbnRlcmNvbm5lY3RfdHlwZSB0eXBlOw0KPiArfTsNCj4gKw0KPiArc3Ry
dWN0IGRtYV9idWZfaW50ZXJjb25uZWN0X29wcyB7DQo+ICsJaW50ICgqbWFwX2ludGVyY29ubmVj
dCkoc3RydWN0IGRtYV9idWZfYXR0YWNobWVudCAqYXR0YWNoLA0KPiArCQkJCXN0cnVjdCBkbWFf
YnVmX3JhbmdlcyAqcmFuZ2VzKTsNCj4gKwl2b2lkICgqdW5tYXBfaW50ZXJjb25uZWN0KShzdHJ1
Y3QgZG1hX2J1Zl9hdHRhY2htZW50ICphdHRhY2gsDQo+ICsJCQkJICAgc3RydWN0IGRtYV9idWZf
cmFuZ2VzICpyYW5nZXMpOw0KPiArfTsNCg0KUGxlYXNlIHB1dCB0aG9zZSBkaXJlY3RseSBpbnRv
IHRoZSBkbWFfYnVmX29wcyBzdHJ1Y3R1cmUsIEkgZG9uJ3QgcmVhbGx5IHNlZSBhIHZhbHVlIGlu
IHNlcGFyYXRpbmcgdGhlbS4NCg0KQWRkaXRpb25hbCB0byB0aGF0IEknbSBub3Qgc3VyZSBpZiB0
aGUgImludGVyY29ubmVjdCIgaXMgYSBnb29kIG5hbWluZywgZXNzZW50aWFsbHkgd2Ugd2FudCB0
byB1c2UgdGhlIG5ldyBtYXBwaW5nIGZ1bmN0aW9ucyB0byByZXBsYWNlIHRoZSBzZ190YWJsZSBh
cyB3ZWxsLg0KDQpSZWdhcmRzLA0KQ2hyaXN0aWFuLg0KDQo+ICsjZW5kaWYNCj4gZGlmZiAtLWdp
dCBhL2luY2x1ZGUvbGludXgvZG1hLWJ1Zi5oIGIvaW5jbHVkZS9saW51eC9kbWEtYnVmLmgNCj4g
aW5kZXggZDU4ZTMyOWFjMGU3Li5kYjkxYzY3YzAwZDYgMTAwNjQ0DQo+IC0tLSBhL2luY2x1ZGUv
bGludXgvZG1hLWJ1Zi5oDQo+ICsrKyBiL2luY2x1ZGUvbGludXgvZG1hLWJ1Zi5oDQo+IEBAIC0y
Myw2ICsyMyw4IEBADQo+ICAjaW5jbHVkZSA8bGludXgvZG1hLWZlbmNlLmg+DQo+ICAjaW5jbHVk
ZSA8bGludXgvd2FpdC5oPg0KPiAgDQo+ICsjaW5jbHVkZSA8bGludXgvZG1hLWJ1Zi1pbnRlcmNv
bm5lY3QuaD4NCj4gKw0KPiAgc3RydWN0IGRldmljZTsNCj4gIHN0cnVjdCBkbWFfYnVmOw0KPiAg
c3RydWN0IGRtYV9idWZfYXR0YWNobWVudDsNCj4gQEAgLTI3Niw2ICsyNzgsOCBAQCBzdHJ1Y3Qg
ZG1hX2J1Zl9vcHMgew0KPiAgDQo+ICAJaW50ICgqdm1hcCkoc3RydWN0IGRtYV9idWYgKmRtYWJ1
Ziwgc3RydWN0IGlvc3lzX21hcCAqbWFwKTsNCj4gIAl2b2lkICgqdnVubWFwKShzdHJ1Y3QgZG1h
X2J1ZiAqZG1hYnVmLCBzdHJ1Y3QgaW9zeXNfbWFwICptYXApOw0KPiArDQo+ICsJY29uc3Qgc3Ry
dWN0IGRtYV9idWZfaW50ZXJjb25uZWN0X29wcyAqaW50ZXJjb25uZWN0X29wczsNCj4gIH07DQo+
ICANCj4gIC8qKg0KPiBAQCAtNTAyLDcgKzUwNiw5IEBAIHN0cnVjdCBkbWFfYnVmX2F0dGFjaG1l
bnQgew0KPiAgCXN0cnVjdCBkZXZpY2UgKmRldjsNCj4gIAlzdHJ1Y3QgbGlzdF9oZWFkIG5vZGU7
DQo+ICAJYm9vbCBwZWVyMnBlZXI7DQo+ICsJYm9vbCBhbGxvd19pYzsNCj4gIAljb25zdCBzdHJ1
Y3QgZG1hX2J1Zl9hdHRhY2hfb3BzICppbXBvcnRlcl9vcHM7DQo+ICsJc3RydWN0IGRtYV9idWZf
aW50ZXJjb25uZWN0IGludGVyY29ubmVjdDsNCj4gIAl2b2lkICppbXBvcnRlcl9wcml2Ow0KPiAg
CXZvaWQgKnByaXY7DQo+ICB9Ow0KPiBAQCAtNTg5LDYgKzU5NSwxMSBAQCBzdHJ1Y3Qgc2dfdGFi
bGUgKmRtYV9idWZfbWFwX2F0dGFjaG1lbnQoc3RydWN0IGRtYV9idWZfYXR0YWNobWVudCAqLA0K
PiAgCQkJCQllbnVtIGRtYV9kYXRhX2RpcmVjdGlvbik7DQo+ICB2b2lkIGRtYV9idWZfdW5tYXBf
YXR0YWNobWVudChzdHJ1Y3QgZG1hX2J1Zl9hdHRhY2htZW50ICosIHN0cnVjdCBzZ190YWJsZSAq
LA0KPiAgCQkJCWVudW0gZG1hX2RhdGFfZGlyZWN0aW9uKTsNCj4gKw0KPiArc3RydWN0IGRtYV9i
dWZfcmFuZ2VzICpkbWFfYnVmX21hcF9pbnRlcmNvbm5lY3Qoc3RydWN0IGRtYV9idWZfYXR0YWNo
bWVudCAqKTsNCj4gK3ZvaWQgZG1hX2J1Zl91bm1hcF9pbnRlcmNvbm5lY3Qoc3RydWN0IGRtYV9i
dWZfYXR0YWNobWVudCAqLA0KPiArCQkJCXN0cnVjdCBkbWFfYnVmX3JhbmdlcyAqKTsNCj4gKw0K
PiAgdm9pZCBkbWFfYnVmX21vdmVfbm90aWZ5KHN0cnVjdCBkbWFfYnVmICpkbWFfYnVmKTsNCj4g
IGludCBkbWFfYnVmX2JlZ2luX2NwdV9hY2Nlc3Moc3RydWN0IGRtYV9idWYgKmRtYV9idWYsDQo+
ICAJCQkgICAgIGVudW0gZG1hX2RhdGFfZGlyZWN0aW9uIGRpcik7DQoNCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBs
aXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5k
IGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
