Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 108AEA7BED4
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  4 Apr 2025 16:16:08 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C0B7A453C4
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  4 Apr 2025 14:16:06 +0000 (UTC)
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (mail-dm6nam10on2049.outbound.protection.outlook.com [40.107.93.49])
	by lists.linaro.org (Postfix) with ESMTPS id 5930F44AFF
	for <linaro-mm-sig@lists.linaro.org>; Fri,  4 Apr 2025 14:14:59 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=ifWKx0C6;
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.107.93.49 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=uYv8Nxj+0XeEk2DvfV5VSbNFYzJhVHpUDbUU2WVaMd3sp2rhuEOGg0ye4XXAldA1Zsf5yod6+QS/P+FVblngtk5W1Rvg4w4KOHQOkZt7HFzh/ka8mu7JUMg+3yO6MolrFV1U8wqluGmsNXXY+cLs/Dqkhz5Nmj+LDQ0Fv0+PsL/0iuxquBIMexkOqudDkfvSWSBPT+FwyslB3EWRz7ITd0oGX7yHbnLnRjbcRJqJXdSV4hEMQGxF/Cpzou7LdB0n2aM0+yRsMm39vFNAvsknSNfVqrzrT5sVtNxsbRH1JRyYfHqgQvYDQFovhXM4RFC6WYteAYYWJ+2fUkgDiNYTsQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mio+YPu/nqXdrAucdVXx6/NZg5MkzzKIiFu+vi5YcpI=;
 b=Gqemhfx3pwG4oxyriGVzZqVeXYZSsBVFlmPRuls+kMJrc8sIqVDFmCmydGIsI/rK3dEgcknBASKWi9AvFHfbCqRwGtDPoeYQmV4YSSTNhdpyU9lb5OeSwcikGZq3xu4CPZbt2LRq5obhtVxrl709iG9icjUEGtOgAGhRC/OcfFuIJ2CDXfAiUN/9BghNGOO4ZNinA5XBEqpt88UAy4WTpgt8E3kYuDgFKU0rqlGTr3cOoycX49Oxi8ErzDXcKIzUn+QsdOluA7OmcHYsVeLqOc4rhcbboomuwFLJtnxDB4BGEN0CCai6fLAf93rmJq4Q1j+0yQA4Sig35IxNQh+o6Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mio+YPu/nqXdrAucdVXx6/NZg5MkzzKIiFu+vi5YcpI=;
 b=ifWKx0C6F2CHzQCiwWPlA486ExgVPQNUh7Li9x5eST4EPF2H2hEE58lr1LViTDqxg2qE03hfR88poycqONOltZ9ZzJL9lT3GOo9BHicMtsnyuDh3jAS1VVgtXNhEhYzFPxXm3lK2g7LXflE5aYEoPMUWy1g+wGsrE55RVD65nHw=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by SJ2PR12MB8739.namprd12.prod.outlook.com (2603:10b6:a03:549::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8534.49; Fri, 4 Apr
 2025 14:14:57 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5%5]) with mapi id 15.20.8583.041; Fri, 4 Apr 2025
 14:14:56 +0000
Message-ID: <920f1df7-9566-4df1-bba5-f8a1bf29c49c@amd.com>
Date: Fri, 4 Apr 2025 16:14:51 +0200
User-Agent: Mozilla Thunderbird
To: phasta@kernel.org, Lyude Paul <lyude@redhat.com>,
 Danilo Krummrich <dakr@kernel.org>, David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>
References: <20250403101353.42880-2-phasta@kernel.org>
 <c779bc2f-06af-4278-8bb5-08afc074b580@amd.com>
 <2558c9cf0cf28867238eb21950ce2a3f862c15c3.camel@mailbox.org>
 <72156b6a-9a8b-4485-8091-95f02c96eba8@amd.com>
 <36b076dc17083f9edd9b100bd8fa57badde41158.camel@mailbox.org>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <36b076dc17083f9edd9b100bd8fa57badde41158.camel@mailbox.org>
