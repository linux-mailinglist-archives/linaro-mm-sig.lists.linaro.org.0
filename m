Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 62451AA99D5
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  5 May 2025 18:56:46 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6BB86454F0
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  5 May 2025 16:56:45 +0000 (UTC)
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (mail-mw2nam10on2059.outbound.protection.outlook.com [40.107.94.59])
	by lists.linaro.org (Postfix) with ESMTPS id A4D263E93A
	for <linaro-mm-sig@lists.linaro.org>; Mon,  5 May 2025 16:56:30 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=VOMPUeg1;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1");
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.107.94.59 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=fzQFlGTHw49u9yfsCb8AerY//WBItMNIEGySpjYM9Ek6cQqDK9K3sQHT6K5GBuDOLAx06RouTJbhMNQipkn6Vxhuls957GVSkTb1GAXhXwpQdtM3MPR0CPvwGVndIx7YA0H27NlWv/Hq90O7xTOgJERY8zwM3J7AhjihE6we/+f0UTYoBS+L21nDfOlq28l5sfC4Pyi81cf/t6QXroA1STtbUYp7lpmbV3KBoDTG/hjtpGfqC+3U0uQGRBPt+cOXi7Mrr2TxJscurk0sbGkEuu9SnKrFB35NiCY9ylhpDNQMUSMBkwxyMjubNNT7Ru87eJ5dRkbyFMX/qmdaZDSU6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GjjoBsMpREQy5vE3GtrRfJjR68T+koDjMVZphYHHwLk=;
 b=ulOo3fXPEYhqjzqlvCl745gYpBeawaFF4TUSbIljWPr/YABggUjIsrf82sb2F8C3DzIibVTgpIa7AOUeODGcD2yS8Z9RGWHbhfi6A+jy3IY0oUeKDwcGRCY+RecMdvG/NL6OPPzfIT/ThF2t2HddZwABW4b/uaQGodpTXKWQoIU0VHD4aCJXbNBHJc4paSX5YBYjYg78J7gZ054HitZ+PgepdQLxNS34gy96RXVBj9mi4Fd/VRLhgc0dBfoUYkyItMj6dwMna+T5CkH8aFKON1UuOKnmv953F7BSJsoBRIBplWQyoMD3vHfpChM8740QVz4+s+i4JdSnfos5LkTtNQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GjjoBsMpREQy5vE3GtrRfJjR68T+koDjMVZphYHHwLk=;
 b=VOMPUeg1BX5ayd0EpHcmOvPgJFRvFdsf03zFkRuEAbjJiRQkWdvtwHu5TPnLfn7UuYVg5KTWiDGgClAW5MfAlzDES4lDkOpaLEyvFmSkOxAcc60JClCnRXnni0Rd/PCHS+GNeoA9B0QTLsJpeBZzMjk6CIjn8vHhQFZ/bxm6a7Q=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by IA0PR12MB7529.namprd12.prod.outlook.com (2603:10b6:208:431::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8699.23; Mon, 5 May
 2025 16:56:27 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5%7]) with mapi id 15.20.8678.028; Mon, 5 May 2025
 16:56:27 +0000
Message-ID: <ec43f447-095e-4baf-8610-8279b565f162@amd.com>
Date: Mon, 5 May 2025 18:56:17 +0200
User-Agent: Mozilla Thunderbird
To: "T.J. Mercier" <tjmercier@google.com>
References: <20250504224149.1033867-1-tjmercier@google.com>
 <20250504224149.1033867-3-tjmercier@google.com>
 <26ca8ddf-0d78-462f-a47d-a1128b2e058f@amd.com>
 <CABdmKX2iNk22h-KxUr4yvZO80yeRRjMfoC7yjiZ-aR_f1k402g@mail.gmail.com>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <CABdmKX2iNk22h-KxUr4yvZO80yeRRjMfoC7yjiZ-aR_f1k402g@mail.gmail.com>
X-ClientProxiedBy: MN2PR16CA0037.namprd16.prod.outlook.com
 (2603:10b6:208:234::6) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|IA0PR12MB7529:EE_
