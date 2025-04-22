Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id D26B4A96143
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 22 Apr 2025 10:25:09 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A344145957
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 22 Apr 2025 08:25:08 +0000 (UTC)
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (mail-dm6nam11on2046.outbound.protection.outlook.com [40.107.223.46])
	by lists.linaro.org (Postfix) with ESMTPS id 8C7E43ECC0
	for <linaro-mm-sig@lists.linaro.org>; Tue, 22 Apr 2025 08:24:55 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b="ugv71S/j";
	dmarc=pass (policy=quarantine) header.from=amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1");
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.107.223.46 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=VnjJ+YT/Ey1XbDPiQLNSvtihikkZAy5OUiARVpsOWm0R6LYM77JuBgUzc8MuzuZCYqne957HBsRyUYp20DBqX8vOVSKEcE9+Qh1ZtWdfYSae879GpD5qTz/ZY1tOCNwaE1oMwZwE/OjEHPr1Mx34QcVMiDuTyO95h+9ZKDAz0a9qXMD+AyLqGbr4dqY4cXhpeQ3fgF83QOGec7mAunJ1E/k2GIhCpfSLe4p3tOyLM+SdZNJwJv6S3/0WkdIkotY7gUGofgK9z+4X1aOuGC9WJr+T8SFiVayp9U0iAHqbqNGENBPbD9dspOQJb3kyZJf4v8gOFpSCr5M0Z826hkjBZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nGIfBsoBmTE35RvPCoxDuaKU5iOM51w+3iI61XMIWjY=;
 b=QBxwpg+NeOLYXDnBisnc4tAICSsG6lKgsliqaFVuwlLnKshHVQ60ZH1Ae9paqCuPog6JNU8mo4TGnFfjcD1d+f6LfQ/5eLN1XAJOWZ+Vw/INCZNUfO96sKR4qSitpcqLtu5BBEuDMEV6frh7LZm/CHp0Z2fXASWU8juSI2ysMnNAa3YIF6bF9BPmIuRd6godWTU5EOp6TPpHs53HCYrJMH1I+z0Z3lfGU5tRGM6encvNJKR4GQ6fVlwO+rj8ToN9iHNiBb8wORA5KDNKtrzg5qIFsVKWtvSZ+0W4lfB0Bkxj7m6xT1LBuE84e5uQRaJ9rZTPCkKne3w3FoVygvgHmw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nGIfBsoBmTE35RvPCoxDuaKU5iOM51w+3iI61XMIWjY=;
 b=ugv71S/jzqV6/s7jj5fxbX14kL5ly0pMu9ItosfhatpFI7JViWShL23C7b+2n9IUH/5AsP5v3nGhqFKBQ+XQer+43cINKJCs2Kass9qgirUmAPixfn7JoWJTSvQbbZcUj3iswETmGNfMkYvmdAxoiKUQDM+SkSe5TlGztEIw5W0=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by CY5PR12MB6576.namprd12.prod.outlook.com (2603:10b6:930:40::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8678.22; Tue, 22 Apr
 2025 08:24:53 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5%6]) with mapi id 15.20.8655.025; Tue, 22 Apr 2025
 08:24:53 +0000
Message-ID: <a4f72149-70a0-4bbe-bdcc-70384c152f83@amd.com>
Date: Tue, 22 Apr 2025 10:24:45 +0200
User-Agent: Mozilla Thunderbird
To: "T.J. Mercier" <tjmercier@google.com>,
 Sumit Semwal <sumit.semwal@linaro.org>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>