X-ClientProxiedBy: FR2P281CA0180.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:9f::9) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|SJ2PR12MB8739:EE_
X-MS-Office365-Filtering-Correlation-Id: f062e746-d5c3-454a-7a32-08dd738313b0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|366016|1800799024|376014|7416014|8096899003;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?ODUwUW5rclM3SXVZaDQ3MTZqL210bTZaVyt5dXErc25GRGZMZXJ1R0xMOGU3?=
 =?utf-8?B?UWpMZlpsbGN6YXJTUG5NV2lJam8rSVJEUFdQVE5qNURvdGNVY2xiL1NPWjZ1?=
 =?utf-8?B?Z2N2RVRnTHdrWjNONEwzdjEzVXdhTlphNXBDSGE1dGlUTHlScVVEZnFBM2Vy?=
 =?utf-8?B?aVhidzB2elh5M0lTZXA0cSt6YmRKVzA5V3lSTjlJTy9yTytPak9RVk9lVTZs?=
 =?utf-8?B?eTNPY1ZsRWVIQzhnWCtmdXFSNjhHa3M5YVJ4ck9WQzFQdXk3RGhENHBEdzB1?=
 =?utf-8?B?Q2toZFphWFgvY25ha1ozV2NYTVFKREdFekZCRDZPdjZIWGxiNjdmS0MwWlZU?=
 =?utf-8?B?OTJ5SFdWZmNrQk9UWkhzRVhWc3JLYkgzbmxGYTd6aDhyQ3FIMGFJc1c5a2p4?=
 =?utf-8?B?Z0Q4KzBBUS9hMlZySzlIQkdKd0c3Y0ZsVGpVZUs4c0dQQkFOaVFyM1JLOVdE?=
 =?utf-8?B?aHE2ZjBZckFBUnYyZFNGRVRnTDlnYkhaQ0xrdVgzT0wwd1VLUGNNUmRRSW9j?=
 =?utf-8?B?MzM2VDhSc20yR0ZRamE0dVk1cFFkRlAyYXVsUUJaR1REaW02aTFLTHM0Wlg4?=
 =?utf-8?B?UURURVpBRXk3Z0tvVUExY2NQa1p6M21kZk01cnd5ZDRib2d6VytQZTRJcyt4?=
 =?utf-8?B?djhMalBwYnIvMmZScExwK1pGN3lOQmZLUVp6WGJlMWFhaWlzN0lCelI0SUdP?=
 =?utf-8?B?VHpHUytncTI4VzhpZEJ1TG5PUzZzN1lQY2RHSk9Sa2k4eDdoR1REZ2Q3djI1?=
 =?utf-8?B?VXZLdTRhangrblgxbkFGNFRVT1BWK09YOWdzdUxySXJ4Kyt5R0Jqa2UyeERm?=
 =?utf-8?B?MHBhbzZsU1YzeFZIL252Q3FQTFloNHR3UElEU2tFb1pzbzg4TlhtL29saFhE?=
 =?utf-8?B?Q0tFcU9TeG5YcE4yQ1lQNVRUTzJVdFIyQktLWFNuTk9ZSjNaYitWbitRa3Nm?=
 =?utf-8?B?QW04YnhZc1VxUWVJa29YVnF1UGl3L1A3TjY5ZWduRms1ZVV1NWl4WlcxUmNn?=
 =?utf-8?B?MlU1clZjRDVRcnVwN1FBamVCV2dpbnBnMUlEUlk1Wk8zdCtqNWpzcWUwMFNE?=
 =?utf-8?B?YXV2VjJ5VUtzL3dhVS9JVDVjVWIwazd4cmF6Rk1LbXpyU3BvaDRvbGd0U3dl?=
 =?utf-8?B?dVIxL2hobExQa2x3V2N2Z0pyWjBVR2pLK3pRalFlaVlnTFlGWDR6a2ovcWcx?=
 =?utf-8?B?MEhSNGF3QnJ2SnltbzFlRFQ1aWFRY3E3aVFMeVlMaHV2dzZQOE9YOXFZR1lM?=
 =?utf-8?B?dWdvM3FrNTBCRnVTQUFnUlpKM0ltVkxIUzQxNEVWMEhLQWFjd2U4QmsxZzdx?=
 =?utf-8?B?SkxGYjJ0ZjVwc21FbkVGYlZKcGxPMUg3WjV5V0k0VlJ5WU5JRXRCaU1HaFBD?=
 =?utf-8?B?N3NIYnc1Qm5iR0hQOWR2NitVSkhkencwbzlucFpvREZjMTk4WEdDblNYM1Fo?=
 =?utf-8?B?MXNLVXc4L0R4ZkVFRVpPOVJleUFLUlNJTHp4ajBCTDRtTVpHZCtJTTIra2ta?=
 =?utf-8?B?QW93cDROWXN0TUl3UzlrbEJUTnU1L2VnYWoydlFMWlp6d1hmTThPU04zWVNN?=
 =?utf-8?B?OHBSOUZHV25YOTg5QUhWVmFzSlNiTXlMeFBmUGtqTlV1Y1JMQWp1eldhMDJ5?=
 =?utf-8?B?bmZqdVZWUUFORUEzd0dkMUI1ZHZzVWt3YndmYzUyRjNPcW5IbFVCbW5adUZB?=
 =?utf-8?B?ZXFGdDNSQVpTRU96Q0c1N1IvNXFaYjgvcmNWckk0TFdMdk1BWENucVNQWVBu?=
 =?utf-8?B?VjNqTjl4TnB2OW9JK2d2cThxN08vcUltNWEwZVMxMjQvaGJLaDdNdDdUQmtt?=
 =?utf-8?B?Nnh0VXdVVU5oOXkyMS9nWjdDV0NUSCtKVHVHcDFKYjFLSUhjYmZhSGphb3kx?=
 =?utf-8?Q?OFD2VmjdRrOdD?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(376014)(7416014)(8096899003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?UmNZay9tczR4bTNjUldDVGZSSFhYMzBESTU0UWFxaC9qRWY5eDVSaG1NVEJO?=
 =?utf-8?B?VC9BaVZHVEZTcVVxTTV5L21MS2VwUno3ZWozRVB0S004WGJYNXV0S21ac1d6?=
 =?utf-8?B?THM3emVnSkdoSitTbkRwMkZSQ0s3YklWRWc2bDNlckhhU1FMNlBNUjBlUXl5?=
 =?utf-8?B?Y0taNGovb2wxMnFYUXh2dWkwRWtuZ1BteHprTVFGSEljRHUvUXZQSHdTaVFV?=
 =?utf-8?B?Nmx4Z2FJcGpmZWNvNnVFQmpGeExid2dkdzRiY1c0OGJPYlBTM3V1bDlnOTVa?=
 =?utf-8?B?VWpVdFJVRXJzQ0lHRGM0dFpVQWRwVGhzQWw0QStZQ08zbFVHWFNLY1Rud1h6?=
 =?utf-8?B?VFU0OEZORlZsRVBBSjBxUGltU0N2WnltU1ZQbDQ4eDUyMElkMHh2WGExeXoy?=
 =?utf-8?B?c210YVc1ZURMb2lUR043cFZKOHRjQ08rczd3QmVIYXU1SlM1QTg4UkgrN1Fp?=
 =?utf-8?B?RnMxRzRsTW1sdlI2WkNvakQvSWhDbW1HYTVscy9SRlJHeWxqdjh5a3VQc3Rm?=
 =?utf-8?B?YWF0VWVPSzZwZ2hMZTNiZXJlNktVcGQ1M2t6TmppdnU4MDhpOW50RUx6b2ZP?=
 =?utf-8?B?RGZQR0pRVW9oWmUvcEd3N1U3SEdTdzdLSFpMN1pkem9Bb0JlWEFkcHd1VWVy?=
 =?utf-8?B?ZEcvaEFrNkk0TC9pSTFXOTQzaU04TlVocGJqNnhjSkR3TFgraEpEeE02TnEz?=
 =?utf-8?B?cUFBVzFwQnlCVXpYZm80d3c1b0tjWDh6ZXZkQkVYWk16dmFIWHB4ZHRwYzlB?=
 =?utf-8?B?dDR5b2FzKzJGWWRtUk14NFJTUUVrQm9wRURqcGpSd2ppem9ET2xGWjg1ZDdy?=
 =?utf-8?B?aVZicjI2Y2FPd2Y4NkxHZGwrV3UvVjl0WXZaWW8zczFZanpGVDg5cGZCVXkw?=
 =?utf-8?B?MVIzV2w5dElRanRFdUhVcm9zajluZkVETnUyQUxFdWx4VHk5ZUhsMWtwRWVa?=
 =?utf-8?B?c2NpNEFnWGEyMjRRY0ZGck5KdE9OZVBvb1hDUFA0ZXVObGNIKzlUakh2NWlK?=
 =?utf-8?B?OUZrcTJ5R3BRVzFic2hqQmJlQ0d2dmNpWGdpMW1JRHE3UmQrZmFXSkV3ZVpp?=
 =?utf-8?B?NVVlT2V4OXg0RU0zVmNVeEZxWDFaM2paUkRGVXRLS3RodWxTWTdMa3NIQVFE?=
 =?utf-8?B?aW50dkVRNFIwcXdPNmZTbTlwMUU1TDc0czd5UUFDY1RLdVpjdGlvRG95UmNw?=
 =?utf-8?B?MVVONUYvYUFTTTBrWERmNkJYOWozNUZEUUtkN0FGaDBpV3pUaXE1YnhWdE9U?=
 =?utf-8?B?MldFWGZxZUI1OUFMMTQ5eUo5OFFaWndSOG9RTTMzT1NRYlF3R1FubENhUXVW?=
 =?utf-8?B?RHBXKzdtZFRUWlR5STFxWWV5b0lFOWQ2T3RUSGJnVHlteXRuWEsraDVVRjdZ?=
 =?utf-8?B?ZVEwSVVXbDdnR21rNks2Q3IwZDhYclVMMnBUdm5oVTRBZjJHc2ZyVm1wU3BI?=
 =?utf-8?B?NnJ1c25LdE1sUWJhaXQvVWpkQ1hvTXR1T21HK280R0MrOTlxNFhnZzdFNURZ?=
 =?utf-8?B?Y056YjBsbkxEYXFKOUdQQUxncG9DcHNoSmV5WGR2UlZUcHNQQnlEVHdpMDJQ?=
 =?utf-8?B?dm1wVU5tKzRoS2p0ZkRPc0dTK25wNmFpRW1WMmpXdkMxcmZDaUhqLzJodEh4?=
 =?utf-8?B?aXFtVGpNc0h5ZC91UXJ2eEw4R1ErVFNPTzV3cUZBcGpDaTRuMzFvMWc3V3N0?=
 =?utf-8?B?NmZyNC9NWWM4NXRNNXh3dWtGZnlMZk54N2JyY3pkT2JaQTRrZGhhZEt2dThw?=
 =?utf-8?B?YjROV2xsQi82OGJWcXFIWm03OEFMUUh2QVNjOEpRTGc3L2xtdmRodkZYallX?=
 =?utf-8?B?SmdDc2tydDJjSksrb2IyWmV3K0pTN2pMUFBaZlFzQTg2MVRuS0w2OFUvaW5h?=
 =?utf-8?B?U2RqRnhUaVIrMldxRFpJS05OSzZ6cmdWMTU2USs3NkJTaU5pQ2o0RjEvWHNq?=
 =?utf-8?B?ZUZ0ck1nblA2dTdNVFZWM2hzdjlvMUhkY3J1QmRQSnZod2lsNllkY3FDVHJN?=
 =?utf-8?B?YUtHeFBaaVhVY2JtbXQwUFNDZ3pVK3lCb3ErdG9NNGxZT1RZQ1M2TTJnT0tB?=
 =?utf-8?B?RmowMHZjM0YyVUhvVmUvd05jOE0rMmVnVkovbWRZM2NzSlk2cVRKdHBkWjBV?=
 =?utf-8?Q?DmfZtqO2Qt8DCixLCNBsShIch?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f062e746-d5c3-454a-7a32-08dd738313b0
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Apr 2025 14:14:56.6533
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: VkM5Z1MlGe/yXaqAEBU4Q4dyI7Y4xNFfrBuo4tznq5EAqtC1N+tKwBy1pfJXiDss
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR12MB8739
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 5930F44AFF
X-Spamd-Result: default: False [-5.00 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:40.107.0.0/16];
	MIME_GOOD(-0.10)[multipart/alternative,text/plain];
	FREEMAIL_TO(0.00)[kernel.org,redhat.com,gmail.com,ffwll.ch,linaro.org];
	ASN(0.00)[asn:8075, ipnet:40.104.0.0/14, country:US];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.107.93.49:from];
	RBL_SENDERSCORE_REPUT_BLOCKED(0.00)[40.107.93.49:from];
	MID_RHS_MATCH_FROM(0.00)[];
	URIBL_BLOCKED(0.00)[mail-dm6nam10on2049.outbound.protection.outlook.com:rdns,amd.com:dkim,amd.com:mid,NAM10-DM6-obe.outbound.protection.outlook.com:helo];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	DNSWL_BLOCKED(0.00)[2603:10b6:510:13c::22:received,40.107.93.49:from];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[amd.com:+]
