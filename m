Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id D74A9C0CF3E
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 27 Oct 2025 11:27:34 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C8A2F3F7F8
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 27 Oct 2025 10:27:25 +0000 (UTC)
Received: from MW6PR02CU001.outbound.protection.outlook.com (mail-westus2azon11012020.outbound.protection.outlook.com [52.101.48.20])
	by lists.linaro.org (Postfix) with ESMTPS id 9CB203F683
	for <linaro-mm-sig@lists.linaro.org>; Mon, 27 Oct 2025 10:27:11 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=nh4+rk0m;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1");
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 52.101.48.20 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=BwK0yoSYhNTcBvp8gdyfuYQwOCV0pBdsklVE1u/7DE6Nqj5J1/I+pbPwUnkgyA50vso1xino6BS5AGHRzCAwloLaZ9yiJ6jmcjuFBG1R36kCxUi/HutneWZuZkRhVufsu/nieABfsB/nWBUTTwDeTPbbyPYEoKYgvnxEpCQsYuwfQojV/2ZLkiCjkGEwxRgL5jmpGbK/clnuqlBKwtH5X+Z1BM/qfE3SaBZS44P9JHhXE9beQ0/ei3g1rxwX6EyWTxFvWvXBDd/28L2lT6AAK2ortf8Fg3LC0LeyekVFIVFG3hgOUenBDoq3Kn6tVwpqrtFJDd88EcngRzSYQ3k3ww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pFFxY48s/XZ3f6VHWCeRn9J54fqVLa/izDPG1C2rmsY=;
 b=fr6cmFu62BvT2py3Xx7YH/Z4bMRHQ5iI5TQtRqTyaetloE6IzgnzeCLxc8Lxt/8ayWLubLP98zf8et4SfdFOBDoa2Sa/fiCWxGlZpcFf7D0kHei1OLWq4ZoIcf2jywJzJo6bY+0iDnURMOv4cngHfpItmtMiuuE7ak/Ly0zj3DOflZkhj4CvScTGmwyqPGPYs6KLG6wCbFNdBdim1tRh3lpB6g9p2RD/HN1lq9/XptBbMqY6zPT1a0AngdCGhs2pcMYnuPJqv+fg8+1tZzT66FvaqwxKF6eru4F1HKO7bSHQhU2LUOF71NCbM+FUsplprIlkc2n4Ln7mEdB5ABiksw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=pFFxY48s/XZ3f6VHWCeRn9J54fqVLa/izDPG1C2rmsY=;
 b=nh4+rk0mXdkkhOMIU+9tTOHGY3a97nVI4g7Z/sbt+3gXzppha7OVpjwfbDHwCAdx80uq/GUa+GGg1jZrfxmyjSmK+iQ9FcUcLzWm4jtmBVQ9QVmC7MsLLyddDSOCW6AsHRv0Sjf6yH5odEN8IFW7lKgIPUDodRFDf2fWa0iQS+E=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by SA1PR12MB7175.namprd12.prod.outlook.com (2603:10b6:806:2b2::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9253.18; Mon, 27 Oct
 2025 10:27:09 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5%4]) with mapi id 15.20.9253.017; Mon, 27 Oct 2025
 10:27:09 +0000
Message-ID: <2c91b3ed-258c-46e1-8bf2-50c70d982cf6@amd.com>
Date: Mon, 27 Oct 2025 11:27:02 +0100
User-Agent: Mozilla Thunderbird
To: Tvrtko Ursulin <tursulin@ursulin.net>, Akash Goel <akash.goel@arm.com>,
 sumit.semwal@linaro.org, gustavo@padovan.org
References: <20251021160951.1415603-1-akash.goel@arm.com>
 <d9c16e9e-8321-41fe-9112-e754445d8bb0@ursulin.net>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <d9c16e9e-8321-41fe-9112-e754445d8bb0@ursulin.net>