X-MS-Office365-Filtering-Correlation-Id: 060a0f8e-c03c-4418-bba4-08dd8bf5c69e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|366016|1800799024|7416014|376014|7053199007;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?MmUvMkxKcldSdlpwVmRmNUZ6YWhDQ1JtVnV6bHlJZXFxR3lPVWppV3lPY3gr?=
 =?utf-8?B?MEFUcER6YkJWMUNrSXViRnlLa2YwdEk0L3lrQ2xUUlB5MXZDM0hoUUZ5Z29l?=
 =?utf-8?B?VVZvalo4Y1dCU2pjZXVxWk9OMjZZcXlSTGV6bFUzR0pVT3lSNm9FK3JWdW1p?=
 =?utf-8?B?ZVdVRkxadzNvanBidWV5QXJSTHlaVjFHK2FpaDRwWUJCREcyaE1SV3Q2VEsy?=
 =?utf-8?B?M0MxS1VBb0lhYUJQMmdtdFFndkVGaGJ1eU94dlpWdnFvaUQvTUtVWEZISEJC?=
 =?utf-8?B?Ry91QzNlaFNoeTlKTUlQRTNlbktnNEUwS1hlanMyMzBVcUROR0d2RkFZTUZn?=
 =?utf-8?B?Tk13TmFCNjZrUWVHdVcyOHp5citWZlBUWlZuRXRqNFJ4bk1uSmNYVzdMQWJs?=
 =?utf-8?B?bkZyOHBBR3FJaitrcVIzQ2h4RVlNaVVsUVRkOHJiL3JhYXA5N0dhWHQ2V1Ru?=
 =?utf-8?B?TFlDa1lGWUhsVTQwenZpU1ZIb2FtNjlRRmtSeEZyenVJc3I0Z0Erb05mSllL?=
 =?utf-8?B?cnA4clQ5VTRlMEtCQWFReGNkV2pJSk1GVWVFcjVDbVNLSzREZVVzUTU2UkJS?=
 =?utf-8?B?YkNQZStUSXV1a1V0azlnanpGTC84ZmRFM3JBQ0VGbzlNclFsWlhHS3VUdW51?=
 =?utf-8?B?SXZVd1drREZ1eVNCV0JuU2M5WkFpeGY5akZqakFsdkRkUzM3MkI0cUpMMVVO?=
 =?utf-8?B?bDVFTEpvbGdMM0RUd04zN3JrOUc2aUNmdFZvTFBXYWJuTG8zSlR6ajNSb2p5?=
 =?utf-8?B?Q0ZlZWpXeWc3S2VXZzhWaDlzWmZLRlJtRVY3ak95ZWt1WGp0Y1ZOeDM1MEpU?=
 =?utf-8?B?Q2RUUm9hSmd3YndkL2ZOdVRIS2RxVzl3SzZlQ1gxaEk0Vi9Yell2NHRlUlI1?=
 =?utf-8?B?WGdDVWU2K0FXQytMT20yWDhyeFMxNHRCQ3JrN2I2aFZaaHhuTFc0SnZuM2ZP?=
 =?utf-8?B?QjJYVjJCQXFhdzRmSFlwTDB3TzkzRStFZU0yZjZQWmx5VU5OV1laZGVNcUEz?=
 =?utf-8?B?WWdBazFhWU8xNVBOYTBGY01wbFg3K01uR0lxUmpHNkFtZW8xWGpycEhGUUdx?=
 =?utf-8?B?THJNZ3Y4di9FWnRrb2txVjZ6czZVQkU3Um9WMmJwK2wvU25yeThWRm1lZjBO?=
 =?utf-8?B?allxR2F4Sld3bTZRTmRpaFE1cEdaL3FLNjRCQXBKbVljV2FNL05KdURrTEhE?=
 =?utf-8?B?aXBWVHVYNENBamhubnE0ZkZVMDRVREFMbmRhTTdYNDI1UWoxOVYvZlNBUjVC?=
 =?utf-8?B?MXpwNVBhTUhWdGZrUCthODYycm14WDVyOFpXRS8xOCtpejlQVVJlSTBXM0tG?=
 =?utf-8?B?QnFaQzhlYkRFaHFkOUNFK0FEamRURnE2ZnBhUlZPWWRZeTFFbmduYTNUN1BW?=
 =?utf-8?B?YlJVb2VzRlZNNzEwV0JDNW8zcVhNUGxKY3ZVa1A3ZVlYMlhUUVQzN0taTThI?=
 =?utf-8?B?TmVaeEdpZWFZUXp2ZGZWZ1BYT2ZsdElKbEptc2poWkJFdWR5T2E4bStXc29j?=
 =?utf-8?B?a25CRVVzUEdhY0JJWkdQeGNoRkRTamZXcnFIeTd0cGh6aXdFaFpsd1ptWlpn?=
 =?utf-8?B?Y1YzU0RNV2R0M2lJRHYreDVFU0xwLzV3YjFic0xwb0hVdnRmSkkxa0NaTlNS?=
 =?utf-8?B?dUVzWERIdWJyOXpyMHhLV0dVNEttZFhzc2N6UW1DRFU5MU9IdkdnbkZDVFFG?=
 =?utf-8?B?dUlyTEE4ZUx2d2loNTF4bkhUK2Z0SVdFR2JVZjRHU2JPTjRTbnI1TlFTMjJ4?=
 =?utf-8?B?dXFMbVZMSUdJUERodzdVOFVBbEJoQkRUUHBSTGFhM01HUVgzNWhYZzJacE9V?=
 =?utf-8?B?VEU5S2tzMVQ4anErMlFtdGc2N3QvanU1SHVLb1lhdXNkNkxTYkV5QThXN0tz?=
 =?utf-8?B?R1ZhaGZTdWduREZhV1diOXo4M0k5aGgwT25DdHZsWHlqY2xGTmlTYkF2aXVr?=
 =?utf-8?Q?K6qp108A0fY=3D?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(7416014)(376014)(7053199007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?Y0IxMlBVYnhlNkx5Tk5KQmJYMnNrbFBmZjBBUkowMEtLTWpmTjN5ZFF1d05T?=
 =?utf-8?B?Y3kxYmR5UURTbUoxRk8zTnphVHZlODU3cFhqT1ZwSDE5a0N6MFhkU2dscWhr?=
 =?utf-8?B?TzBEK0FPRCtWelAzVVhHcEVKSWJhNm1MaWhab2lKM0pacDBmR2EyZmw3ckJl?=
 =?utf-8?B?ZjZPVEJYc0YwV1A4dEpyMElRZGZmS0c2OURXUE9kWFFVeDBIQytyb1Izck9s?=
 =?utf-8?B?bVRjVlVxV3hjY3RyMkhxSE1LQURxdWUyQlIxQ29pT2N0ZHRBRFdkQ2ZweXRC?=
 =?utf-8?B?UGxPOHlHSVZ2RkczSXJMU3ByMEVyS01ueDE4Y0pKZWRNZ05NdWlGU3FZWjJG?=
 =?utf-8?B?bHcxb3hTZFl0Z2orU2VRSUo4TGJNNmd3aCtrNVZJeEdPc0diVnZxQktFU2lQ?=
 =?utf-8?B?Tk1TcWhNbkxJVzZud3lxd0dlYWZWMUIwcTFJUFVuc0QweitrY2pwaWJoVWU2?=
 =?utf-8?B?aGRjUUVtUkhpRyt3RW1hTmJsMlBtR2oxUlQ5bDcrVC9nRE5RODY5SDg5UzJn?=
 =?utf-8?B?SEZCcmRPKzBHb0dxWUpIRG81aDVRaVk5OVlnZTE1OUF4OWhhdjNibS96eklF?=
 =?utf-8?B?SkI1cDZQM3dEVXBiN3hvWDdRT0FUdjFPc0ZmM1Y0TzlERFZzWUttemtQSEFm?=
 =?utf-8?B?VTJaSk9jSm5LS3pmdU5mZzdralpjMFBWZXZMYlZONTNCRnViaksraUlhU1Va?=
 =?utf-8?B?cUtRZlluWC9kQkdnaFVQWTZKd04rLzI5ZVBhQW44VXhxdEY4MGVoSG43TGxl?=
 =?utf-8?B?bURkcUVwalZJejJrTGtKS0dRb1VOekl3a3lhWHVYWVBKTGEyZDMyN09KMlF5?=
 =?utf-8?B?Q2E3blRqVGZ1ZGIzNklkczA0ZFo3amhQbUxYcWtQS21uZkJ2cXZ3ZXVnenJD?=
 =?utf-8?B?VzlNTUx3YVF5N1hDYy9sdGxaWDR1ZFNBQjl4aUZ6by9sSTgvTGl1VTBvbjkz?=
 =?utf-8?B?b2lsY0tsakNPdDBPY2VKYUN3NjFpZC8zeXhhSXVhWGxTa1p0bkg2eW9MOWdo?=
 =?utf-8?B?S09FdGx3bFhMYk8rMGJhOExqMDd5OFhZR0gySmhXL25vRFhNa05QNnBKYlJ1?=
 =?utf-8?B?QUNObEJ1dTNwQzNCUGpYNXFqdjhaOFhCYkcyZ1RvdGxRYWhsUkp4VC9NMlp6?=
 =?utf-8?B?RkhUQTNLSVY1RGdNN1F2c2Z2MlMwcEMyTmpYeFQxanM5ZDNhMnRzMWJYVVVk?=
 =?utf-8?B?SzBjRUJSb2trVkJmMkFqbUZXOTFUK2VKczQ1TXY3MU1iQkxSWTB0d0s2UnE2?=
 =?utf-8?B?aXBydHlHTVNqT09LL04vQmJTeC9TTUtwZllQNllGNlJzaFNOSDFzVFViQUl6?=
 =?utf-8?B?VitEOXMrMXVLZDZUNzJaOHJaNVllN2RjakRGU1Rzb0wwWFRXR0ROL2VsNFg2?=
 =?utf-8?B?b0RNOU5OV3dDM2NoVksyZzJVdXBNTXdLMkZYcmZGRWxwUnNMSytPK3NWK2pO?=
 =?utf-8?B?VTJodFl3SE9GdkhJMjhQdkdHZVRCMkZuRTlVVGk2Rkc1SWxaZnpBRnE2VUNK?=
 =?utf-8?B?UE1ZY2E3dUNBaStiZ1o2LzM3c2EvbkJFTk5odElCSFBxbkc3bUh6bEVlSHoz?=
 =?utf-8?B?UmJaZ1VlUnBzaXVXQ1VJSnRSRk9jZHdJUDVDRVMrbGZxazlMRjdab1pGQWo4?=
 =?utf-8?B?SjNnTXlqaDNlNHVrQWFnN3MyZkFuVFRWejM5bEJEQ2FTZ0dkdVNvSmVDUUlq?=
 =?utf-8?B?c2pMRE1MeUF0U21iYXNtZGlKWlF3eVBRV2tDcUVidjFQUW9wdzhobUtibkNh?=
 =?utf-8?B?T2ZqbnVpT0R6cjd6cjl1Mm9DbUJ2bTFqVDljczIyZ2VUV2UrNUpubXpKVm1B?=
 =?utf-8?B?RlVrNVFkQXdDR2xqK2I3TFlmSDlvczlUTU9EaGhtbUw1K3h5YmtXM3V6UDFl?=
 =?utf-8?B?VHBzNWNodUVGRFNYV3c4SlBWSm9qT3I5SStvU1RabXovUlNLRFJIdVdsckJm?=
 =?utf-8?B?OFlTU1JwaFlGaDU3WUtWbnl0S0IwS2VSOUFTSnFkZ2ZNQm9LY3AvWHF4Wi9V?=
 =?utf-8?B?TmFRVTN4WWRYNUdUM29ycy9oSFdHbDVoSWZVV3ZwVit6dS9nUklLYWhCcTBJ?=
 =?utf-8?B?NWVhd0xLUnNkd0VrY3RDbWFFWmQ1ektRNThoTmQ5RmZ0YTBiSkc4eFFMbWcz?=
 =?utf-8?Q?tyYjLUtShCUP+XmzxYHcwsv9M?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 060a0f8e-c03c-4418-bba4-08dd8bf5c69e
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 May 2025 16:56:27.4141
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: PVN4VsBgAi70pPXkYHQopz5rO5uWot/4dQW2Xf16bfElYavR9pNchufmugj0KfjJ
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR12MB7529
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: A4D263E93A
X-Spamd-Bar: -------
X-Spamd-Result: default: False [-7.50 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:40.107.0.0/16];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	MIME_GOOD(-0.10)[text/plain];
	ASN(0.00)[asn:8075, ipnet:40.104.0.0/14, country:US];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.107.94.59:from];
	RCPT_COUNT_TWELVE(0.00)[26];
	TAGGED_RCPT(0.00)[];
	MIME_TRACE(0.00)[0:+];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[linaro.org,kernel.org,iogearbox.net,linux.dev,linuxfoundation.org,gmail.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,google.com,ffwll.ch,lwn.net,fomichev.me,fb.com];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[amd.com:+]