X-Spamd-Bar: ----
X-Rspamd-Action: no action
Message-ID-Hash: LNP2Z5SM5V4346PKXM2TKY32AHXTSCQ6
X-Message-ID-Hash: LNP2Z5SM5V4346PKXM2TKY32AHXTSCQ6
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: dri-devel@lists.freedesktop.org, nouveau@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, stable@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2] drm/nouveau: Prevent signalled fences in pending list
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/LNP2Z5SM5V4346PKXM2TKY32AHXTSCQ6/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: multipart/mixed; boundary="===============0948472466270747220=="

--===============0948472466270747220==
Content-Type: multipart/alternative;
 boundary="------------6ev6XXZJ7eFoz90WOzd3aYpc"
Content-Language: en-US

--------------6ev6XXZJ7eFoz90WOzd3aYpc
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

QW0gMDMuMDQuMjUgdW0gMTY6NDAgc2NocmllYiBQaGlsaXBwIFN0YW5uZXI6DQo+Pj4+PiDCoA0K
Pj4+PiDCoA0KPj4+PiBUaGF0IGxvb2tzIGxpa2UgYSByZWFsbHkgcmVhbGx5IGF3a3dhcmQgYXBw
cm9hY2guIFRoZSBkcml2ZXINCj4+Pj4gYmFzaWNhbGx5IHVzZXMgYSB0aGUgRE1BIGZlbmNlIGlu
ZnJhc3RydWN0dXJlIGFzIG1pZGRsZSBsYXllciBhbmQNCj4+Pj4gY2FsbGJhY2tzIGludG8gaXRz
ZWxmIHRvIGNsZWFudXAgaXQncyBvd24gc3RydWN0dXJlcy4NCj4+Pj4gwqANCj4+PiDCoA0KPj4+
IFdoYXQgZWxzZSBhcmUgY2FsbGJhY2tzIGdvb2QgZm9yLCBpZiBub3QgdG8gZG8gc29tZXRoaW5n
DQo+Pj4gYXV0b21hdGljYWxseQ0KPj4+IHdoZW4gdGhlIGZlbmNlIGdldHMgc2lnbmFsZWQ/DQo+
Pj4gwqANCj4+IMKgDQo+PiDCoFdlbGwgaWYgeW91IGFkZCBhIGNhbGxiYWNrIGZvciBhIHNpZ25h
bCB5b3UgaXNzdWVkIHlvdXJzZWxmIHRoZW4NCj4+IHRoYXQncyBraW5kIG9mIGF3a3dhcmQuDQo+
PiDCoA0KPj4gwqBFLmcuIHlvdSBjYWxsIGludG8gdGhlIERNQSBmZW5jZSBjb2RlLCBqdXN0IGZv
ciB0aGUgRE1BIGZlbmNlIGNvZGUNCj4+IHRvIGNhbGwgeW91cnNlbGYgYmFjayBhZ2Fpbi4NCj4g
Tm93IHdlJ3JlIGVudGVyaW5nIENTLVBoaWxvc29waHksIGJlY2F1c2UgaXQgZGVwZW5kcyBvbiB3
aG8gInlvdSIgYW5kDQo+ICJ5b3Vyc2VsZiIgYXJlLiBJbiBjYXNlIG9mIHRoZSBkcml2ZXIsIHll
cywgbmF0dXJhbGx5IGl0IHJlZ2lzdGVycyBhDQo+IGNhbGxiYWNrIGJlY2F1c2UgYXQgc29tZSBv
dGhlciBwbGFjZSAoZS5nLiwgaW4gdGhlIGRyaXZlcidzIGludGVycnVwdA0KPiBoYW5kbGVyKSB0
aGUgZmVuY2Ugd2lsbCBiZSBzaWduYWxlZCBhbmQgdGhlIGRyaXZlciB3YW50cyB0aGUgY2FsbGJh
Y2sNCj4gc3R1ZmYgdG8gYmUgZG9uZS4NCj4NCj4gSWYgdGhhdCdzIG5vdCBkbWFfZmVuY2VzJyBj
YWxsYmFja3MnIHB1cnBvc2UsIHRoZW4gSSdkIGJlIGludGVyZXN0ZWQgaW4NCj4ga25vd2luZyB3
aGF0IHRoZWlyIHB1cnBvc2UgaXMsIGJlY2F1c2UgZnJvbSBteSBQT1YgdGhpcyBkaXNjdXNzaW9u
DQo+IHNlZW1zIHRvIGltcGx5IHRoYXQgd2UgZWZmZWN0aXZlbHkgbXVzdCBuZXZlciB1c2UgdGhl
bSBmb3IgYW55dGhpbmcuDQo+DQo+IEhvdyBjb3VsZCBpdCBldmVyIGJlIGRpZmZlcmVudD8gV2hv
LCBmb3IgZXhhbXBsZSwgcmVnaXN0ZXJzIGRtYV9mZW5jZQ0KPiBjYWxsYmFja3Mgd2hpbGUgbm90
IHNpZ25hbGluZyB0aGVtICJoaW1zZWxmIj8NCg0KTGV0IG1lIHRyeSB0byBpbXByb3ZlIHRoYXQg
ZXhwbGFuYXRpb24uDQoNCkZpcnN0IG9mIGFsbCB3ZSBoYXZlIGNvbXBvbmVudHMsIHRoZXkgY2Fu
IGJlIGRyaXZlcnMsIGZyYW1ld29ya3MsIGhlbHBlcnMgbGlrZSB0aGUgRFJNIHNjaGVkdWxlciBv
ciBnZW5lcmFsbHkgYW55IGNvZGUgd2hpY2ggaXMgbW9yZSBvciBsZXNzIHN0YW5kIGFsb25lLg0K
DQpUaGUgZGVmaW5pdGlvbiBvZiBjb21wb25lbnRzIGlzIGEgYml0IHRyaWNreSwgYnV0IGluIGdl
bmVyYWwgcGVvcGxlIHVzdWFsbHkgZ2V0IHdoYXQgdGhleSBtZWFuLiBFLmcuIGluIHRoaXMgY2Fz
ZSBoZXJlIHdlIGhhdmUgbm91dmVhdSBhcyBzaW5nbGUgY29tcG9uZW50Lg0KDQpOb3cgdGhlIERN
QSBmZW5jZSBpbnRlcmZhY2UgYWxsb3dzIHNlbmRpbmcgc2lnbmFscyBiZXR3ZWVuIGRpZmZlcmVu
dCBjb21wb25lbnRzIGluIGEgc3RhbmRhcmRpemVkIHdheSwgb25lIGNvbXBvbmVudCBjYW4gc2Vu
ZCBhIHNpZ25hbCB0byBhbm90aGVyIG9uZSBhbmQgdGhleSBkb24ndCBuZWNlc3NhcmlseSBuZWVk
IHRvIGtub3cgYW55dGhpbmcgZnJvbSBlYWNoIG90aGVyIGV4Y2VwdCB0aGF0IGJvdGggYXJlIHVz
aW5nIHRoZSBETUEgZmVuY2UgZnJhbWV3b3JrIGluIHRoZSBkb2N1bWVudGVkIG1hbm5lci4NCg0K
V2hlbiBhIGNvbXBvbmVudCBpcyBub3cgYm90aCB0aGUgcHJvdmlkZSBhbmQgdGhlIGNvbnN1bWVy
IGF0IHRoZSBzYW1lIHRpbWUgeW91IGFjdHVhbGx5IG5lZWQgYSByZWFzb24gZm9yIHRoYXQuIENv
dWxkIGJlIGZvciBleGFtcGxlIHRoYXQgaXQgd2FudHMgdG8gY29uc3VtZSBzaWduYWxzIGZyb20g
Ym90aCBpdHNlbGYgYXMgd2VsbCBhcyBvdGhlcnMsIGJ1dCB0aGlzIGRvZXNuJ3QgYXBwbHkgZm9y
IHRoaXMgdXNlIGNhc2UgaGVyZS4NCg0KQ29uc2lkZXJpbmcgcG9vbCBvciBiaWxsaWFyZCB5b3Ug
Y2FuIG9mIGNvdXJzZSBkbyBhIHRyaWNrIHNob3QgYW5kIHRyeSB0byBoaXQgdGhlIDgsIGJ1dCBn
b2luZyBzdHJhaWdodCBmb3IgaXQganVzdCBoYXMgYSBiZXR0ZXIgY2hhbmNlIHRvIHN1Y2NlZWQu
DQoNCj4NCj4NCj4+IMKgDQo+PiDCoA0KPj4+IMKgDQo+Pj4+IMKgDQo+Pj4+IEFkZGl0aW9uYWwg
dG8gdGhhdCB3ZSBkb24ndCBndWFyYW50ZWUgYW55IGNhbGxiYWNrIG9yZGVyIGZvciB0aGUNCj4+
Pj4gRE1BDQo+Pj4+IGZlbmNlIGFuZCBzbyBpdCBjYW4gYmUgdGhhdCBtaXggY2xlYW5pbmcgdXAg
dGhlIGNhbGxiYWNrIHdpdGgNCj4+Pj4gb3RoZXINCj4+Pj4gd29yayB3aGljaCBpcyBjZXJ0YWlu
bHkgbm90IGdvb2Qgd2hlbiB5b3Ugd2FudCB0byBndWFyYW50ZWUgdGhhdA0KPj4+PiB0aGUNCj4+
Pj4gY2xlYW51cCBoYXBwZW5zIHVuZGVyIHRoZSBzYW1lIGxvY2suDQo+Pj4+IMKgDQo+Pj4gwqAN
Cj4+PiBJc24ndCBteSBwZXJjZXB0aW9uIGNvcnJlY3QgdGhhdCB0aGUgcHJpbWFyeSBpc3N1ZSB5
b3UgaGF2ZSB3aXRoDQo+Pj4gdGhpcw0KPj4+IGFwcHJvYWNoIGlzIHRoYXQgZG1hX2ZlbmNlX3B1
dCgpIGlzIGNhbGxlZCBmcm9tIHdpdGhpbiB0aGUNCj4+PiBjYWxsYmFjaz8gT3INCj4+PiBkbyB5
b3UgYWxzbyB0YWtlIGlzc3VlIHdpdGggZGVsZXRpbmcgZnJvbSB0aGUgbGlzdD8NCj4+PiDCoA0K
Pj4gwqANCj4+IMKgV2VsbCBraW5kIG9mIGJvdGguIFRoZSBpc3N1ZSBpcyB0aGF0IHRoZSBjYWxs
ZXIgb2YNCj4+IGRtYV9mZW5jZV9zaWduYWwoKSBvciBkbWFfZmVuY2Vfc2lnbmFsX2xvY2tlZCgp
IG11c3QgaG9sZCB0aGUNCj4+IHJlZmVyZW5jZSB1bnRpbCB0aGUgZnVuY3Rpb24gcmV0dXJucy4N
Cj4+IMKgDQo+PiDCoFdoZW4geW91IGRvIHRoZSBsaXN0IGNsZWFudXAgYW5kIHRoZSBkcm9wIGlu
c2lkZSB0aGUgY2FsbGJhY2sgaXQgaXMNCj4+IHBlcmZlY3RseSBwb3NzaWJsZSB0aGF0IHRoZSBm
ZW5jZSBwb2ludGVyIGJlY29tZXMgc3RhbGUgYmVmb3JlIHlvdQ0KPj4gcmV0dXJuIGFuZCB0aGF0
J3MgcmVhbGx5IG5vdCBhIGdvb2QgaWRlYS4NCj4gSW4gb3RoZXIgd29yZHMsIHlvdSB3b3VsZCBw
cmVmZXIgaWYgdGhpcyBwYXRjaCB3b3VsZCBoYXZlIGEgZnVuY3Rpb24NCj4gd2l0aCBteSBjYWxs
YmFjaydzIGNvZGUgaW4gYSBmdW5jdGlvbiwgYW5kIHRoYXQgZnVuY3Rpb24gd291bGQgYmUNCj4g
Y2FsbGVkIGF0IGV2ZXJ5IHBsYWNlIHdoZXJlIHRoZSBkcml2ZXIgc2lnbmFscyBhIGZlbmNlPw0K
Pg0KPiBJZiB0aGF0J3MgeW91ciBvcGluaW9uLCB0aGVuLCBJT1csIGl0IHdvdWxkIG1lYW4gZm9y
IHVzIHRvIGdvIGFsbW9zdA0KPiBiYWNrIHRvIHN0YXR1cyBxdW8sIHdpdGggbm91dmVhdV9mZW5j
ZV9zaWduYWwyLjAsIGJ1dCB3aXRoIHRoZQ0KPiBkbWFfZmVuY2VfaXNfc2lnbmFsZWQoKSBwYXJ0
IGZpeGVkLg0KDQpXZWxsIGl0IGNvdWxkIHBvdGVudGlhbGx5IGJlIGNsZWFuZWQgdXAgbW9yZSwg
YnV0IGFzIGZhciBhcyBJIGNhbiBzZWUgb25seSB0aGUgdHdvIGxpbmVzIEkgcG9pbnRlZCBvdXQg
aW4gdGhlIG90aGVyIG1haWwgbmVlZCB0byBtb3ZlIGF0IHRoZSByaWdodCBwbGFjZSwgeWVzLg0K
DQpJIG1lYW4gaXQncyBqdXN0IHR3byBsaW5lcy4gSWYgeW91IG9wZW4gY29kZSB0aGF0IG9yIGlm
IHlvdSBtYWtlIGEgbm91dmVhdV9jbGVhbnVwX2xpc3RfcmVmKCkgZnVuY3Rpb24gKG9yIHNpbWls
YXIpIGlzIHBlcmZlY3RseSB1cCB0byB5b3UuDQoNClJlZ2FyZHMsDQpDaHJpc3RpYW4uDQoNCj4N
Cj4NCj4gUC4NCj4NCj4+IMKgDQo+PiDCoA0KPj4+IMKgDQo+Pj4NCj4+PiDCoA0KPj4+PiDCoA0K
Pj4+PiBJbnN0ZWFkIHRoZSBjYWxsIHRvIGRtYV9mZW5jZV9zaWduYWxfbG9ja2VkKCkgc2hvdWxk
IHByb2JhYmx5IGJlDQo+Pj4+IHJlbW92ZWQgZnJvbSBub3V2ZWF1X2ZlbmNlX3NpZ25hbCgpIGFu
ZCBpbnRvDQo+Pj4+IG5vdXZlYXVfZmVuY2VfY29udGV4dF9raWxsKCkgYW5kIG5vdXZlYXVfZmVu
Y2VfdXBkYXRlKCkuDQo+Pj4+DQo+Pj4+IFRoaXMgd2F5IG5vdXZlYXVfZmVuY2VfaXNfc2lnbmFs
ZWQoKSBjYW4gY2FsbCB0aGlzIGZ1bmN0aW9uIGFzDQo+Pj4+IHdlbGwuDQo+Pj4+IMKgDQo+Pj4g
wqANCj4+PiBXaGljaCAidGhpcyBmdW5jdGlvbiI/IGRtYV9mZW5jZV9zaWduYWxfbG9ja2VkKCkN
Cj4+PiDCoA0KPj4gwqANCj4+IMKgTm8gdGhlIGNsZWFudXAgZnVuY3Rpb24gZm9yIHRoZSBsaXN0
IGVudHJ5LiBXaGF0ZXZlciB5b3UgY2FsbCB0aGF0DQo+PiB0aGVuLCB0aGUgbmFtZSBub3V2ZWF1
X2ZlbmNlX3NpZ25hbCgpIGlzIHByb2JhYmx5IG5vdCBhcHByb3ByaWF0ZSBhbnkNCj4+IG1vcmUu
DQo+PiDCoA0KPj4gwqANCj4+PiDCoA0KPj4+DQo+Pj4gwqANCj4+Pj4gwqANCj4+Pj4gQlRXOiBu
b3V2ZWF1X2ZlbmNlX25vX3NpZ25hbGluZygpIGxvb2tzIGNvbXBsZXRlbHkgYnJva2VuIGFzDQo+
Pj4+IHdlbGwuIEl0DQo+Pj4+IGNhbGxzIG5vdXZlYXVfZmVuY2VfaXNfc2lnbmFsZWQoKSBhbmQg
dGhlbiBsaXN0X2RlbCgpIG9uIHRoZQ0KPj4+PiBmZW5jZQ0KPj4+PiBoZWFkLg0KPj4+PiDCoA0K
Pj4+IMKgDQo+Pj4gSSBjYW4gYXNzdXJlIHlvdSB0aGF0IGEgZ3JlYXQgbWFueSB0aGluZ3MgaW4g
Tm91dmVhdSBsb29rDQo+Pj4gY29tcGxldGVseQ0KPj4+IGJyb2tlbi4NCj4+Pg0KPj4+IFRoZSBx
dWVzdGlvbiBmb3IgdXMgaXMgYWx3YXlzIHRoZSBjb3N0LWJlbmVmaXQtcmF0aW8gd2hlbiBmaXhp
bmcNCj4+PiBidWdzLg0KPj4+IFRoZXJlIGFyZSBmaXhlcyB0aGF0IHNvbHZlIHRoZSBidWcgd2l0
aCByZWFzb25hYmxlIGVmZm9ydCwgYW5kDQo+Pj4gdGhlcmUNCj4+PiBhcmUgZ3JlYXQgcmV3b3Jr
cyB0b3dhcmRzIGFuIGlkZWFsIHN0YXRlLg0KPj4+IMKgDQo+PiDCoA0KPj4gwqBJIHdvdWxkIGp1
c3Qgc2ltcGx5IGRyb3AgdGhhdCBmdW5jdGlvbi4gQXMgZmFyIGFzIEkgY2FuIHNlZSBpdA0KPj4g
c2V2ZXJzIG5vIHB1cnBvc2Ugb3RoZXIgdGhhbiBkb2luZyBleGFjdGx5IHdoYXQgdGhlIGNvbW1v
biBETUEgZmVuY2UNCj4+IGNvZGUgZG9lcyBhbnl3YXkuDQo+PiDCoA0KPj4gwqBKdXN0IG9uZSBs
ZXNzIHRoaW5nIHdoaWNoIGNvdWxkIGZhaWwuDQo+PiDCoA0KPj4gwqBDaHJpc3RpYW4uDQo+PiDC
oA0KPj4gwqANCj4+PiDCoA0KPj4+DQo+Pj4gUC4NCj4+Pg0KPj4+DQo+Pj4gwqANCj4+Pj4gwqAN
Cj4+Pj4gQXMgZmFyIGFzIEkgY2FuIHNlZSB0aGF0IGlzIGNvbXBsZXRlbHkgc3VwZXJmbHVvdXMg
YW5kIHNob3VsZA0KPj4+PiBwcm9iYWJseSBiZSBkcm9wcGVkLiBJSVJDIEkgb25jZSBoYWQgYSBw
YXRjaCB0byBjbGVhbiB0aGF0IHVwIGJ1dA0KPj4+PiBpdA0KPj4+PiB3YXMgZHJvcHBlZCBmb3Ig
c29tZSByZWFzb24uDQo+Pj4+DQo+Pj4+IFJlZ2FyZHMsDQo+Pj4+IENocmlzdGlhbi4NCj4+Pj4N
Cj4+Pj4NCj4+Pj4gwqANCj4+Pj4+IMKgDQo+Pj4+PiArCWRtYV9mZW5jZV9wdXQoJmZlbmNlLT5i
YXNlKTsNCj4+Pj4+ICsJaWYgKHJldCkNCj4+Pj4+ICsJCXJldHVybiByZXQ7DQo+Pj4+PiArDQo+
Pj4+PiDCoAlyZXQgPSBmY3R4LT5lbWl0KGZlbmNlKTsNCj4+Pj4+IMKgCWlmICghcmV0KSB7DQo+
Pj4+PiDCoAkJZG1hX2ZlbmNlX2dldCgmZmVuY2UtPmJhc2UpOw0KPj4+Pj4gQEAgLTI0Niw4ICsy
NTEsNyBAQCBub3V2ZWF1X2ZlbmNlX2VtaXQoc3RydWN0IG5vdXZlYXVfZmVuY2UNCj4+Pj4+ICpm
ZW5jZSkNCj4+Pj4+IMKgCQkJcmV0dXJuIC1FTk9ERVY7DQo+Pj4+PiDCoAkJfQ0KPj4+Pj4gwqAN
Cj4+Pj4+IC0JCWlmIChub3V2ZWF1X2ZlbmNlX3VwZGF0ZShjaGFuLCBmY3R4KSkNCj4+Pj4+IC0J
CQludmlmX2V2ZW50X2Jsb2NrKCZmY3R4LT5ldmVudCk7DQo+Pj4+PiArCQlub3V2ZWF1X2ZlbmNl
X3VwZGF0ZShjaGFuLCBmY3R4KTsNCj4+Pj4+IMKgDQo+Pj4+PiDCoAkJbGlzdF9hZGRfdGFpbCgm
ZmVuY2UtPmhlYWQsICZmY3R4LT5wZW5kaW5nKTsNCj4+Pj4+IMKgCQlzcGluX3VubG9ja19pcnEo
JmZjdHgtPmxvY2spOw0KPj4+Pj4gQEAgLTI3MCw4ICsyNzQsOCBAQCBub3V2ZWF1X2ZlbmNlX2Rv
bmUoc3RydWN0IG5vdXZlYXVfZmVuY2UNCj4+Pj4+ICpmZW5jZSkNCj4+Pj4+IMKgDQo+Pj4+PiDC
oAkJc3Bpbl9sb2NrX2lycXNhdmUoJmZjdHgtPmxvY2ssIGZsYWdzKTsNCj4+Pj4+IMKgCQljaGFu
ID0gcmN1X2RlcmVmZXJlbmNlX3Byb3RlY3RlZChmZW5jZS0NCj4+Pj4+PiBjaGFubmVsLA0KPj4+
Pj4gbG9ja2RlcF9pc19oZWxkKCZmY3R4LT5sb2NrKSk7DQo+Pj4+PiAtCQlpZiAoY2hhbiAmJiBu
b3V2ZWF1X2ZlbmNlX3VwZGF0ZShjaGFuLCBmY3R4KSkNCj4+Pj4+IC0JCQludmlmX2V2ZW50X2Js
b2NrKCZmY3R4LT5ldmVudCk7DQo+Pj4+PiArCQlpZiAoY2hhbikNCj4+Pj4+ICsJCQlub3V2ZWF1
X2ZlbmNlX3VwZGF0ZShjaGFuLCBmY3R4KTsNCj4+Pj4+IMKgCQlzcGluX3VubG9ja19pcnFyZXN0
b3JlKCZmY3R4LT5sb2NrLCBmbGFncyk7DQo+Pj4+PiDCoAl9DQo+Pj4+PiDCoAlyZXR1cm4gZG1h
X2ZlbmNlX2lzX3NpZ25hbGVkKCZmZW5jZS0+YmFzZSk7DQo+Pj4+PiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL25vdXZlYXUvbm91dmVhdV9mZW5jZS5oDQo+Pj4+PiBiL2RyaXZlcnMvZ3B1
L2RybS9ub3V2ZWF1L25vdXZlYXVfZmVuY2UuaA0KPj4+Pj4gaW5kZXggOGJjMDY1YWNmZTM1Li5l
NmIyZGY3ZmRjNDIgMTAwNjQ0DQo+Pj4+PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vbm91dmVhdS9u
b3V2ZWF1X2ZlbmNlLmgNCj4+Pj4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9ub3V2ZWF1L25vdXZl
YXVfZmVuY2UuaA0KPj4+Pj4gQEAgLTEwLDYgKzEwLDcgQEAgc3RydWN0IG5vdXZlYXVfYm87DQo+
Pj4+PiDCoA0KPj4+Pj4gwqBzdHJ1Y3Qgbm91dmVhdV9mZW5jZSB7DQo+Pj4+PiDCoAlzdHJ1Y3Qg
ZG1hX2ZlbmNlIGJhc2U7DQo+Pj4+PiArCXN0cnVjdCBkbWFfZmVuY2VfY2IgY2I7DQo+Pj4+PiDC
oA0KPj4+Pj4gwqAJc3RydWN0IGxpc3RfaGVhZCBoZWFkOw0KPj4+Pj4gwqANCj4+Pj4+IMKgDQo+
Pj4+IMKgwqANCj4+PiDCoMKgDQo+PiDCoA0KPj4gwqANCg==