References: <20250417180943.1559755-1-tjmercier@google.com>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <20250417180943.1559755-1-tjmercier@google.com>
X-ClientProxiedBy: FR0P281CA0206.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:ad::15) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|CY5PR12MB6576:EE_
X-MS-Office365-Filtering-Correlation-Id: 1cbdf9a4-ea69-48b9-d909-08dd81772845
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016|7053199007;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?WUhCb3pMd3BNTXFKMDV0eUg2OXhVZzFHbmRNSHJuWkkxdEc5dnlKQ0liWmE4?=
 =?utf-8?B?R1VXWTNCVTd1SnY0UUVZYUoxVVBCMnZXaDljWkw2enJ3b3dqRVo3QlZMRVlj?=
 =?utf-8?B?L1pLZEVrbHBFV0FUVGxSL1JleUROV25KdDFpOThZbDlYbEozNzQweU5XemNs?=
 =?utf-8?B?eitzNWNCUnJ5aWxwQk5TVUQ2UkhhRHpKWGRkSk1zbmZMcVQ0ZDlLSGxOZ2dq?=
 =?utf-8?B?b2F3MUVBTDJXYjRHbDlNRmYzVUdhYWFEbk5jNzVlYTROdnFNNmxzK1ptSE5s?=
 =?utf-8?B?cktNRzlnei9xSTdDNW9nWUhkL3ZVSStYZ0lKSTZHZERpdTA3OE5wclZZakZR?=
 =?utf-8?B?Tld0blhPMHVUVFlwOEljSmpXUGRTc3Zkc2NUS2xsVTF2OVdGU3BsWG8yc3pZ?=
 =?utf-8?B?aVYzMEFOQUNOVmlEeWhSZmpPQUZET0lMRHVoclAva3E3YzZqd3IvR3hxNytH?=
 =?utf-8?B?YjQ4bElJWEtXT3o0MmJUYXVoblYwbkVGNFZVR3BkTTRnaHF3aXJlNTNMalFh?=
 =?utf-8?B?NmlFKzk4WUVYazNMMXlTWTNvYm9EQi9GUjRzTE03bUZKR1V0WGR6d29EaEQ1?=
 =?utf-8?B?ZnpmRGYrWjZsbWZZODNoR3RzZVpMUW1BbW84WTRnUGt6QUkzc0NvZmtBMks2?=
 =?utf-8?B?VlJWb2VCYkErTFd1N3Uycm0zZ0VVU0ZmRzVtWVFyRElOeEZtYjBxemg2Z3M4?=
 =?utf-8?B?Vm4vRndPT3pDZ3l2WEkwdExMcU1jR1BjSkhTNU5BcDdjT1hYTUZCVmZxVTB4?=
 =?utf-8?B?dDlNanRya3NtL2RyRHhYT3pNcU9tTld6K2QxVjZWYk0wU1djS3Q0YndpZXFk?=
 =?utf-8?B?T3gvTHNnQmNkaVZ5VEIwZGd6eHFlc2wyanhuaHBtK1J1RkVObXZJMks0S2Jv?=
 =?utf-8?B?eWdRN2plcTNWeEFTR0tSS1VoQXVXVTZNb1ZXZkZjN3BtM2VzRUdFMDhIOGRO?=
 =?utf-8?B?UVpsQmNLeDBzbGRqcXlET3pUOUFLTmgvU1BYT083dlF2WDg1ZHBwU1RZVUJD?=
 =?utf-8?B?N2YyRGp0TkhZaWlTeWNpNlJyZlRQQ1ZiWmRaTnhjZmdBY0w1dzdiYnNOQWJu?=
 =?utf-8?B?czRKVmdEdmwzQWdGQTRKTWp1VFZRUjlwR1JtK0hncWJzT3Y4dWJkbTNNeUh6?=
 =?utf-8?B?Z0I5bVJLUS91czFTTU9zY2owZXh0NVJxZjJyYmVGZGpGSXQrZ3UyR1pMMmts?=
 =?utf-8?B?QVNtTHpJM0xGMTlTNDU4bFdHRUMyNEhBTDByNkdvaGlyZUp3cW95MUZaeVRZ?=
 =?utf-8?B?U0d3UTZDREp5Y1o3YkVaRTdDOVQ0aE9pbGwySmdIako0M1EvYTFMbnZCTjgz?=
 =?utf-8?B?VnAzU01LajdjR1Z2QngwOG1TSEU5NmJHRUVpdSs2cFFSUHI5T2dISTNOd3dr?=
 =?utf-8?B?Y2FtU1FHQWlTVlNuM2Y3WHl5WmFmdEo2U1B1YkhySnFVQVVPZFl5MWg3Zk41?=
 =?utf-8?B?TldvUU9vUXZqZG4xUndXQ2ZsVjZuYmQ3Q0tPRFhOZjBYMTlpcldkc1hxeXZH?=
 =?utf-8?B?RngzTEErWnd6YVFYU2FIS3pmK3lmRTdSdlNYYkhUY3hLRm1lNkU5M1VPVUFa?=
 =?utf-8?B?bkR6Nm42TmdMZVFOZ0x0TVFIbC9wTjRaQTVickFDWTVEWDh6Q1ptbkdMTmM1?=
 =?utf-8?B?WWo2SzBTdFRHSkNqMmtCbmZMeEU4VFVyUVN4QzRTYXVWeldJb1M0SVQvZzlG?=
 =?utf-8?B?Q2h6OW9UdmZzbTJzbU9CdDNZcUtTRHBsN29ScWpkNEpQOEs3V0ZJci9xdlFY?=
 =?utf-8?B?eExLNXBma2tUYmVwb3Z0MXh6ajdocENidzUyS0xrcWFNenZSem5SdWpCYTRC?=
 =?utf-8?B?SS8xdjczdytTTmFOY0RvOEI0dlFMRDBzMWpPR1RUalplellDZEJYaC96U2lW?=
 =?utf-8?B?d2NZd0ZJL1dPMzcwMXo1L01xRThRV2VKV2NBWVRXdjRqWEtwU29yc1ZTZ2w2?=
 =?utf-8?Q?2TAdnz/rqC8=3D?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(366016)(7053199007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?cmFjeE1oSjdEOHBHNkNPQTRNcUUwNW9yRW12VCtsVU9Scmp6TFAxcEtJdWZn?=
 =?utf-8?B?ck5sZGJ4SFNOdHphMUFsNW9hRUllUjFMcUp2d3dDb0ROcEJURDBWMG11ak16?=
 =?utf-8?B?TC9jeUZnWnRlaXBFb1EwUGlWSlpMeHg5ZXIyMGFhQjZnMzZlclVUYTA4cVF6?=
 =?utf-8?B?V0VzZ3gzZ2JaVEk5S2c0S0h6bHcxdUI5OGxPMTdlQUxsR3lJN2FDRkZHQ0c3?=
 =?utf-8?B?cGNRdzh0Wnoxdi9XOStlblg4QlltaStGbHVFR0RldERsZDFNL2c3R095NXpP?=
 =?utf-8?B?VFVhNXd1YjRMb25TYUdHUWJCQnZ0elgwNVdYalVQbFlDc3cyU3ovSlhJaVdl?=
 =?utf-8?B?SUs4OFNnWUpaYmZQVi95UnFPMVFsdlRGM3I0bjdSUFVvV2JDQXB4VTFTb3cw?=
 =?utf-8?B?cTgySlhuMWZ5MjVCRnlaa2VneUd1WmxZQk9ad1Q5bGpaa08vS3BxeldxLzB0?=
 =?utf-8?B?bWlXdk9ROE53UjcyU3laZ2xlMU14YnR5Yld0V1AxQzFRVlpGZWRnMWJsOUI0?=
 =?utf-8?B?T2ZwWGJubFVidm1scDhDcU9zNDVxa054MzlHbm9hQjhRRlBBSDlHdXA1UHZP?=
 =?utf-8?B?ZHgyQU9FaERIcnp1L3VodUE4dlMyN09zbldCRnFxc2xpR0J1QXhUbDE5Z1Yr?=
 =?utf-8?B?MGNVcndFVHFGMFBFMHhtMWZmL0Y5QisrK1d5U0xNSDE3Z1BsN1ZGc1cxMm1F?=
 =?utf-8?B?R3JzRUJINk1EcWp1Yk8ycWFXS2d0U0VIM2pmYTM0bDJZamUvYUMvWTExUC9Q?=
 =?utf-8?B?dlFGNnFpaW5FaTZOMHBPQ3l3SzRtQXFIc2RFNEhnamxBSkVoVW1XT0srTFQz?=
 =?utf-8?B?V0pDamZnUVUxQ2JWVlY5cnFZOGh2TW03NThHdk53cG5UQjhMNUVqaWJjVmd3?=
 =?utf-8?B?cXczNDlhUDR1eFJWek12Nmw1bEY1ZmpmdG5ZcVNsTDI4SDVjQml4Z2JrTzlu?=
 =?utf-8?B?OGZxRlJEaVpFYytFSmpPaERJaEU4bGRoc3haSmtPOG82dW5ra3BiOVEzNzZy?=
 =?utf-8?B?SWp5S25CR2I2RC9FN3c0MHl0QWZDdFBoUVUrVDc5U2NNK3RuRkxNT3JwWlp3?=
 =?utf-8?B?WWorVFlxR2V5cERxd3VibzBFeFpXdkRrSWRmY1Z0TjJ4WWRrT0JWTndnclFm?=
 =?utf-8?B?ZU9QTWxCZXp0YVVkK1JOUk9CakduZGtRQWhZZmIzOFA1bkpLZXJzVGpGVGE2?=
 =?utf-8?B?S3pubVRYUzNDVUFTR0o5bmpuL2pheUpWN1FQa2dIWk5GeU93a09jZFNjaXhG?=
 =?utf-8?B?RjBhOG56alVPZEtvMkNEdzlYdUdaVm8zSXV6UWVRTThKMHZTRVpVSVVaMGdG?=
 =?utf-8?B?TkM4UWUycERRSXl2TkwxbWhBWUNFaXZESTJzV3dkY1hMQW1GMVpMZFFSa2R6?=
 =?utf-8?B?d3pHV3ViK0dlc2ZPaStPc3BjeVlaOGkweElQZkpFNW54eFZ2NGhjTjNma1dF?=
 =?utf-8?B?Z1RXL3ZRTmdwbVdHVE1uNWplYk9mWVdnb2JSUnc5dkxRd3IzdE40OUt2SE5k?=
 =?utf-8?B?TzJvSU9RZVlGL2xjRnJUUW9VSnArcDM1TGJkbStYYmpHVUFhNVRxazdFclJ3?=
 =?utf-8?B?YUcxUzJNbk5wak11T2VxeWNJSVZFSXpsNkdnWVVQY3Q0YzBSb3huc0ZiZU1B?=
 =?utf-8?B?czRLRWdjZERrV1RZOXhBN3NkZEdlOXk4MSt3SHdJK0pDL0hnekluZkxldjVR?=
 =?utf-8?B?QlQ0aE1uTjJtSmlTcWxObU1nQ0IrZlNKVUtXTjF6Y28vNHVLcnhHeVZRcG9E?=
 =?utf-8?B?cXBjU1g1TnVXT2FoVlJ3bXBTRURpeUluTmdxRXZBRnluZEVkYXYzcldWMnZD?=
 =?utf-8?B?UDBMNjRMMW0yWXZTU1pDcncwbmN0c05LOXBBTVpmV1dKY2drVE5idkhDTmxE?=
 =?utf-8?B?UDJlcGJNbWVsTEo4aHJIV0h4R2haSjFMcFJpakxGbFJrRmlJUUFRMGxYM3RW?=
 =?utf-8?B?RmhtT0pmTzE3bFNScSs0UjRSTHlqanZhRjEwUCtsRnRxUDAzWjVoeTBWMHBo?=
 =?utf-8?B?UExTak54YjdhRHRET3E1anpGcEtUbVZYek1ldGx1ZFk0T3JNR2J0ZC9oTW9n?=
 =?utf-8?B?ZDFraUtqS3pFYjJWUFJkUnpyVFVaYnVCdkRydTlKS1lwcnFOOVBrNGU3bFhG?=
 =?utf-8?Q?9RCtbJaQdPoEzPPF5W1xNSkqh?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1cbdf9a4-ea69-48b9-d909-08dd81772845
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Apr 2025 08:24:53.6090
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: q5Rn4J4rMn0/brI9iDZKRvpriH3gBgBnclQUnHC4WvFMtIALAnb0yCJlIdisL713
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR12MB6576
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 8C7E43ECC0
X-Spamd-Bar: -----
X-Spamd-Result: default: False [-5.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:40.107.0.0/16];
	MIME_GOOD(-0.10)[text/plain];
	MIME_TRACE(0.00)[0:+];
	RBL_SENDERSCORE_REPUT_8(0.00)[40.107.223.46:from];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.107.223.46:from];
	ASN(0.00)[asn:8075, ipnet:40.104.0.0/14, country:US];
	RCPT_COUNT_SEVEN(0.00)[9];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	RCVD_TLS_LAST(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[amd.com:+]
X-Rspamd-Action: no action
Message-ID-Hash: EMR2G47OP6Z4GIIFC6Q52YQB3A54Y3TC
X-Message-ID-Hash: EMR2G47OP6Z4GIIFC6Q52YQB3A54Y3TC
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf: system_heap: No separate allocation for attachment sg_tables
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/EMR2G47OP6Z4GIIFC6Q52YQB3A54Y3TC/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

QW0gMTcuMDQuMjUgdW0gMjA6MDkgc2NocmllYiBULkouIE1lcmNpZXI6DQo+IHN0cnVjdCBkbWFf
aGVhcF9hdHRhY2htZW50IGlzIGEgc2VwYXJhdGUgYWxsb2NhdGlvbiBmcm9tIHRoZSBzdHJ1Y3QN
Cj4gc2dfdGFibGUgaXQgY29udGFpbnMsIGJ1dCB0aGVyZSBpcyBubyByZWFzb24gZm9yIHRoaXMu
IExldCdzIHVzZSB0aGUNCj4gc2xhYiBhbGxvY2F0b3IganVzdCBvbmNlIGluc3RlYWQgb2YgdHdp
Y2UgZm9yIGRtYV9oZWFwX2F0dGFjaG1lbnQuDQo+DQo+IFNpZ25lZC1vZmYtYnk6IFQuSi4gTWVy
Y2llciA8dGptZXJjaWVyQGdvb2dsZS5jb20+DQoNCkknbSBub3QgKnRoYXQqIGV4cGVydCBmb3Ig
dGhpcyBjb2RlLCBidXQgbG9va3MgdG90YWxseSByZWFzb25hYmxlIHRvIG1lLg0KDQpSZXZpZXdl
ZC1ieTogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPg0KDQpMZXQg
bWUga25vdyBpZiBJIHNob3VsZCBwdXNoIHRoYXQgdG8gZHJtLW1pc2MtbmV4dC4NCg0KUmVnYXJk
cywNCkNocmlzdGlhbi4NCg0KPiAtLS0NCj4gIGRyaXZlcnMvZG1hLWJ1Zi9oZWFwcy9zeXN0ZW1f
aGVhcC5jIHwgNDMgKysrKysrKysrKysrLS0tLS0tLS0tLS0tLS0tLS0NCj4gIDEgZmlsZSBjaGFu
Z2VkLCAxNyBpbnNlcnRpb25zKCspLCAyNiBkZWxldGlvbnMoLSkNCj4NCj4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZG1hLWJ1Zi9oZWFwcy9zeXN0ZW1faGVhcC5jIGIvZHJpdmVycy9kbWEtYnVmL2hl
YXBzL3N5c3RlbV9oZWFwLmMNCj4gaW5kZXggMjZkNWRjODllYTE2Li5iZWUxMGM0MDBjZjAgMTAw
NjQ0DQo+IC0tLSBhL2RyaXZlcnMvZG1hLWJ1Zi9oZWFwcy9zeXN0ZW1faGVhcC5jDQo+ICsrKyBi
L2RyaXZlcnMvZG1hLWJ1Zi9oZWFwcy9zeXN0ZW1faGVhcC5jDQo+IEBAIC0zNSw3ICszNSw3IEBA
IHN0cnVjdCBzeXN0ZW1faGVhcF9idWZmZXIgew0KPiAgDQo+ICBzdHJ1Y3QgZG1hX2hlYXBfYXR0
YWNobWVudCB7DQo+ICAJc3RydWN0IGRldmljZSAqZGV2Ow0KPiAtCXN0cnVjdCBzZ190YWJsZSAq
dGFibGU7DQo+ICsJc3RydWN0IHNnX3RhYmxlIHRhYmxlOw0KPiAgCXN0cnVjdCBsaXN0X2hlYWQg
bGlzdDsNCj4gIAlib29sIG1hcHBlZDsNCj4gIH07DQo+IEBAIC01NCwyOSArNTQsMjIgQEAgc3Rh
dGljIGdmcF90IG9yZGVyX2ZsYWdzW10gPSB7SElHSF9PUkRFUl9HRlAsIEhJR0hfT1JERVJfR0ZQ
LCBMT1dfT1JERVJfR0ZQfTsNCj4gIHN0YXRpYyBjb25zdCB1bnNpZ25lZCBpbnQgb3JkZXJzW10g
PSB7OCwgNCwgMH07DQo+ICAjZGVmaW5lIE5VTV9PUkRFUlMgQVJSQVlfU0laRShvcmRlcnMpDQo+
ICANCj4gLXN0YXRpYyBzdHJ1Y3Qgc2dfdGFibGUgKmR1cF9zZ190YWJsZShzdHJ1Y3Qgc2dfdGFi
bGUgKnRhYmxlKQ0KPiArc3RhdGljIGludCBkdXBfc2dfdGFibGUoc3RydWN0IHNnX3RhYmxlICpm
cm9tLCBzdHJ1Y3Qgc2dfdGFibGUgKnRvKQ0KPiAgew0KPiAtCXN0cnVjdCBzZ190YWJsZSAqbmV3
X3RhYmxlOw0KPiAtCWludCByZXQsIGk7DQo+ICAJc3RydWN0IHNjYXR0ZXJsaXN0ICpzZywgKm5l
d19zZzsNCj4gKwlpbnQgcmV0LCBpOw0KPiAgDQo+IC0JbmV3X3RhYmxlID0ga3phbGxvYyhzaXpl
b2YoKm5ld190YWJsZSksIEdGUF9LRVJORUwpOw0KPiAtCWlmICghbmV3X3RhYmxlKQ0KPiAtCQly
ZXR1cm4gRVJSX1BUUigtRU5PTUVNKTsNCj4gLQ0KPiAtCXJldCA9IHNnX2FsbG9jX3RhYmxlKG5l
d190YWJsZSwgdGFibGUtPm9yaWdfbmVudHMsIEdGUF9LRVJORUwpOw0KPiAtCWlmIChyZXQpIHsN
Cj4gLQkJa2ZyZWUobmV3X3RhYmxlKTsNCj4gLQkJcmV0dXJuIEVSUl9QVFIoLUVOT01FTSk7DQo+
IC0JfQ0KPiArCXJldCA9IHNnX2FsbG9jX3RhYmxlKHRvLCBmcm9tLT5vcmlnX25lbnRzLCBHRlBf
S0VSTkVMKTsNCj4gKwlpZiAocmV0KQ0KPiArCQlyZXR1cm4gcmV0Ow0KPiAgDQo+IC0JbmV3X3Nn
ID0gbmV3X3RhYmxlLT5zZ2w7DQo+IC0JZm9yX2VhY2hfc2d0YWJsZV9zZyh0YWJsZSwgc2csIGkp
IHsNCj4gKwluZXdfc2cgPSB0by0+c2dsOw0KPiArCWZvcl9lYWNoX3NndGFibGVfc2coZnJvbSwg
c2csIGkpIHsNCj4gIAkJc2dfc2V0X3BhZ2UobmV3X3NnLCBzZ19wYWdlKHNnKSwgc2ctPmxlbmd0
aCwgc2ctPm9mZnNldCk7DQo+ICAJCW5ld19zZyA9IHNnX25leHQobmV3X3NnKTsNCj4gIAl9DQo+
ICANCj4gLQlyZXR1cm4gbmV3X3RhYmxlOw0KPiArCXJldHVybiAwOw0KPiAgfQ0KPiAgDQo+ICBz
dGF0aWMgaW50IHN5c3RlbV9oZWFwX2F0dGFjaChzdHJ1Y3QgZG1hX2J1ZiAqZG1hYnVmLA0KPiBA
QCAtODQsMTkgKzc3LDE4IEBAIHN0YXRpYyBpbnQgc3lzdGVtX2hlYXBfYXR0YWNoKHN0cnVjdCBk
bWFfYnVmICpkbWFidWYsDQo+ICB7DQo+ICAJc3RydWN0IHN5c3RlbV9oZWFwX2J1ZmZlciAqYnVm
ZmVyID0gZG1hYnVmLT5wcml2Ow0KPiAgCXN0cnVjdCBkbWFfaGVhcF9hdHRhY2htZW50ICphOw0K
PiAtCXN0cnVjdCBzZ190YWJsZSAqdGFibGU7DQo+ICsJaW50IHJldDsNCj4gIA0KPiAgCWEgPSBr
emFsbG9jKHNpemVvZigqYSksIEdGUF9LRVJORUwpOw0KPiAgCWlmICghYSkNCj4gIAkJcmV0dXJu
IC1FTk9NRU07DQo+ICANCj4gLQl0YWJsZSA9IGR1cF9zZ190YWJsZSgmYnVmZmVyLT5zZ190YWJs
ZSk7DQo+IC0JaWYgKElTX0VSUih0YWJsZSkpIHsNCj4gKwlyZXQgPSBkdXBfc2dfdGFibGUoJmJ1
ZmZlci0+c2dfdGFibGUsICZhLT50YWJsZSk7DQo+ICsJaWYgKHJldCkgew0KPiAgCQlrZnJlZShh
KTsNCj4gLQkJcmV0dXJuIC1FTk9NRU07DQo+ICsJCXJldHVybiByZXQ7DQo+ICAJfQ0KPiAgDQo+
IC0JYS0+dGFibGUgPSB0YWJsZTsNCj4gIAlhLT5kZXYgPSBhdHRhY2htZW50LT5kZXY7DQo+ICAJ
SU5JVF9MSVNUX0hFQUQoJmEtPmxpc3QpOw0KPiAgCWEtPm1hcHBlZCA9IGZhbHNlOw0KPiBAQCAt
MTIwLDggKzExMiw3IEBAIHN0YXRpYyB2b2lkIHN5c3RlbV9oZWFwX2RldGFjaChzdHJ1Y3QgZG1h
X2J1ZiAqZG1hYnVmLA0KPiAgCWxpc3RfZGVsKCZhLT5saXN0KTsNCj4gIAltdXRleF91bmxvY2so
JmJ1ZmZlci0+bG9jayk7DQo+ICANCj4gLQlzZ19mcmVlX3RhYmxlKGEtPnRhYmxlKTsNCj4gLQlr
ZnJlZShhLT50YWJsZSk7DQo+ICsJc2dfZnJlZV90YWJsZSgmYS0+dGFibGUpOw0KPiAgCWtmcmVl
KGEpOw0KPiAgfQ0KPiAgDQo+IEBAIC0xMjksNyArMTIwLDcgQEAgc3RhdGljIHN0cnVjdCBzZ190
YWJsZSAqc3lzdGVtX2hlYXBfbWFwX2RtYV9idWYoc3RydWN0IGRtYV9idWZfYXR0YWNobWVudCAq
YXR0YWMNCj4gIAkJCQkJCWVudW0gZG1hX2RhdGFfZGlyZWN0aW9uIGRpcmVjdGlvbikNCj4gIHsN
Cj4gIAlzdHJ1Y3QgZG1hX2hlYXBfYXR0YWNobWVudCAqYSA9IGF0dGFjaG1lbnQtPnByaXY7DQo+
IC0Jc3RydWN0IHNnX3RhYmxlICp0YWJsZSA9IGEtPnRhYmxlOw0KPiArCXN0cnVjdCBzZ190YWJs
ZSAqdGFibGUgPSAmYS0+dGFibGU7DQo+ICAJaW50IHJldDsNCj4gIA0KPiAgCXJldCA9IGRtYV9t
YXBfc2d0YWJsZShhdHRhY2htZW50LT5kZXYsIHRhYmxlLCBkaXJlY3Rpb24sIDApOw0KPiBAQCAt
MTY0LDcgKzE1NSw3IEBAIHN0YXRpYyBpbnQgc3lzdGVtX2hlYXBfZG1hX2J1Zl9iZWdpbl9jcHVf
YWNjZXNzKHN0cnVjdCBkbWFfYnVmICpkbWFidWYsDQo+ICAJbGlzdF9mb3JfZWFjaF9lbnRyeShh
LCAmYnVmZmVyLT5hdHRhY2htZW50cywgbGlzdCkgew0KPiAgCQlpZiAoIWEtPm1hcHBlZCkNCj4g
IAkJCWNvbnRpbnVlOw0KPiAtCQlkbWFfc3luY19zZ3RhYmxlX2Zvcl9jcHUoYS0+ZGV2LCBhLT50
YWJsZSwgZGlyZWN0aW9uKTsNCj4gKwkJZG1hX3N5bmNfc2d0YWJsZV9mb3JfY3B1KGEtPmRldiwg
JmEtPnRhYmxlLCBkaXJlY3Rpb24pOw0KPiAgCX0NCj4gIAltdXRleF91bmxvY2soJmJ1ZmZlci0+
bG9jayk7DQo+ICANCj4gQEAgLTE4NSw3ICsxNzYsNyBAQCBzdGF0aWMgaW50IHN5c3RlbV9oZWFw
X2RtYV9idWZfZW5kX2NwdV9hY2Nlc3Moc3RydWN0IGRtYV9idWYgKmRtYWJ1ZiwNCj4gIAlsaXN0
X2Zvcl9lYWNoX2VudHJ5KGEsICZidWZmZXItPmF0dGFjaG1lbnRzLCBsaXN0KSB7DQo+ICAJCWlm
ICghYS0+bWFwcGVkKQ0KPiAgCQkJY29udGludWU7DQo+IC0JCWRtYV9zeW5jX3NndGFibGVfZm9y
X2RldmljZShhLT5kZXYsIGEtPnRhYmxlLCBkaXJlY3Rpb24pOw0KPiArCQlkbWFfc3luY19zZ3Rh
YmxlX2Zvcl9kZXZpY2UoYS0+ZGV2LCAmYS0+dGFibGUsIGRpcmVjdGlvbik7DQo+ICAJfQ0KPiAg
CW11dGV4X3VubG9jaygmYnVmZmVyLT5sb2NrKTsNCj4gIA0KPg0KPiBiYXNlLWNvbW1pdDogOGZm
ZDAxNWRiODVmZWEzZTE1YTc3MDI3ZmRhNmMwMmNlZDRkMjQ0NA0KDQpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlz
dCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBh
biBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