X-Rspamd-Action: no action
Message-ID-Hash: QA2WSVSJLQ7FTFYIOIEZYLTZ2WHQ7CRT
X-Message-ID-Hash: QA2WSVSJLQ7FTFYIOIEZYLTZ2WHQ7CRT
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: sumit.semwal@linaro.org, ast@kernel.org, daniel@iogearbox.net, andrii@kernel.org, martin.lau@linux.dev, skhan@linuxfoundation.org, song@kernel.org, alexei.starovoitov@gmail.com, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-doc@vger.kernel.org, bpf@vger.kernel.org, linux-kselftest@vger.kernel.org, android-mm@google.com, simona@ffwll.ch, corbet@lwn.net, eddyz87@gmail.com, yonghong.song@linux.dev, john.fastabend@gmail.com, kpsingh@kernel.org, sdf@fomichev.me, jolsa@kernel.org, mykolal@fb.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 2/6] bpf: Add dmabuf iterator
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/QA2WSVSJLQ7FTFYIOIEZYLTZ2WHQ7CRT/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gNS81LzI1IDE4OjMzLCBULkouIE1lcmNpZXIgd3JvdGU6DQo+IE9uIE1vbiwgTWF5IDUsIDIw
MjUgYXQgNDoxN+KAr0FNIENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNv
bT4gd3JvdGU6DQo+Pg0KPj4gT24gNS81LzI1IDAwOjQxLCBULkouIE1lcmNpZXIgd3JvdGU6DQo+
Pj4gVGhlIGRtYWJ1ZiBpdGVyYXRvciB0cmF2ZXJzZXMgdGhlIGxpc3Qgb2YgYWxsIERNQSBidWZm
ZXJzLg0KPj4+DQo+Pj4gRE1BIGJ1ZmZlcnMgYXJlIHJlZmNvdW50ZWQgdGhyb3VnaCB0aGVpciBh
c3NvY2lhdGVkIHN0cnVjdCBmaWxlLiBBDQo+Pj4gcmVmZXJlbmNlIGlzIHRha2VuIG9uIGVhY2gg
YnVmZmVyIGFzIHRoZSBsaXN0IGlzIGl0ZXJhdGVkIHRvIGVuc3VyZSBlYWNoDQo+Pj4gYnVmZmVy
IHBlcnNpc3RzIGZvciB0aGUgZHVyYXRpb24gb2YgdGhlIGJwZiBwcm9ncmFtIGV4ZWN1dGlvbiB3
aXRob3V0DQo+Pj4gaG9sZGluZyB0aGUgbGlzdCBtdXRleC4NCj4+Pg0KPj4+IFNpZ25lZC1vZmYt
Ynk6IFQuSi4gTWVyY2llciA8dGptZXJjaWVyQGdvb2dsZS5jb20+DQo+Pj4gLS0tDQo+Pj4gIGtl
cm5lbC9icGYvTWFrZWZpbGUgICAgICB8ICAgMyArDQo+Pj4gIGtlcm5lbC9icGYvZG1hYnVmX2l0
ZXIuYyB8IDEzNCArKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysNCj4+PiAg
MiBmaWxlcyBjaGFuZ2VkLCAxMzcgaW5zZXJ0aW9ucygrKQ0KPj4+ICBjcmVhdGUgbW9kZSAxMDA2
NDQga2VybmVsL2JwZi9kbWFidWZfaXRlci5jDQo+Pj4NCj4+PiBkaWZmIC0tZ2l0IGEva2VybmVs
L2JwZi9NYWtlZmlsZSBiL2tlcm5lbC9icGYvTWFrZWZpbGUNCj4+PiBpbmRleCA3MDUwMmYwMzhi
OTIuLjNhMzM1YzUwZTZlMyAxMDA2NDQNCj4+PiAtLS0gYS9rZXJuZWwvYnBmL01ha2VmaWxlDQo+
Pj4gKysrIGIva2VybmVsL2JwZi9NYWtlZmlsZQ0KPj4+IEBAIC01Myw2ICs1Myw5IEBAIG9iai0k
KENPTkZJR19CUEZfU1lTQ0FMTCkgKz0gcmVsb19jb3JlLm8NCj4+PiAgb2JqLSQoQ09ORklHX0JQ
Rl9TWVNDQUxMKSArPSBidGZfaXRlci5vDQo+Pj4gIG9iai0kKENPTkZJR19CUEZfU1lTQ0FMTCkg
Kz0gYnRmX3JlbG9jYXRlLm8NCj4+PiAgb2JqLSQoQ09ORklHX0JQRl9TWVNDQUxMKSArPSBrbWVt
X2NhY2hlX2l0ZXIubw0KPj4+ICtpZmVxICgkKENPTkZJR19ETUFfU0hBUkVEX0JVRkZFUikseSkN
Cj4+PiArb2JqLSQoQ09ORklHX0JQRl9TWVNDQUxMKSArPSBkbWFidWZfaXRlci5vDQo+Pj4gK2Vu
ZGlmDQo+Pj4NCj4+PiAgQ0ZMQUdTX1JFTU9WRV9wZXJjcHVfZnJlZWxpc3QubyA9ICQoQ0NfRkxB
R1NfRlRSQUNFKQ0KPj4+ICBDRkxBR1NfUkVNT1ZFX2JwZl9scnVfbGlzdC5vID0gJChDQ19GTEFH
U19GVFJBQ0UpDQo+Pj4gZGlmZiAtLWdpdCBhL2tlcm5lbC9icGYvZG1hYnVmX2l0ZXIuYyBiL2tl
cm5lbC9icGYvZG1hYnVmX2l0ZXIuYw0KPj4+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0DQo+Pj4gaW5k
ZXggMDAwMDAwMDAwMDAwLi45Njg3NjJlMTFmNzMNCj4+PiAtLS0gL2Rldi9udWxsDQo+Pj4gKysr
IGIva2VybmVsL2JwZi9kbWFidWZfaXRlci5jDQo+Pj4gQEAgLTAsMCArMSwxMzQgQEANCj4+PiAr
Ly8gU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IEdQTC0yLjAtb25seQ0KPj4+ICsvKiBDb3B5cmln
aHQgKGMpIDIwMjUgR29vZ2xlIExMQyAqLw0KPj4+ICsjaW5jbHVkZSA8bGludXgvYnBmLmg+DQo+
Pj4gKyNpbmNsdWRlIDxsaW51eC9idGZfaWRzLmg+DQo+Pj4gKyNpbmNsdWRlIDxsaW51eC9kbWEt
YnVmLmg+DQo+Pj4gKyNpbmNsdWRlIDxsaW51eC9rZXJuZWwuaD4NCj4+PiArI2luY2x1ZGUgPGxp
bnV4L3NlcV9maWxlLmg+DQo+Pj4gKw0KPj4+ICtCVEZfSURfTElTVF9TSU5HTEUoYnBmX2RtYWJ1
Zl9idGZfaWQsIHN0cnVjdCwgZG1hX2J1ZikNCj4+PiArREVGSU5FX0JQRl9JVEVSX0ZVTkMoZG1h
YnVmLCBzdHJ1Y3QgYnBmX2l0ZXJfbWV0YSAqbWV0YSwgc3RydWN0IGRtYV9idWYgKmRtYWJ1ZikN
Cj4+PiArDQo+Pj4gK3N0YXRpYyBzdHJ1Y3QgZG1hX2J1ZiAqZ2V0X25leHRfZG1hYnVmKHN0cnVj
dCBkbWFfYnVmICpkbWFidWYpDQo+Pj4gK3sNCj4+PiArICAgICBzdHJ1Y3QgZG1hX2J1ZiAqcmV0
ID0gTlVMTDsNCj4+PiArDQo+Pj4gKyAgICAgLyoNCj4+PiArICAgICAgKiBMb29rIGZvciB0aGUg
Zmlyc3QvbmV4dCBidWZmZXIgd2UgY2FuIG9idGFpbiBhIHJlZmVyZW5jZSB0by4NCj4+PiArICAg
ICAgKg0KPj4+ICsgICAgICAqIFRoZSBsaXN0IG11dGV4IGRvZXMgbm90IHByb3RlY3QgYSBkbWFi
dWYncyByZWZjb3VudCwgc28gaXQgY2FuIGJlDQo+Pj4gKyAgICAgICogemVyb2VkIHdoaWxlIHdl
IGFyZSBpdGVyYXRpbmcuIFdlIGNhbm5vdCBjYWxsIGdldF9kbWFfYnVmKCkgc2luY2UgdGhlDQo+
Pj4gKyAgICAgICogY2FsbGVyIG9mIHRoaXMgcHJvZ3JhbSBtYXkgbm90IGFscmVhZHkgb3duIGEg
cmVmZXJlbmNlIHRvIHRoZSBidWZmZXIuDQo+Pj4gKyAgICAgICovDQo+Pj4gKyAgICAgbXV0ZXhf
bG9jaygmZG1hYnVmX2xpc3RfbXV0ZXgpOw0KPj4+ICsgICAgIGlmIChkbWFidWYpIHsNCj4+DQo+
PiBUaGF0IGxvb2tzIGxpa2UgeW91IHRyeSB0byBtYW5nbGUgdGhlIHN0YXJ0IGFuZCBuZXh0IGZ1
bmN0aW9uYWxpdHkgaW4ganVzdCBvbmUgZnVuY3Rpb24uDQo+Pg0KPj4gSSB3b3VsZCBqdXN0IGlu
bGluZSB0aGF0IGludG8gdGhlIGRtYWJ1Zl9pdGVyX3NlcV9zdGFydCgpIGFuZCBkbWFidWZfaXRl
cl9zZXFfbmV4dCgpIGZ1bmN0aW9ucy4NCj4gDQo+IFByaW1hcmlseSB0aGlzIGlzIHRvIHNoYXJl
IGJldHdlZW4gdGhlIG9wZW4gY29kZWQgaXRlcmF0b3IgKG5leHQNCj4gcGF0Y2gpIGFuZCB0aGlz
IG5vcm1hbCBpdGVyYXRvciBzaW5jZSBJIGRpZG4ndCB3YW50IHRvIGR1cGxpY2F0ZSB0aGUNCj4g
c2FtZSBsaXN0IHRyYXZlcnNhbCBjb2RlIGFjcm9zcyBib3RoIG9mIHRoZW0uDQoNCkFoLCBvayB0
aGF0IG1ha2VzIGEgYml0IG1vcmUgc2Vuc2UuIEl0IHdvdWxkIHN0aWxsIGJlIG5pY2VyIGlmIGl0
J3MgaW4gdHdvIGZ1bmN0aW9ucyBzaW5jZSB0aGUgbG9naWMgZG9lc24ndCBzaGFyZSBhbnl0aGlu
ZyBjb21tb24gZXhjZXB0IGZvciB0YWtpbmcgdGhlIGxvY2sgYXMgZmFyIGFzIEkgY2FuIHNlZWUu
DQoNCj4+DQo+Pg0KPj4+ICsgICAgICAgICAgICAgZG1hX2J1Zl9wdXQoZG1hYnVmKTsNCj4+PiAr
ICAgICAgICAgICAgIGxpc3RfZm9yX2VhY2hfZW50cnlfY29udGludWUoZG1hYnVmLCAmZG1hYnVm
X2xpc3QsIGxpc3Rfbm9kZSkgew0KPj4NCj4+IFRoYXQgeW91IGNhbiBwdXQgdGhlIERNQS1idWYg
YW5kIHRoZW4gc3RpbGwgdXNlcyBpdCBpbiBsaXN0X2Zvcl9lYWNoX2VudHJ5X2NvbnRpbnVlKCkg
b25seSB3b3JrcyBiZWNhdXNlIHRoZSBtdXRleCBpcyBsb2NrZWQgaW4gdGhlIGRlc3Ryb3kgcGF0
aC4NCj4gDQo+IFl1cCwgdGhpcyB3YXMgZGVsaWJlcmF0ZS4NCj4+DQo+Pg0KPj4gSSBzdHJvbmds
eSBzdWdnZXN0IHRvIGp1c3QgcHV0IHRob3NlIHR3byBmdW5jdGlvbnMgaW50byBkcml2ZXJzL2Rt
YS1idWYvZG1hLWJ1Zi5jIHJpZ2h0IG5leHQgdG8gdGhlIF9fZG1hX2J1Zl9kZWJ1Z2ZzX2xpc3Rf
YWRkKCkgYW5kIF9fZG1hX2J1Zl9kZWJ1Z2ZzX2xpc3RfZGVsKCkgZnVuY3Rpb25zLg0KPiANCj4g
QnkgdHdvIGZ1bmN0aW9ucywgeW91IG1lYW4gYSBnZXRfZmlyc3RfZG1hYnVmKHZvaWQpIGFuZCBh
DQo+IGdldF9uZXh0X2RtYWJ1ZihzdHJ1Y3QgZG1hX2J1ZiopPyBUbyBtYWtlIHRoZSBkbWFfYnVm
X3B1dCgpIGNhbGwgYQ0KPiBsaXR0bGUgbGVzcyBzY2FyeSBzaW5jZSBhbGwgdGhlIG11dGV4IG9w
cyBhcmUgcmlnaHQgdGhlcmU/DQoNClllcywgZXhhY3RseSB0aGF0J3MgdGhlIGlkZWEuIFRoZSBj
b21tZW50IGFib3ZlIGlzIGdvb2QgdG8gaGF2ZSBhcyB3ZWxsLCBidXQgaXQgb25seSB3b3JrcyBv
bmUgd2F5Lg0KDQpJZiBzb21lYm9keSBjaGFuZ2VzIHRoZSBETUEtYnVmIGNvZGUgd2l0aG91dCBs
b29raW5nIGF0IHRoaXMgaGVyZSB3ZSBhcmUgYnVzdGVkLg0KDQpSZWdhcmRzLA0KQ2hyaXN0aWFu
Lg0KDQo+Pg0KPj4NCj4+IEFwYXJ0IGZyb20gdGhvc2Ugc3R5bGUgc3VnZ2VzdGlvbnMgbG9va3Mg
Z29vZCB0byBtZSBmcm9tIHRoZSB0ZWNobmljYWwgc2lkZSwgYnV0IEknbSBub3QgYW4gZXhwZXJ0
IGZvciB0aGUgQlBGIHN0dWZmLg0KPj4NCj4+IFJlZ2FyZHMsDQo+PiBDaHJpc3RpYW4uDQo+IA0K
PiBUaGFua3MgZm9yIHlvdXIgY29tbWVudHMgYW5kIHJldmlld3MhDQo+IA0KPj4+ICsgICAgICAg
ICAgICAgICAgICAgICBpZiAoZmlsZV9yZWZfZ2V0KCZkbWFidWYtPmZpbGUtPmZfcmVmKSkgew0K
Pj4+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHJldCA9IGRtYWJ1ZjsNCj4+PiArICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICBicmVhazsNCj4+PiArICAgICAgICAgICAgICAgICAg
ICAgfQ0KPj4+ICsgICAgICAgICAgICAgfQ0KPj4+ICsgICAgIH0gZWxzZSB7DQo+Pj4gKyAgICAg
ICAgICAgICBsaXN0X2Zvcl9lYWNoX2VudHJ5KGRtYWJ1ZiwgJmRtYWJ1Zl9saXN0LCBsaXN0X25v
ZGUpIHsNCj4+PiArICAgICAgICAgICAgICAgICAgICAgaWYgKGZpbGVfcmVmX2dldCgmZG1hYnVm
LT5maWxlLT5mX3JlZikpIHsNCj4+PiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICByZXQg
PSBkbWFidWY7DQo+Pj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgYnJlYWs7DQo+Pj4g
KyAgICAgICAgICAgICAgICAgICAgIH0NCj4+PiArICAgICAgICAgICAgIH0NCj4+PiArICAgICB9
DQo+Pj4gKyAgICAgbXV0ZXhfdW5sb2NrKCZkbWFidWZfbGlzdF9tdXRleCk7DQo+Pj4gKyAgICAg
cmV0dXJuIHJldDsNCj4+PiArfQ0KPj4+ICsNCj4+PiArc3RhdGljIHZvaWQgKmRtYWJ1Zl9pdGVy
X3NlcV9zdGFydChzdHJ1Y3Qgc2VxX2ZpbGUgKnNlcSwgbG9mZl90ICpwb3MpDQo+Pj4gK3sNCj4+
PiArICAgICBpZiAoKnBvcykNCj4+PiArICAgICAgICAgICAgIHJldHVybiBOVUxMOw0KPj4+ICsN
Cj4+PiArICAgICByZXR1cm4gZ2V0X25leHRfZG1hYnVmKE5VTEwpOw0KPj4+ICt9DQo+Pj4gKw0K
Pj4+ICtzdGF0aWMgdm9pZCAqZG1hYnVmX2l0ZXJfc2VxX25leHQoc3RydWN0IHNlcV9maWxlICpz
ZXEsIHZvaWQgKnYsIGxvZmZfdCAqcG9zKQ0KPj4+ICt7DQo+Pj4gKyAgICAgc3RydWN0IGRtYV9i
dWYgKmRtYWJ1ZiA9IHY7DQo+Pj4gKw0KPj4+ICsgICAgICsrKnBvczsNCj4+PiArDQo+Pj4gKyAg
ICAgcmV0dXJuIGdldF9uZXh0X2RtYWJ1ZihkbWFidWYpOw0KPj4+ICt9DQo+Pj4gKw0KPj4+ICtz
dHJ1Y3QgYnBmX2l0ZXJfX2RtYWJ1ZiB7DQo+Pj4gKyAgICAgX19icGZfbWRfcHRyKHN0cnVjdCBi
cGZfaXRlcl9tZXRhICosIG1ldGEpOw0KPj4+ICsgICAgIF9fYnBmX21kX3B0cihzdHJ1Y3QgZG1h
X2J1ZiAqLCBkbWFidWYpOw0KPj4+ICt9Ow0KPj4+ICsNCj4+PiArc3RhdGljIGludCBfX2RtYWJ1
Zl9zZXFfc2hvdyhzdHJ1Y3Qgc2VxX2ZpbGUgKnNlcSwgdm9pZCAqdiwgYm9vbCBpbl9zdG9wKQ0K
Pj4+ICt7DQo+Pj4gKyAgICAgc3RydWN0IGJwZl9pdGVyX21ldGEgbWV0YSA9IHsNCj4+PiArICAg
ICAgICAgICAgIC5zZXEgPSBzZXEsDQo+Pj4gKyAgICAgfTsNCj4+PiArICAgICBzdHJ1Y3QgYnBm
X2l0ZXJfX2RtYWJ1ZiBjdHggPSB7DQo+Pj4gKyAgICAgICAgICAgICAubWV0YSA9ICZtZXRhLA0K
Pj4+ICsgICAgICAgICAgICAgLmRtYWJ1ZiA9IHYsDQo+Pj4gKyAgICAgfTsNCj4+PiArICAgICBz
dHJ1Y3QgYnBmX3Byb2cgKnByb2cgPSBicGZfaXRlcl9nZXRfaW5mbygmbWV0YSwgaW5fc3RvcCk7
DQo+Pj4gKw0KPj4+ICsgICAgIGlmIChwcm9nKQ0KPj4+ICsgICAgICAgICAgICAgcmV0dXJuIGJw
Zl9pdGVyX3J1bl9wcm9nKHByb2csICZjdHgpOw0KPj4+ICsNCj4+PiArICAgICByZXR1cm4gMDsN
Cj4+PiArfQ0KPj4+ICsNCj4+PiArc3RhdGljIGludCBkbWFidWZfaXRlcl9zZXFfc2hvdyhzdHJ1
Y3Qgc2VxX2ZpbGUgKnNlcSwgdm9pZCAqdikNCj4+PiArew0KPj4+ICsgICAgIHJldHVybiBfX2Rt
YWJ1Zl9zZXFfc2hvdyhzZXEsIHYsIGZhbHNlKTsNCj4+PiArfQ0KPj4+ICsNCj4+PiArc3RhdGlj
IHZvaWQgZG1hYnVmX2l0ZXJfc2VxX3N0b3Aoc3RydWN0IHNlcV9maWxlICpzZXEsIHZvaWQgKnYp
DQo+Pj4gK3sNCj4+PiArICAgICBzdHJ1Y3QgZG1hX2J1ZiAqZG1hYnVmID0gdjsNCj4+PiArDQo+
Pj4gKyAgICAgaWYgKGRtYWJ1ZikNCj4+PiArICAgICAgICAgICAgIGRtYV9idWZfcHV0KGRtYWJ1
Zik7DQo+Pj4gK30NCj4+PiArDQo+Pj4gK3N0YXRpYyBjb25zdCBzdHJ1Y3Qgc2VxX29wZXJhdGlv
bnMgZG1hYnVmX2l0ZXJfc2VxX29wcyA9IHsNCj4+PiArICAgICAuc3RhcnQgID0gZG1hYnVmX2l0
ZXJfc2VxX3N0YXJ0LA0KPj4+ICsgICAgIC5uZXh0ICAgPSBkbWFidWZfaXRlcl9zZXFfbmV4dCwN
Cj4+PiArICAgICAuc3RvcCAgID0gZG1hYnVmX2l0ZXJfc2VxX3N0b3AsDQo+Pj4gKyAgICAgLnNo
b3cgICA9IGRtYWJ1Zl9pdGVyX3NlcV9zaG93LA0KPj4+ICt9Ow0KPj4+ICsNCj4+PiArc3RhdGlj
IHZvaWQgYnBmX2l0ZXJfZG1hYnVmX3Nob3dfZmRpbmZvKGNvbnN0IHN0cnVjdCBicGZfaXRlcl9h
dXhfaW5mbyAqYXV4LA0KPj4+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
c3RydWN0IHNlcV9maWxlICpzZXEpDQo+Pj4gK3sNCj4+PiArICAgICBzZXFfcHV0cyhzZXEsICJk
bWFidWYgaXRlclxuIik7DQo+Pj4gK30NCj4+PiArDQo+Pj4gK3N0YXRpYyBjb25zdCBzdHJ1Y3Qg
YnBmX2l0ZXJfc2VxX2luZm8gZG1hYnVmX2l0ZXJfc2VxX2luZm8gPSB7DQo+Pj4gKyAgICAgLnNl
cV9vcHMgICAgICAgICAgICAgICAgPSAmZG1hYnVmX2l0ZXJfc2VxX29wcywNCj4+PiArICAgICAu
aW5pdF9zZXFfcHJpdmF0ZSAgICAgICA9IE5VTEwsDQo+Pj4gKyAgICAgLmZpbmlfc2VxX3ByaXZh
dGUgICAgICAgPSBOVUxMLA0KPj4+ICsgICAgIC5zZXFfcHJpdl9zaXplICAgICAgICAgID0gMCwN
Cj4+PiArfTsNCj4+PiArDQo+Pj4gK3N0YXRpYyBzdHJ1Y3QgYnBmX2l0ZXJfcmVnIGJwZl9kbWFi
dWZfcmVnX2luZm8gPSB7DQo+Pj4gKyAgICAgLnRhcmdldCAgICAgICAgICAgICAgICAgPSAiZG1h
YnVmIiwNCj4+PiArICAgICAuZmVhdHVyZSAgICAgICAgICAgICAgICA9IEJQRl9JVEVSX1JFU0NI
RUQsDQo+Pj4gKyAgICAgLnNob3dfZmRpbmZvICAgICAgICAgICAgPSBicGZfaXRlcl9kbWFidWZf
c2hvd19mZGluZm8sDQo+Pj4gKyAgICAgLmN0eF9hcmdfaW5mb19zaXplICAgICAgPSAxLA0KPj4+
ICsgICAgIC5jdHhfYXJnX2luZm8gICAgICAgICAgID0gew0KPj4+ICsgICAgICAgICAgICAgeyBv
ZmZzZXRvZihzdHJ1Y3QgYnBmX2l0ZXJfX2RtYWJ1ZiwgZG1hYnVmKSwNCj4+PiArICAgICAgICAg
ICAgICAgUFRSX1RPX0JURl9JRF9PUl9OVUxMIH0sDQo+Pj4gKyAgICAgfSwNCj4+PiArICAgICAu
c2VxX2luZm8gICAgICAgICAgICAgICA9ICZkbWFidWZfaXRlcl9zZXFfaW5mbywNCj4+PiArfTsN
Cj4+PiArDQo+Pj4gK3N0YXRpYyBpbnQgX19pbml0IGRtYWJ1Zl9pdGVyX2luaXQodm9pZCkNCj4+
PiArew0KPj4+ICsgICAgIGJwZl9kbWFidWZfcmVnX2luZm8uY3R4X2FyZ19pbmZvWzBdLmJ0Zl9p
ZCA9IGJwZl9kbWFidWZfYnRmX2lkWzBdOw0KPj4+ICsgICAgIHJldHVybiBicGZfaXRlcl9yZWdf
dGFyZ2V0KCZicGZfZG1hYnVmX3JlZ19pbmZvKTsNCj4+PiArfQ0KPj4+ICsNCj4+PiArbGF0ZV9p
bml0Y2FsbChkbWFidWZfaXRlcl9pbml0KTsNCj4+DQoNCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxp
bmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWls
IHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