--------------6ev6XXZJ7eFoz90WOzd3aYpc
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 8bit

<!DOCTYPE html><html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    Am 03.04.25 um 16:40 schrieb Philipp Stanner:<br>
    <blockquote type="cite" cite="mid:36b076dc17083f9edd9b100bd8fa57badde41158.camel@mailbox.org"><span style="white-space: pre-wrap">
</span>
      <blockquote type="cite">
        <blockquote type="cite">
          <blockquote type="cite">
            <blockquote type="cite">
              <pre class="moz-quote-pre" wrap="">&nbsp;
</pre>
            </blockquote>
            <pre class="moz-quote-pre" wrap="">&nbsp;
That looks like a really really awkward approach. The driver
basically uses a the DMA fence infrastructure as middle layer and
callbacks into itself to cleanup it's own structures.
&nbsp;
</pre>
          </blockquote>
          <pre class="moz-quote-pre" wrap="">&nbsp;
What else are callbacks good for, if not to do something
automatically
when the fence gets signaled?
&nbsp;
</pre>
        </blockquote>
        <pre class="moz-quote-pre" wrap="">&nbsp;
&nbsp;Well if you add a callback for a signal you issued yourself then
that's kind of awkward.
&nbsp;
&nbsp;E.g. you call into the DMA fence code, just for the DMA fence code
to call yourself back again.
</pre>
      </blockquote>
      <pre class="moz-quote-pre" wrap="">
