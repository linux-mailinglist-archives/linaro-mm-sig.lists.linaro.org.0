Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E4D4AF77BC
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  3 Jul 2025 16:37:45 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 447C6455F1
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  3 Jul 2025 14:37:44 +0000 (UTC)
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (mail-dm3nam02on2060.outbound.protection.outlook.com [40.107.95.60])
	by lists.linaro.org (Postfix) with ESMTPS id BFD3241420
	for <linaro-mm-sig@lists.linaro.org>; Thu,  3 Jul 2025 14:37:29 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=vr4BfFWK;
	arc=pass ("microsoft.com:s=arcselector10001:i=1");
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.107.95.60 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	dmarc=pass (policy=quarantine) header.from=amd.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=TQUvqFtTobfkdouwoZY7G+bixl35o+DdZmtQJJlX8e8oCjZwS1SbK/aJfgXcCuBNTzMB4nfveOsbf/peotxcQPLH5VnK9LPqFjB+EL0apSRDLRjLYcmZ4NiC97cdvBM+c8pLVtmtIKzqUFhzLb6U9kjo53Jf/9GnH/ELjip7KjrrEsngfC6qbPSItm5NOOzV8jq2LQV66L5iWUG17zwRZqyKtxdedjHTxKD7vFQ15hx1CfR5cVFnlE0JANxl4haFg/jEqIQLNtGzoKXo8LuiY8EtA2/gtrXO1Y60m5FqHHsIWmavzafOCPttuMJNi1IqYS/3DNrZxOEW7DT4Si+qKg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=BxHMaho2erQqDxTATB+OACZguSTthkklO4vjRfJ4w84=;
 b=mGHuNS5E5fz6URRx1D6MFrBFcZTwadUiMm+8JKRJysdBg4GHQUMdZZT4458xhn+foBgdo9CV9fx4z65etkMceu6ajatSoJsIomtL1xPFTo8cEQUO+rPM9qdTcGMAX3C46fKtaPWo4fihSegkop+tB06o3E/29+yYgagYL0GFM7/hK46vLdQttuxExp4KkFHyqnCn1UK3ZNLlLBY4BrYwk/BMha+4FGpU9FK8N/HMbhP50qoMVAl+RoxsEa2jDsZ/rhAD+GxnKM5ewKi9r8VHLEEXCRo8oOYrf7GOjcbA7wQQUcIdqU/+Nd2kIvcyQW50ioSY9+fT743+c2aPFCp0lQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=BxHMaho2erQqDxTATB+OACZguSTthkklO4vjRfJ4w84=;
 b=vr4BfFWKBspdtH3EAZRl1qIqI6Fgd4UcMLCT+r4XSBc7RLAWxmy0PiaZHaolS/bTYAwkOdFTxRKkuDRQl/qq6PGVgnvDEE3G4ptYkn7JcLd3/OFFzG+Y14o7Fx3NPCUhnAYKC5ziW+PYvCaPLfP1JKuHZ0sQPl+UkFwPOZeZ0rk=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by DS0PR12MB7897.namprd12.prod.outlook.com (2603:10b6:8:146::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8901.19; Thu, 3 Jul
 2025 14:37:25 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5%5]) with mapi id 15.20.8901.018; Thu, 3 Jul 2025
 14:37:24 +0000
Message-ID: <cccb46ae-8b20-47fe-92b2-059a0afdf95f@amd.com>
Date: Thu, 3 Jul 2025 16:37:19 +0200
User-Agent: Mozilla Thunderbird
To: Christoph Hellwig <hch@infradead.org>,
 Pavel Begunkov <asml.silence@gmail.com>
References: <cover.1751035820.git.asml.silence@gmail.com>
 <aGaSb5rpLD9uc1IK@infradead.org>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <aGaSb5rpLD9uc1IK@infradead.org>
X-ClientProxiedBy: BL1PR13CA0133.namprd13.prod.outlook.com
 (2603:10b6:208:2bb::18) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|DS0PR12MB7897:EE_