X-ClientProxiedBy: FR2P281CA0146.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:98::7) To SJ0PR12MB5673.namprd12.prod.outlook.com
 (2603:10b6:a03:42b::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|SA1PR12MB7175:EE_
X-MS-Office365-Filtering-Correlation-Id: e442b857-4d2c-4648-7a4f-08de154361e0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|7416014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?RDBTUWJRaFdYKy8zbEcxcGg1YmdDRG13dWJUaVRFd0pRNWt3T25GR2hLRStM?=
 =?utf-8?B?S09nODBOcjI3VkU4cDBCYmJPVW82N1dheGprc2xUcHZxWU5VMXJ5cEJncG0v?=
 =?utf-8?B?enpzdnlhS2ZhWEtCRHJFMlBScWpzVlE2Z3Q0NTM1dS8xcGNGZjFkVGtXak1w?=
 =?utf-8?B?WnNrWE9JRGpmbElRN3Yrc1BqVlVLZHRyYWNaSnpUL081OFYrTE1aaGVyeGFw?=
 =?utf-8?B?UlpLVFFUQkhPbWx4dGJzSTRxVnRFbWM4Ym9iY01MS2ZRSFU5byt1YVNieDBj?=
 =?utf-8?B?akZWM25hT3hHb3pCL04zREFzb0dZRjdkWVdBOG9QNXg4WUhnUkVTTllTZGE2?=
 =?utf-8?B?UFZDS3RpSUxKMGRxaVpYZVBrUjhQUDhsVGtHVWdOK1RDUjVtckFvTnY5Mm9W?=
 =?utf-8?B?bk9XLy9xYktzcFdSa3JBaDR2QnVNUlo1T1pMdU5nZUhadFRlM1EzbjBiSnR0?=
 =?utf-8?B?bHlyRDVWN1hpRkpPNDB5elRCS0x4WXRMSjlTZ0x6ZVQ2cmk3UXp1alFIdStX?=
 =?utf-8?B?T3lrN09hVXFLWEZVL01rZEpXNU5TWVh3SEJGQUo1My9FNjVSZUxpUFZWZDZT?=
 =?utf-8?B?akJGc0UrZGRXMnlVbTI2djhvM3BvU29LeURCTkRZWkVEOHJCUVJoQ1MrbS83?=
 =?utf-8?B?d0xFU0xzSHFYeldvakpoWEdSTFFPSExERjdGbnBRcHh2NzdqUWxYVEZoOFFR?=
 =?utf-8?B?V1IrQzNEN0ZFK2xGdHpERDdoRGdOUVRJMk9sSTBzV043RkZhUHIwUjBhSTJ6?=
 =?utf-8?B?QTNac3Y2Mm1qWjVhdXZjK3k4SVRzL1JqZWs3aWliaWRiYVVSNFhQQ1RzeEpY?=
 =?utf-8?B?L0lLUUw0Tnp4dy80cW5QZk9sS1FlRnk3Q0tYdGpLMllseEZ1cWM3Z0RWNnk4?=
 =?utf-8?B?VnY1d2lWMGk4NUJGVTQyZlVLTWZKaUw1Ny9mdGN4bFFDSENPQkZOazV0MEU1?=
 =?utf-8?B?NWlBTklVZkN3MXFsOUdGQjY5UzczbmNpN2FyaVRheHlYTURobU9oOVRSdGFp?=
 =?utf-8?B?QjU2M09lMVNwdS9pOWdscStVdTJuS20wWnNZNFA3ZE8zdEdGNndhaE0rNEZ0?=
 =?utf-8?B?UnY3SFErZGozbzE4RTc0Wmc2VWRwZERZaXU1STkrWlZZcmhxRFhRcXRUNlVu?=
 =?utf-8?B?T0J6SXNVS0dWaUl4aW1HT1pwQzJUSWU4RGdYVTNIZG9aWmtjYXVWVzZRYTBY?=
 =?utf-8?B?dGVTajd2WmRqU1BRK1drc0VKVWFGdHFUUm5PMmloelowekM1dThQUFFyTlRE?=
 =?utf-8?B?c1ZQSWhuZ0pIODZSeXBCdHFGSW92U0Y0YXBhREFFMENxVFQxY0JvNXZkZHp3?=
 =?utf-8?B?ZEN0U1dPZ0tXcGRiaWJPS1dZOUxLTmluaXVLUnBoeFg3NGNlT1UxdStNbTlB?=
 =?utf-8?B?em8vZ29uZk5xVXNSUHpEOFYwNGdWdDduRXJkL3lzcGpXdmlyb2F1NWlyMExQ?=
 =?utf-8?B?YTM2ODF1RGFsd21Tam83NDc4NlkwamhGakhqcHlKSnJYN09XekhWTHc1OVZM?=
 =?utf-8?B?Kyt6Sld3bE9zbE9qMUgyQ2QwVmFwL1ptYXVKNlhrVXdlM1dLTnoreEdOelRF?=
 =?utf-8?B?VUdvNHoyODNFbFZ5VkRWNFZZWm11R0QyTk9tUHJSNWd3TVRiU29QNWFzK1ZG?=
 =?utf-8?B?eUVncnN0KzBta2lwcC84Q0tqc2VJRFdvVG8zemRpcTFFWk9MeXFTbzdvajRu?=
 =?utf-8?B?b0RYc04wKzFMdzlaY1dyRDI5UXdJb3hRdTB1aTI3TytSZmpxS2V5UDhrVC9J?=
 =?utf-8?B?L3BCa0IzYmo5NkZoM1NVWDgrdm5NdmswTWY2akgzT0x2WGg4MHRSWjNTdEVQ?=
 =?utf-8?B?VHEvWGlzKzQ0YzN5WG8zS1N6M1lxUmhxYmNuYmJaa2s3U0NlWXBNUjh3Tmtl?=
 =?utf-8?B?cW9uQThhOW8zdndxS0lmaHo1alRqclgvcVkrUEJPSUNJODdMZ0lNRERqVTVT?=
 =?utf-8?Q?SsZn4jQiTTna6ucPwVs4UbhGeAl4ZHJk?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(7416014)(1800799024)(366016);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?UkRxQWwrZnIzcGRjQzNGUzZZd0VmMmx4Tjkrcm1iMUJPaGZIanNTaWFWNU1M?=
 =?utf-8?B?bVh2R3FpQ0xla3BKSWRNaDNxMjNPUTBlbHpMb2xvU3o4R1loN21jcEFPc1BN?=
 =?utf-8?B?SEZwakxtQ2NIc0hrNks0VmRGQ3B2aGUxSitTUnp3TTVWN0dMM3lCbXIweDFL?=
 =?utf-8?B?cVlHN3lPdjcyYzlnemZ6L0RPcnpheEFKSDE2YXZnTllVemVxMnJwQlcrUUtR?=
 =?utf-8?B?blpwb0g5Uk55c2xUS1BMVktaaDRSeTlpL280OUtmRno2alJ4MzRsWVkwWUQv?=
 =?utf-8?B?Z040SC92SzdFSE5LOHlQRXZrYm9NR0dNVTlMcjJyd0syT2dwSUtqM2dIMzVX?=
 =?utf-8?B?VS9nTWY1WjlrejRFeTVBZC8vS3FmMTJOZGhSekc2dE45Y0twSWFvNUpjUU02?=
 =?utf-8?B?aGVEQ2EyTUZjU20yRTh1WS9vNGFDVUluZmsrMGlEdkltZ0poL3hEb3prajhp?=
 =?utf-8?B?WmpHYzlOUEY5bU1YenJVT2xHcEJyWks3VUdqeDdHZjZQbXVEQnFTTWFUK245?=
 =?utf-8?B?Q2dSSGJVaE9UbFZLcWNyVGQ0SnQ5OW5vTXFkYkJ6RDZVWDhtWXRBYVg2eGMr?=
 =?utf-8?B?R3lmSzFyQ1dNRTAvOHArSldjK2FIemZkUFpZUy9ONkVQemdzeUNLaVNXTkZ5?=
 =?utf-8?B?c1N2bUdMWTBLVy8rYms1SFZ3Y3BMMlh4NEdoT0pldjJJVm03VUNaY09EZGZw?=
 =?utf-8?B?ai9LcFRQZy8wY2hUVzQxZFlYZkpDTC83TnVRNk52T0VDejlxWk1vWkR6TWhu?=
 =?utf-8?B?TEFNUytzMWFialRYUFgySFhlQ2lyOVkyaVB0WldUUFRjNXBBZHQ1Y2FlckRv?=
 =?utf-8?B?YmUrUlByVU1rTmNiQmlxQzlRWEwrcFI0bnF0QmhONU8xMnRweUpDcS9kWFBI?=
 =?utf-8?B?TWpaVjZOeWlVRFM0ZlpOdno0NmhLMm9MZlVWMTZJZzdFeTgzRDdJSlVocjNq?=
 =?utf-8?B?RnZ1TzEzOWxHUnlkbysxQnBkUTVBMi9Jdmgyb3djR2x5cUFtaHAxYU5ydkhN?=
 =?utf-8?B?M0lLS1VQY3lyN1ppT25rWWl3andhSUZzcE9CRmtOdGJOS1dDa0doV1pTMjJY?=
 =?utf-8?B?OXkvaGFQWTFxOGdZVEJoTEY3NTQxS1RaRUJEUnBqL0Q4WWgxbDcvNkpRYTN1?=
 =?utf-8?B?RVhrZHVJdGpGL3BreVgvd2dLQTN1QmF0Sis1REhvLzF1NFBUSWVyTm93RjQv?=
 =?utf-8?B?RVVLV3V0eUdQQnZlblRZUUVldklyKzVNY09RS2lRZ1FhU1hnZVpPRnRnZXpY?=
 =?utf-8?B?Wk53cVRGQ0RhOEJUSXVpY2NNU0RUUVo1Qkp2YjhjVVhsNWo1RVg1NW1GV3dv?=
 =?utf-8?B?M2RadWdqNHp4T2FNaVhzbUZMeVpLMjU2amNyYWNVUzdpYUF4a1RmazYvaStx?=
 =?utf-8?B?Z2NlUzJHS3d3dGlNQVpibU55SUZYdGoxdUw1UGhwMzY4VWdQMFBkNklHdm0w?=
 =?utf-8?B?WlczSUJhRXNXOHY4bFlmY3RxOUN5N0JUVjZBaWJ1TFhrMHkrSDlLd2hzN216?=
 =?utf-8?B?V2JTVHJYR3JYMWNTVTdtREV0cmxaNzNyUkZhV2NPdDBZTEE5aFllOW5rV1Yy?=
 =?utf-8?B?VHpHSmQ4VHBRNE5HMkc2YjdkQ3diN1hRNzFURnF1RnN5WlBCdEZJUWNIeUt0?=
 =?utf-8?B?MVR0bGUwZkhJK0IwNWZCL0R6VlhNVnRnYUwwU2lFZXlkVndkWDZDZC9xUG91?=
 =?utf-8?B?bzN0VjFFQlZISzh5dzdRbno4dDc3dE5BdDBaTG04WmdzemdyVWN1WGxWREh1?=
 =?utf-8?B?djBIdCt4dkNsUUQxYUQ2K0hIS2NLUkpFVTVBU1FqcHh0OTdWcnhTSElZL0wr?=
 =?utf-8?B?QUdaV2ZYVDNmNHd4VE9vc0wxODVKeWZ2bGs1NjVLbzViUHp5Y1NkUHJlT3FJ?=
 =?utf-8?B?RjQyNGdFNW5MV1ZRQzVRUzlBczZ5TlVka0plR0VZc0VDaDFKTWluU1dZQUUr?=
 =?utf-8?B?ekFBMGpEU1FUL2k1ZlBqN1hhMUNmVWtNWlVjbzFHU1UxWjdzYkZiYm5Zd1BZ?=
 =?utf-8?B?UFFDaHVBRlV3Zmc4UlZGZHQzbDBlWVhHVDFuRHVQMHBhQXRUTGJMem1ETUNj?=
 =?utf-8?B?bFcyZGZ6WkV6RVJRMDZpckZEd3UxRjF2OVNqd0RWRk9OM0hmVDZkSzdNMDZj?=
 =?utf-8?Q?Y4B33MfNbAa5vGg3gGxunivLC?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e442b857-4d2c-4648-7a4f-08de154361e0
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR12MB5673.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Oct 2025 10:27:09.0880
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Tw7dOrs79tvezWxjDI4BkvW9O0HjNPvsg4+BDbRdPxENaG0X9hJrYpfxCBVlDCED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR12MB7175
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 9CB203F683
X-Spamd-Bar: -----
X-Spamd-Result: default: False [-5.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:52.100.0.0/15];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_POSSIBLE(0.00)[52.101.48.20:from];
	ASN(0.00)[asn:8075, ipnet:52.96.0.0/12, country:US];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_SEVEN(0.00)[10];
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
Message-ID-Hash: UVIJEJQI2PFUPZH6TTUONJDP2BQBIYO3
X-Message-ID-Hash: UVIJEJQI2PFUPZH6TTUONJDP2BQBIYO3
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, nd@arm.com, stable@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-fence: Fix safe access wrapper to call timeline name method
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/UVIJEJQI2PFUPZH6TTUONJDP2BQBIYO3/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gMTAvMjEvMjUgMjA6MzYsIFR2cnRrbyBVcnN1bGluIHdyb3RlOg0KPiANCj4gT24gMjEvMTAv
MjAyNSAxNzowOSwgQWthc2ggR29lbCB3cm90ZToNCj4+IFRoaXMgY29tbWl0IGZpeGVzIHRoZSB3
cmFwcGVyIGZ1bmN0aW9uIGRtYV9mZW5jZV90aW1lbGluZV9uYW1lKCksIHRoYXQNCj4+IHdhcyBh
ZGRlZCBmb3Igc2FmZSBhY2Nlc3MsIHRvIGFjdHVhbGx5IGNhbGwgdGhlIHRpbWVsaW5lIG5hbWUg
bWV0aG9kIG9mDQo+PiBkbWFfZmVuY2Vfb3BzLg0KPj4NCj4+IENjOiA8c3RhYmxlQHZnZXIua2Vy
bmVsLm9yZz4gIyB2Ni4xNysNCj4+IFNpZ25lZC1vZmYtYnk6IEFrYXNoIEdvZWwgPGFrYXNoLmdv
ZWxAYXJtLmNvbT4NCj4gDQo+IEZpeGVzOiA1MDZhYThiMDJhOGQgKCJkbWEtZmVuY2U6IEFkZCBz
YWZlIGFjY2VzcyBoZWxwZXJzIGFuZCBkb2N1bWVudCB0aGUgcnVsZXMiKQ0KPiANCj4gUmV2aWV3
ZWQtYnk6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBpZ2FsaWEuY29tPg0KDQpHb29k
IGNhdGNoLCBSZXZpZXdlZC1ieTogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0Bh
bWQuY29tPiBhcyB3ZWxsLg0KDQpQbGVhc2UgcGluZyBtZSBpZiB5b3UgbmVlZCBzb21lYm9keSB0
byBwdXNoIHRoaXMgdG8gZHJtLW1pc2MtZml4ZXMuDQoNClRoYW5rcywNCkNocmlzdGlhbi4NCg0K
PiANCj4gQXBvbG9naWVzIGZvciB0aGUgY29weSBhbmQgcGFzdGUgc25hZnUuDQo+IA0KPiBSZWdh
cmRzLA0KPiANCj4gVHZydGtvDQo+IA0KPj4gLS0tDQo+PiDCoCBkcml2ZXJzL2RtYS1idWYvZG1h
LWZlbmNlLmMgfCAyICstDQo+PiDCoCAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEg
ZGVsZXRpb24oLSkNCj4+DQo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5j
ZS5jIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS5jDQo+PiBpbmRleCAzZjc4YzU2YjU4ZGMu
LjM5ZTZmOTNkYzMxMCAxMDA2NDQNCj4+IC0tLSBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2Uu
Yw0KPj4gKysrIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS5jDQo+PiBAQCAtMTE0MSw3ICsx
MTQxLDcgQEAgY29uc3QgY2hhciBfX3JjdSAqZG1hX2ZlbmNlX3RpbWVsaW5lX25hbWUoc3RydWN0
IGRtYV9mZW5jZSAqZmVuY2UpDQo+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICJSQ1Ug
cHJvdGVjdGlvbiBpcyByZXF1aXJlZCBmb3Igc2FmZSBhY2Nlc3MgdG8gcmV0dXJuZWQgc3RyaW5n
Iik7DQo+PiDCoCDCoMKgwqDCoMKgIGlmICghdGVzdF9iaXQoRE1BX0ZFTkNFX0ZMQUdfU0lHTkFM
RURfQklULCAmZmVuY2UtPmZsYWdzKSkNCj4+IC3CoMKgwqDCoMKgwqDCoCByZXR1cm4gZmVuY2Ut
Pm9wcy0+Z2V0X2RyaXZlcl9uYW1lKGZlbmNlKTsNCj4+ICvCoMKgwqDCoMKgwqDCoCByZXR1cm4g
ZmVuY2UtPm9wcy0+Z2V0X3RpbWVsaW5lX25hbWUoZmVuY2UpOw0KPj4gwqDCoMKgwqDCoCBlbHNl
DQo+PiDCoMKgwqDCoMKgwqDCoMKgwqAgcmV0dXJuICJzaWduYWxlZC10aW1lbGluZSI7DQo+PiDC
oCB9DQo+IA0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFy
by5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZl
QGxpc3RzLmxpbmFyby5vcmcK