Now we're entering CS-Philosophy, because it depends on who &quot;you&quot; and
&quot;yourself&quot; are. In case of the driver, yes, naturally it registers a
callback because at some other place (e.g., in the driver's interrupt
handler) the fence will be signaled and the driver wants the callback
stuff to be done.

If that's not dma_fences' callbacks' purpose, then I'd be interested in
knowing what their purpose is, because from my POV this discussion
seems to imply that we effectively must never use them for anything.

How could it ever be different? Who, for example, registers dma_fence
callbacks while not signaling them &quot;himself&quot;?</pre>
    </blockquote>
    <br>
    Let me try to improve that explanation.<br>
    <br>
    First of all we have components, they can be drivers, frameworks,
    helpers like the DRM scheduler or generally any code which is more
    or less stand alone.<br>
    <br>
    The definition of components is a bit tricky, but in general people
    usually get what they mean. E.g. in this case here we have nouveau
    as single component.<br>
    <br>
    Now the DMA fence interface allows sending signals between different
    components in a standardized way, one component can send a signal to
    another one and they don't necessarily need to know anything from
    each other except that both are using the DMA fence framework in the
    documented manner.<br>
    <br>
    When a component is now both the provide and the consumer at the
    same time you actually need a reason for that. Could be for example
    that it wants to consume signals from both itself as well as others,
    but this doesn't apply for this use case here.<br>
    <br>
    Considering pool or billiard you can of course do a trick shot and
    try to hit the 8, but going straight for it just has a better chance
    to succeed.<br>
    <br>
    <blockquote type="cite" cite="mid:36b076dc17083f9edd9b100bd8fa57badde41158.camel@mailbox.org">
      <pre class="moz-quote-pre" wrap="">