X-MS-Office365-Filtering-Correlation-Id: c92afd25-501b-47ca-5709-08ddba3f206e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|7416014|1800799024;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?ZWx4VkVPczdvQW1qVTM2RkRJbnVKLzFiQVdEZlZwN2tqckViY0hEdmtLM0hT?=
 =?utf-8?B?WktZZzNPOFltNVlCUFNnTjgybG5kWXpDMndhc1Vlc0t0L0h3UkpOUVhsZlFY?=
 =?utf-8?B?aDdQdXN3elFUcTVVZjRZQzFLNVdFNGozazBzM2Z3WXpCU1dBc21wcDNXc1pO?=
 =?utf-8?B?Z0xXclI0aVcyU2cwdzFwY0ZZaHc4VExSYjNDbm91VWp5SytoMXROdHZXY0VZ?=
 =?utf-8?B?VHU2akRQSUluaVhFMjJGQjQ1eGZuT1REeWIwVDZJdVZwZHlKLzFZNXA4Y1VP?=
 =?utf-8?B?enRId2hFT2o0RThwRmR4Zk96WGNiODBaZjVSMStCSytJVFE1N3d6QVVDTzlI?=
 =?utf-8?B?eXpiUCtVMEYvL2NpcmhFOEVjckVvT1o5bUliTVIzK0NMTWJxNEJ3M2RhLzZs?=
 =?utf-8?B?Y2FJQytlTXcrTzErb3RLTW84bmtmZDA4dnlCQ2tDN2pkUEg1dkEvUnhXYnJm?=
 =?utf-8?B?b08xTzJYaFRXZ0JUSVYrSjNZNzF1U01NUTlxTGRZUFF5NnJSS1c2My9rU0N0?=
 =?utf-8?B?NjA0V1dlRk0xbExvN2h6MzRiYWdsc0ZZK1k2STZNZ0ZxREJIZStTN3dyWWpE?=
 =?utf-8?B?VzFjNU1lUUpQT0VUNFE0MHFiTEZUUW1iK3l3Sm8vYlVOTFloYjBWNDNMVldB?=
 =?utf-8?B?elhVZ2Y0M2xZM0xrTnk0M3JtS3ZQYUtKaHQ0SW01TnA3TnZicnE3cGZkTW9h?=
 =?utf-8?B?bk5CWVo4RWRYaWRJQmVnWnJJQUtNeDFoZUF2UXlDMnBFMEcxdlk2cnlBdVlF?=
 =?utf-8?B?UnVPRm1vakExWU1jaFpCNW1GVjBkMldNRnpDUVduakJORVdkYzgxZjRsQ3g5?=
 =?utf-8?B?NkJqOTM2eDhURk1vbjRmVTdhMW02WWhTUlllUkJ3djJqdEN4VDRlM1BieDRL?=
 =?utf-8?B?ZGZrZjBzVm5qbTVXbjFxUmR6bjFSNFFpOTZUcmQ2d3UwcDJkOFJkY01SbGc3?=
 =?utf-8?B?bHhucmxwQlJWSVhsVkpxMENXTlN2L1Rla2l4dUJpRmhiQW81NUNuZWc1NlMr?=
 =?utf-8?B?eGlQZ2FqSnFpeVA3YkhqMnpjSE90akgzU1NseU1oL2srNnV1NC9sMzdXd2xZ?=
 =?utf-8?B?djA5dnI5b2xhOW9YSWlXUmVoL0JnSEREYm9LZk4rejZ5S1UxcTZYZ0tyV0s1?=
 =?utf-8?B?eFpKYnFSK3pnR2JUQ0pWNTJESUlkMVFYYmpSVWFhcnhBa2ZvRVVYaTc3WU1j?=
 =?utf-8?B?dHFkR2tDc0ZnaGpEc2cwN0VwS25KbmNXTmxPMHNrQmlsTCt2bUEyWlJZcVdw?=
 =?utf-8?B?UktyWHhyMENwUE1mMUljSXZTV05QdmdraDdqV01wZ21BZVh2ZlNLZEtnUFM4?=
 =?utf-8?B?bjBGcklzejdlZXhRT1dOckVnb1BJN0NhV0hNK1NhUkRYNkh0RXBJaXFnazcv?=
 =?utf-8?B?dDRNU21aTkpRU0V4Q3hzVU9DRFNoL3NZeGE3bTlrUlRvM0hIV3RWQ2pxT0JZ?=
 =?utf-8?B?clY5a09zcVVoa1gzVWhaajZtL05jUUcrK2UrZkVhWVNycS9ISXM4cmc2cUJS?=
 =?utf-8?B?RlZJcFVOTzBPNHVmMjVmdnRpdHZ6M2tpOFlnUzk3MGJvRUdWdTFsdTZBWUp6?=
 =?utf-8?B?V0hGTmQvNEszb0MwSm1FM2xTUWZiTUNCWCtPQys1KzFmc0N4R1Q1dFdZN3dE?=
 =?utf-8?B?ZG9SYnRoRmFoNXNaejlqb3F3aW1EY1hIZ3poRG1uU1BmclRNMm9meDFGZGZS?=
 =?utf-8?B?ejUyeUw2UkVVWVFXRHdTck8rWWZTU0lUanR2R0pudlVKbWpiWm9QUHYzY1Vp?=
 =?utf-8?B?VEI1ditZYkhjdEVzVmxzVHlNaEVIUVIxSVF2dUV0OXlCeUR5bTlMdlUzYi9k?=
 =?utf-8?B?RXhxeVNFS3ZHYXprRFFrMzVzTTNuKy9vN2FFM0RrTHNtbmtnVGdYdUo5TDVk?=
 =?utf-8?B?cXovQ1NaejBiRnIybEhMVGFBb0NXSzVUWFNnZDVHOEtBb2s2bkg0b2N5ODBI?=
 =?utf-8?Q?QbOqz7vuCq8=3D?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(7416014)(1800799024);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?SmxHVTdpRTJ5VWt6ZXl3aVBVNUpuUWZiRjBTbHBBTFNuT1hGMkNBOWNHczl4?=
 =?utf-8?B?Tnh5QmhJY3Uwd0wzLzVMT2FEYzliSEMrR0RwSVVlREU1YUpKTVl5WmsyYm1F?=
 =?utf-8?B?U1pJdnZHWi85QUkzWDZ2UXZwN1BuU0NlRGN0TTR3RDlWV202Y2x4dEg5dDVZ?=
 =?utf-8?B?aDdkMTFyWU81ZmhIdWNQWm9pWVROQmdTalNtYXlpUXNPb3JFZ0hucXByTTZP?=
 =?utf-8?B?ZHhwM2hUUFF6cnVKcVRLYWhGa2xBcUM0ZWtJeFhrTG1PSjJCc0o0SEcvU2tw?=
 =?utf-8?B?WEhWVU0xa2NvSk9BdHdueCtPSnVWOVhYVE94YlVkU1ZQNnVkQmJhSnFGUEVC?=
 =?utf-8?B?RUFWdm1IYlVqSlp1T1A5UUdpdnJoYzFUWWtTV3NYTzRabUVncjlMZHhtNG1r?=
 =?utf-8?B?cjdXUlR6eTByN3N2SFljWFVyUUN4OU96YWoveU8wZHNKb2ZmMUhtM0d2LzJi?=
 =?utf-8?B?MGw3UzRMdHFnc1dEVitvQytoUDVjME9sczBoNEZBb1g3SERZT2tmM3phUlRz?=
 =?utf-8?B?RVJBbStkcmtqVW5GYytsOWhjMzFqeGs2SXZMd1I0YzhhNDlORTEvTnJyR2Mr?=
 =?utf-8?B?NmNxeEZRb296UStiOVpPbmRXNWtRdVZwcm10UXRJN29FVlhmdlg0UnV1L3Zk?=
 =?utf-8?B?b2x1d202RFhmajJzTjRoajFUa0hPSWMvS3JKUjl0SG5HRHc5d0paL093aElN?=
 =?utf-8?B?QlY0amlwd0xvdjEyUVRoK1IxTnJmOHN2UHlad1NDRGV2bXJwMXNVRWVvUnNz?=
 =?utf-8?B?YnZwcllMYTY5RmM5aGhxWGhoeGovVEVmd3YwWnpPeHhXazhZMUNnYnQzY0tm?=
 =?utf-8?B?ZXNlbVFCbXczeTVzOTVZbytLdmQyK1Zjd25RMHVpR1FYMFp4bzFsZlJNcWoz?=
 =?utf-8?B?VVBxMTUzRFdHTUw0ZmhNUnM3ZzhhSHRXT1hMOEcwTVRoV2JUL0NKcS9WK2F1?=
 =?utf-8?B?MXUveEMzeHQ3Qk9ZN0V4REpmUzhHdWdHbjc0U2VIQlp4MnZDd3NldWtkREhn?=
 =?utf-8?B?aW9kNVJSaTlmdmpPaURsRjlseWxnVWV3U1BWZkxUeGNXT01YZHJLdHh0Nklp?=
 =?utf-8?B?Zi96eUVvZElhbGlMcmxtdDM4R3ZDVFBINUR1b3A5OWdpd2hLM0JPTXNQZ2Jx?=
 =?utf-8?B?a3I3TmZYTUxaWW5BY0lJK3pvbFhWZjd4RGZEcXk2T2I3WGtxOWdVeW9kUzZo?=
 =?utf-8?B?SFRDYlNQS0RFR1dseXFNU29Ha1YzRlBBVnY4T3VKWlFVZ01OaENOTERsRGtK?=
 =?utf-8?B?YzFlc3laVkExM0NkWk1lSitBaUd3Wk55MzU5RTNyUy9MajNxeFh6cnp2OGFL?=
 =?utf-8?B?TU1SVHNUT2NFc0ovZXNDRDljV3ZheUlDUDhQN1VnTDd1NGNmRHNYRUxZYUNZ?=
 =?utf-8?B?WU1DMXU1NUtKR2lpdHRsdTNSRHcrL2RHWCtoa0dneWEwRWVuREF2c0gvVUdp?=
 =?utf-8?B?RWRWZ0tKZjMvN0o3K3lROXBSZTBXcTdWeEVjbkN4Q215OHFneGJ6NXVNSHNT?=
 =?utf-8?B?YXlPRkxaaEFVNmRKNTZWV0FIYVZsaVo1MHJBSWsvQlExSEpsVUhVanRvUEpn?=
 =?utf-8?B?LzRYajFlRkRLUXdjei90NTdQdGlPeWVxUzl5RWkwR1VaNWZNYXo5UmRqcVJ0?=
 =?utf-8?B?RzdtMFdZTzFPRnpCWm45NXhQVkVYeGZqRHdRSmMvUHd1TU0wUG16b2hsd3dO?=
 =?utf-8?B?OFpBczNmM3QzK3BMRUxac1VTbVdUcGRQVDF0N1JiS2FibkljSjkxd29xN3pF?=
 =?utf-8?B?Z3Fua0ZaVG1kOTZwbE1hSmZ5dENCU1BVUnp1cFJ3Vmd1TTAzcGpqSGtRZ3hh?=
 =?utf-8?B?SzR4VVBlS0RjVkJXb0xFYTJobUJQSFNiSUdSelJ3ZDJ0clFhbVRCZ0dtNkFN?=
 =?utf-8?B?SzJOK2IyaHdqMnEzVm5INDRFT2RaZ3J1bXREN1hiVitxdXRmdUY0MXlZNmtR?=
 =?utf-8?B?UDhpcE41cjBGYkRGQmRQTFUxcERnTWlqNmpyc2xGWFd5ZkdVWTFPMDg0amtF?=
 =?utf-8?B?eU4xa3lnclNwRUM0bnVlZVpydTdtd1lLMzd1WHphNG45TjU5RzdxQ2xETWEw?=
 =?utf-8?B?Q3FrbElra2plcWhPdU1EeUlQTHE5MXE2VEhDQUtJUVRLWWVqRStZaHR4d1JP?=
 =?utf-8?Q?jCpc6+mYLxl6HwxDd+xtlPObE?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c92afd25-501b-47ca-5709-08ddba3f206e
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Jul 2025 14:37:24.8327
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: C1K/4pYPWU43t+kChGriSXNTmOCcs4TUofrHjMimtXftHm9KlkKfLLixRzXWwnWl
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR12MB7897
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: BFD3241420
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.50 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:40.107.0.0/16];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.107.95.60:from];
	ASN(0.00)[asn:8075, ipnet:40.104.0.0/14, country:US];
	TAGGED_RCPT(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[13];
	FREEMAIL_TO(0.00)[infradead.org,gmail.com];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	URIBL_BLOCKED(0.00)[amd.com:dkim,amd.com:mid];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	RBL_SENDERSCORE_REPUT_BLOCKED(0.00)[40.107.95.60:from];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[amd.com:+]
X-Rspamd-Action: no action
Message-ID-Hash: 5RCO4EEH77ONWMS6VUP4UJGYXF5C2WLV
X-Message-ID-Hash: 5RCO4EEH77ONWMS6VUP4UJGYXF5C2WLV
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: io-uring@vger.kernel.org, linux-block@vger.kernel.org, linux-nvme@lists.infradead.org, linux-fsdevel@vger.kernel.org, Keith Busch <kbusch@kernel.org>, David Wei <dw@davidwei.uk>, Vishal Verma <vishal1.verma@intel.com>, Sumit Semwal <sumit.semwal@linaro.org>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC 00/12] io_uring dmabuf read/write support
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/5RCO4EEH77ONWMS6VUP4UJGYXF5C2WLV/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On 03.07.25 16:23, Christoph Hellwig wrote:
> [Note: it would be really useful to Cc all relevant maintainers]
> 
> On Fri, Jun 27, 2025 at 04:10:27PM +0100, Pavel Begunkov wrote:
>> This series implements it for read/write io_uring requests. The uAPI
>> looks similar to normal registered buffers, the user will need to
>> register a dmabuf in io_uring first and then use it as any other
>> registered buffer. On registration the user also specifies a file
>> to map the dmabuf for.
> 
> Just commenting from the in-kernel POV here, where the interface
> feels wrong.
> 
> You can't just expose 'the DMA device' up file operations, because
> there can be and often is more than one.  Similarly stuffing a
> dma_addr_t into an iovec is rather dangerous.
> 
> The model that should work much better is to have file operations
> to attach to / detach from a dma_buf, and then have an iter that
> specifies a dmabuf and offsets into.  That way the code behind the
> file operations can forward the attachment to all the needed
> devices (including more/less while it remains attached to the file)
> and can pick the right dma address for each device.
> 
> I also remember some discussion that new dma-buf importers should
> use the dynamic imported model for long-term imports, but as I'm
> everything but an expert in that area I'll let the dma-buf folks
> speak.

Completely correct.

As long as you don't have a really good explanation and some mechanism to prevent abuse long term pinning of DMA-bufs should be avoided.

Regards,
Christian.
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