</pre>
      <blockquote type="cite">
        <pre class="moz-quote-pre" wrap="">
&nbsp;
&nbsp;
</pre>
        <blockquote type="cite">
          <pre class="moz-quote-pre" wrap="">&nbsp;
</pre>
          <blockquote type="cite">
            <pre class="moz-quote-pre" wrap="">&nbsp;
Additional to that we don't guarantee any callback order for the
DMA
fence and so it can be that mix cleaning up the callback with
other
work which is certainly not good when you want to guarantee that
the
cleanup happens under the same lock.
&nbsp;
</pre>
          </blockquote>
          <pre class="moz-quote-pre" wrap="">&nbsp;
Isn't my perception correct that the primary issue you have with
this
approach is that dma_fence_put() is called from within the
callback? Or
do you also take issue with deleting from the list?
&nbsp;
</pre>
        </blockquote>
        <pre class="moz-quote-pre" wrap="">&nbsp;
&nbsp;Well kind of both. The issue is that the caller of
dma_fence_signal() or dma_fence_signal_locked() must hold the
reference until the function returns.
&nbsp;
&nbsp;When you do the list cleanup and the drop inside the callback it is
perfectly possible that the fence pointer becomes stale before you
return and that's really not a good idea.
</pre>
      </blockquote>
      <pre class="moz-quote-pre" wrap="">
In other words, you would prefer if this patch would have a function
with my callback's code in a function, and that function would be
called at every place where the driver signals a fence?

If that's your opinion, then, IOW, it would mean for us to go almost
back to status quo, with nouveau_fence_signal2.0, but with the
dma_fence_is_signaled() part fixed.</pre>
    </blockquote>
    <br>
    Well it could potentially be cleaned up more, but as far as I can
    see only the two lines I pointed out in the other mail need to move
    at the right place, yes.<br>
    <br>
    I mean it's just two lines. If you open code that or if you make a
    nouveau_cleanup_list_ref() function (or similar) is perfectly up to
    you.<br>
    <br>
    Regards,<br>
    Christian.<br>
    <br>
    <blockquote type="cite" cite="mid:36b076dc17083f9edd9b100bd8fa57badde41158.camel@mailbox.org">
      <pre class="moz-quote-pre" wrap="">


P.

</pre>
      <blockquote type="cite">
        <pre class="moz-quote-pre" wrap="">&nbsp;
&nbsp;
</pre>
        <blockquote type="cite">
          <pre class="moz-quote-pre" wrap="">&nbsp;

&nbsp;
</pre>
          <blockquote type="cite">
            <pre class="moz-quote-pre" wrap="">&nbsp;
Instead the call to dma_fence_signal_locked() should probably be
removed from nouveau_fence_signal() and into
nouveau_fence_context_kill() and nouveau_fence_update().

This way nouveau_fence_is_signaled() can call this function as
well.
&nbsp;
</pre>
          </blockquote>
          <pre class="moz-quote-pre" wrap="">&nbsp;
Which &quot;this function&quot;? dma_fence_signal_locked()
&nbsp;
</pre>
        </blockquote>
        <pre class="moz-quote-pre" wrap="">&nbsp;
&nbsp;No the cleanup function for the list entry. Whatever you call that
then, the name nouveau_fence_signal() is probably not appropriate any
more.
&nbsp;
&nbsp;
</pre>
        <blockquote type="cite">
          <pre class="moz-quote-pre" wrap="">&nbsp;

&nbsp;
</pre>
          <blockquote type="cite">
            <pre class="moz-quote-pre" wrap="">&nbsp;
BTW: nouveau_fence_no_signaling() looks completely broken as
well. It
calls nouveau_fence_is_signaled() and then list_del() on the
fence
head.
&nbsp;
</pre>
          </blockquote>
          <pre class="moz-quote-pre" wrap="">&nbsp;
I can assure you that a great many things in Nouveau look
completely
broken.

The question for us is always the cost-benefit-ratio when fixing
bugs.
There are fixes that solve the bug with reasonable effort, and
there
are great reworks towards an ideal state.
&nbsp;
</pre>
        </blockquote>
        <pre class="moz-quote-pre" wrap="">&nbsp;
&nbsp;I would just simply drop that function. As far as I can see it
severs no purpose other than doing exactly what the common DMA fence
code does anyway.
&nbsp;
&nbsp;Just one less thing which could fail.
&nbsp;
&nbsp;Christian.
&nbsp;
&nbsp;
</pre>
        <blockquote type="cite">
          <pre class="moz-quote-pre" wrap="">&nbsp;

P.


&nbsp;
</pre>
          <blockquote type="cite">
            <pre class="moz-quote-pre" wrap="">&nbsp;
As far as I can see that is completely superfluous and should
probably be dropped. IIRC I once had a patch to clean that up but
it
was dropped for some reason.

Regards,
Christian.


&nbsp;
</pre>
            <blockquote type="cite">
              <pre class="moz-quote-pre" wrap="">&nbsp;
+	dma_fence_put(&amp;fence-&gt;base);
+	if (ret)
+		return ret;
+
&nbsp;	ret = fctx-&gt;emit(fence);
&nbsp;	if (!ret) {
&nbsp;		dma_fence_get(&amp;fence-&gt;base);
@@ -246,8 +251,7 @@ nouveau_fence_emit(struct nouveau_fence
*fence)
&nbsp;			return -ENODEV;
&nbsp;		}
&nbsp;
-		if (nouveau_fence_update(chan, fctx))
-			nvif_event_block(&amp;fctx-&gt;event);
+		nouveau_fence_update(chan, fctx);
&nbsp;
&nbsp;		list_add_tail(&amp;fence-&gt;head, &amp;fctx-&gt;pending);
&nbsp;		spin_unlock_irq(&amp;fctx-&gt;lock);
@@ -270,8 +274,8 @@ nouveau_fence_done(struct nouveau_fence
*fence)
&nbsp;
&nbsp;		spin_lock_irqsave(&amp;fctx-&gt;lock, flags);
&nbsp;		chan = rcu_dereference_protected(fence-
</pre>
              <blockquote type="cite">
                <pre class="moz-quote-pre" wrap="">channel,
</pre>
              </blockquote>
              <pre class="moz-quote-pre" wrap="">lockdep_is_held(&amp;fctx-&gt;lock));
-		if (chan &amp;&amp; nouveau_fence_update(chan, fctx))
-			nvif_event_block(&amp;fctx-&gt;event);
+		if (chan)
+			nouveau_fence_update(chan, fctx);
&nbsp;		spin_unlock_irqrestore(&amp;fctx-&gt;lock, flags);
&nbsp;	}
&nbsp;	return dma_fence_is_signaled(&amp;fence-&gt;base);
diff --git a/drivers/gpu/drm/nouveau/nouveau_fence.h
b/drivers/gpu/drm/nouveau/nouveau_fence.h
index 8bc065acfe35..e6b2df7fdc42 100644
--- a/drivers/gpu/drm/nouveau/nouveau_fence.h
+++ b/drivers/gpu/drm/nouveau/nouveau_fence.h
@@ -10,6 +10,7 @@ struct nouveau_bo;
&nbsp;
&nbsp;struct nouveau_fence {
&nbsp;	struct dma_fence base;
+	struct dma_fence_cb cb;
&nbsp;
&nbsp;	struct list_head head;
&nbsp;
&nbsp;
</pre>
            </blockquote>
            <pre class="moz-quote-pre" wrap="">&nbsp;&nbsp;
</pre>
          </blockquote>
          <pre class="moz-quote-pre" wrap="">&nbsp;&nbsp;
</pre>
        </blockquote>
        <pre class="moz-quote-pre" wrap="">&nbsp;
&nbsp;
</pre>
      </blockquote>
      <pre class="moz-quote-pre" wrap="">
</pre>
    </blockquote>
    <br>
  </body>
</html>

--------------6ev6XXZJ7eFoz90WOzd3aYpc--

--===============0948472466270747220==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

--===============0948472466270747220==--
