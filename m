Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 18198A87B32
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 14 Apr 2025 11:00:05 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0C0CD45FF8
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 14 Apr 2025 09:00:04 +0000 (UTC)
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (mail-co1nam11on2077.outbound.protection.outlook.com [40.107.220.77])
	by lists.linaro.org (Postfix) with ESMTPS id 5A31C4486D
	for <linaro-mm-sig@lists.linaro.org>; Mon, 14 Apr 2025 08:59:48 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=AGOftLDs;
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.107.220.77 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=su5ql1FAaoN7uXC+jkt+hhr4Qv1homabczbNk2SkO9oXUwYVe30ZC5HVCtqS8vDE5IFhOMBDvD4X2/5ZvWEzuKbt3MwoVnaMltiYgM/ggqSPxOzcc4KJOFSu15BN/7x90DZrJYYI0Xi4v2I5W5V652i0ypyk4k1WvVHk0lFcR1BCei3UnCMKMkuDG5h/H/8KK2WQYwwtB/BcDj6GaQBUpb6XwixgFZmR+lkCVpu1UeuAgT7ZHAzA/dIc5mBo9QbhY6IDvbfJbfK76Kl4iWkWfXOj6q9Ayzom+pCV5qGN11y+XoxDVLu6lS0gvftMlL79eOXmcYmV5IhQBXqpoE8OjA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pLY8sZAIR+xJsLxLCEF3UqRnizSnJbIl5dgNfr+dGAA=;
 b=di9JiEtS9EeP5ZtWqZG5XEGw7nfzrKg+hNPk7RjMrjBVrVDp4eZYLa04+8l5eNNULyKOIW7JXwNkOGXzYzFtakFxA9uHC1z4Iq2o2SmmlTXhMk/b/nFptIVLnUte3Uf+Gs7acUSf2PJJ2p/Sncj4gqfrVH1HIsBJnL8UWFIYXUm0g2WvwIC7k30IsvepoMuiEcDHOubUm2e6/kERZ53oEV1uouAUm82krKA5z2hMoJvl7dXCQ+r+8MO9EVHFE4KhBV9Lz/hbYSpAIUICZRAPSjERlCbQDfM7uu0LCN0qQr6PPTxou0Ro+Vf+dBAzHbeBsUbaxG9rMZ5wKCCTxXGQdQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=pLY8sZAIR+xJsLxLCEF3UqRnizSnJbIl5dgNfr+dGAA=;
 b=AGOftLDsjYjsIlgCjwQfZky1EC63s5o7mHR4vroY9niyE5ehWhC41EMoWmvxt/cFqdWk3PIxjHaYmxp0OPhItcbPLk07mm4+CLoZbOxbcQkWo4IJe/3m5zq5OAdEWUHLUabZ7Xj9U5z7hVyM9ngFQxn75k4LU0H58SyHYcR6FX4=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by CH3PR12MB9024.namprd12.prod.outlook.com (2603:10b6:610:176::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8632.28; Mon, 14 Apr
 2025 08:59:46 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5%5]) with mapi id 15.20.8632.025; Mon, 14 Apr 2025
 08:59:46 +0000
Message-ID: <9598082e-3719-4436-bdc9-15faa19837d0@amd.com>
Date: Mon, 14 Apr 2025 10:59:41 +0200
User-Agent: Mozilla Thunderbird
To: Thomas Petazzoni <thomas.petazzoni@bootlin.com>
References: <20250410-uio-dma-v1-0-6468ace2c786@bootlin.com>
 <09a5beeb-bae3-4a00-9aff-66adf68064e6@amd.com>
 <20250410214307.361e373f@windsurf>
 <b596c9af-c0e3-4557-b45a-462a33179235@amd.com>
 <60e2d844-418a-4bde-b6ef-76d10448d5ec@bootlin.com>
 <45bbee88-0446-4773-a4b6-d19a1747c43f@amd.com>
 <20250414101729.598c1422@windsurf>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <20250414101729.598c1422@windsurf>
X-ClientProxiedBy: FR3P281CA0017.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:1d::20) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|CH3PR12MB9024:EE_
X-MS-Office365-Filtering-Correlation-Id: 4d2af5e7-9bd7-4838-b11a-08dd7b32b42d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?UjlZbEVuMUxldEZtSzVEdzVBdFhBSzJ3UzJzQThUMUY4UWd2ZC8vZGw0bHJo?=
 =?utf-8?B?UkxqUzVLTVBrN2VIKzJod3l5bUtzNmtSNURYOGxCb0tEK0Y4d25kRkc2elFs?=
 =?utf-8?B?eEVHaVQyUzZsZ0Zac1VZOUVzU3dtbjQxMW9yQVVOajdqNndQR0F1Tzg0RUZZ?=
 =?utf-8?B?RW9rbUwyZVNnZGZTT01QdU9aRGtSdkI4bHE0Ty9ybmpEbm5DQ3pFclBNZUE1?=
 =?utf-8?B?UDZxVDlXTVFXZlJVNERLY1ZoSGxuUHFOUzZ3SEZIbTNDbkRSUVAwS05kOTN1?=
 =?utf-8?B?OVNjbFdHTVI5SVdpUjEyRFE2VVAvMzk1VHlMQkQxNVRtTnU1cG5wcnRUMzha?=
 =?utf-8?B?VWNNT2dWeUMrVUV3UGFmc2dGSUhIV2QyWldnR2JhclJ1a0NzZWtWYjQ1M2hI?=
 =?utf-8?B?OVZpb0RBYkNndUdvcWxYeXdsVmRMVGI5UHg3aUx0WWlKV3JPejVxcEsyVVBU?=
 =?utf-8?B?anhMUmNKbW9VWWYyMlJ3QVlMVTVYT0xWRUhQVU1VcEFUMVpiTEJBNlFjUFRw?=
 =?utf-8?B?K3Y2OFJ5OHNpb3BvcW9WTGUwanBmd1JsTUpTSlI5UVBsV0tnOEJVSUlQUFl6?=
 =?utf-8?B?aEtsZlU0cGFHSng5dmEvZzdBRHhYWnNsbE1LdVRueXBJMXFCazlqbDdqV1Y2?=
 =?utf-8?B?bFp6Y3c1WkZyN3JDd1JYTVpCZzFubzJmRVFzUGhWcHk4MW9hVnFxT3Z4MnV5?=
 =?utf-8?B?R05JV1g1WUxhMUZxOGtCdWppdkpFWDFNai9KMDBHWXZ1OWRNVnBZRG5qZVMv?=
 =?utf-8?B?VEpsV011aFNYYWxxejhGcFRFdkVkbjBURnJvQU5WVkRYUzN0MFNyV0tnbDY2?=
 =?utf-8?B?bXhLZ0ErUVRPcWdSM2R3YXlxTjUzek1za0ZPaHc3L2twcXNJQ0hnVkVsUkM3?=
 =?utf-8?B?SGpjS3RuQThvZW9YRTVDeUZHQ2tNdHpvby9aeG50d1FQUXB1RlFxOVFuWXpM?=
 =?utf-8?B?Zm5mbFBDRjJZd1dkcUlPbDlrN3JmdDRhSUExWU5ocnU2MFNFNXI3MUJHelB6?=
 =?utf-8?B?ak82TE84Qlg2eUhwOTFjTm9QYklMekJkQURLL3ZJakgxQ1ozTTJhU1VET29X?=
 =?utf-8?B?K1JCUU9HQ2ZYbFdIa3FFQ1lJYmQ4RVVzLzFQeGFtNDh0L1gxc1R0YU1QcVJ1?=
 =?utf-8?B?KzJZNXdkYitUMkhIWVdHWFplWDFicWZ0QTZGWS9VM0ttU0djazJQRWlrUkR5?=
 =?utf-8?B?bmljcjFTY0RwUTJFZk5aMDFRRjlVd0pJUlpOakxVUHh3eVd2QWYvYmRrY3FJ?=
 =?utf-8?B?N2M4bE5XT3dFcTE3dW5vbE9WazhPaVcvcTNLdjRVQjlKRUtmOGhvVno1UVdj?=
 =?utf-8?B?VVppajJzeVIzWGxyR1RMMUkvR3ZKNzNCbStlcU1FdnZCM1R2NkxMQ3dhQTVp?=
 =?utf-8?B?VWxwQXp6azlDWlJuNUlSa3NkOGplMklsbVZ0ME1sRndyUjZGc2tqbjhGbG9X?=
 =?utf-8?B?bzhOUllsRGJSZFVia2V5R2I0aGZJanI2bjVrTTNMd0x1RFlGcVUxcUhWQkp3?=
 =?utf-8?B?WnhGeUxTUm5SQ3c0c25WQTFVNytGQ1RQSFAxOVdUdVg4MzVBT3o4ck43M2RU?=
 =?utf-8?B?ek56dWVWNEc4NkVaM2FFWlg1Y1M2ZThjWUY3SmVYUXc4RkthZXJpdWV1V3pi?=
 =?utf-8?B?OW5QWDdZeFV6S3R5TERFRkEyQnVyN0ZZOVI1S25LRm01T0hpRmJqVkltOVBz?=
 =?utf-8?B?Qlh0TzdFV1ZrZG8waGxEbk1ubXAzMzh5L3JHcitSak51RFBOMEF4NHFKZnha?=
 =?utf-8?B?SzNYcUxUOGVWUXN3N2lVM3ZCWjlka2dVWVBtTWpQT0RLNzlESGNQdTZmZWQw?=
 =?utf-8?B?Y0cyQ0RCWDNmWkJFdGRIRGhBNDQ4UG5tNk10KzVZdU1NK3JsNEVhRmtzdHV0?=
 =?utf-8?B?bDhJMDJHSlZnRHloNEZYSll5MHBnMFBTQUFIeFV3RWpWRWswV1RRdFZkbTZY?=
 =?utf-8?Q?TSJXuME87c4=3D?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(376014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?b3VBWHQ5V0xVckVYVE5leVVpNmhEL3ZUeFVqSjExVC9LcGNXMXpGZ2xia1JB?=
 =?utf-8?B?Nit4bDh5eUY3VHp0R3I4QXhvS1BBcVNsTThTZHQ5NEd0d0FjdEFJRCtubm1j?=
 =?utf-8?B?dmc5eFpLL24vTkJoNXFES1pvU2FEV1NCam1nNW41NG5zZ2Vnc2NqdGo4bXZC?=
 =?utf-8?B?bzB2bFBsWW9FVXgzMXpDYlFIUWM2N3JoeHp4OVRranE4clZqaUlwcUliSTdZ?=
 =?utf-8?B?dWxiUGhYbTBZUXBQcTN6Q0RHbnFoenNJOVMzd3ZpNVlNRi81cXc1ditTczJO?=
 =?utf-8?B?dWpMK2hZMUkzSGU4Vy9JcisxaG5CTzFSN3BNT3ErYzVzM2ZzYjlITU10aE5S?=
 =?utf-8?B?eEx6UVBaN21Zd25LdXo3SnYwN2VJSitrWmthSmRkOHhwT2dacFoxTG1EQU5U?=
 =?utf-8?B?dUtWL29aaTZKTmhsS0dyR2ZoSjRIMC9LTXBJSFZ5aXoxeXp0Vy9TVGZhWG9l?=
 =?utf-8?B?S3QyblNjZmZYaXFaV1UyVXBlVkVTcUFETVJjUEdnRmpQMlFpcmZRNmx5Ky9a?=
 =?utf-8?B?dkJpb2pQRElhMHBiRGxZWloyTEpUcGkwaW9oQVdLRWE4cFNDcU5BZVlvOVlj?=
 =?utf-8?B?OXFiOGU0MjE2VWVBVVcyV2IxWXc1Zmt2S2EvZkhtL2psWjJEZk5Cdk5rQTEw?=
 =?utf-8?B?dFNjSERVajE0Yy9qVmphZ2hPdkc0QnV3MTFZdmk1YW1rc3NzamtRL2crRytL?=
 =?utf-8?B?b3NjeTJuNHVsOU1ZSlkzZjJaOU95dFZvYTl3WXUwSHNQWXVvWG5COEtXMHg0?=
 =?utf-8?B?Rko0SkNwai9vQVdFSFFjOERhTGFtYStkSEZSVG5uSlhDazJYL1lYWUJKeitE?=
 =?utf-8?B?Z0tXR3FyQ0dnRHNldHZ1aEpzQ2UwQ2ovQ3FqTHdzRE1tRExqVXR1a3ErWUJv?=
 =?utf-8?B?VGRJekZ4eHMvUGlQbnI4Y250TFEyeTdQbmp5ck1qVW1EcDFXT3hPekpLSDNp?=
 =?utf-8?B?K3B3ZnFwWWd3MjZFQUVVeEJCdjVRbVhiMUtDQWcxTG5TaGpNN1RObWY4N091?=
 =?utf-8?B?MWVHSCtnaC81Z1VVU0JVV1RHeDdSWndTVGhielBUdHAvcWxkSzZlK25iaWhz?=
 =?utf-8?B?VE9tSksvbGNGc1BxTUlwU3MrM3NsUG10WTZXRWU5aklTdkZhdmo4aVNwb1Uv?=
 =?utf-8?B?WUpxbXlDNDRVYVRlQi94WEtBU2NPS2pMY1JnRkJYbTIyY1Y5by9PcjFNbDc0?=
 =?utf-8?B?TjlMZ3IySVcxa3dsZDM5ZlE5NjVJUlBpbExFaER3MGhCMmozK1JVcFR6VWVE?=
 =?utf-8?B?Z21sTGkzT0l6d1lQeHVnRVNOZkYxSXRjd1JzZzArWldURklRbzRjUzVSczBU?=
 =?utf-8?B?VnpneWtzLy82Z3B0UVYzV0JhaHRMOFVKaURJenlXa1pKSHovTXl6d08xRzA0?=
 =?utf-8?B?REZnUTVPd2JpNmp2RlhYSkh3d1J4TmxMdWgwSjZrVU9TM3JzaGVmdTEvdUFs?=
 =?utf-8?B?bU95TzJGT2lNdjBtNVQzd2xJOVEyTUdtajRTcThDdkJBeCswUW5SWlBsa014?=
 =?utf-8?B?bGNGYi9FdXRUUTlzQzVUdGp4L0ZUK2llVG1YUDNDclVFVkpLd3FDR0haU295?=
 =?utf-8?B?dWNCc25VbGRRRXpJSEZrYlAvc2hKNnRBeEZGd3JmTFFyd3QyTFhDbk5lcVho?=
 =?utf-8?B?dmwveHZyM0U2ZE5uUHBCSlFOVWZBZUhPVS9ML3ZUemJHL3V1b2IrekNTZVRv?=
 =?utf-8?B?MWx6N1l0TlYwOTJXYmludUpuSWFCbHgyZVR1SWs2SDl5Zy81TTZibEhJUCtN?=
 =?utf-8?B?YVV1dG9GL2xMWjNqd2dGMmM1UHQ5OFpWcE8wUkd2d1RZcEYwZ2pjOXp2cW81?=
 =?utf-8?B?M1A4bTZmS2dYQjVPNWR2RXNocDNvYkQwVWNwRXJmTEpzcFYwZU9WenN6S2g0?=
 =?utf-8?B?YlZQS1VxWXRWK3FiRll0RWgwYnNsMlhpL0Z6Y1Z0dWlIQkJ5WFZkUXd5RkQ4?=
 =?utf-8?B?SC9Kd050cnNVbkh4SlZxYXNjTWx4ejkzenN0Z3d5UUs3d1MyK2J6ZE9ERHdT?=
 =?utf-8?B?VDYyZVYyVG9EbXByNnR4S0JXYnlqMk1WZFhSYVdvTkdDU051T0Y1Y0sxMnlx?=
 =?utf-8?B?NC9JOTY3R2RlMjhyV1VkRlM5b05ZRkdMMnZaMEZySURTN0dkRGorb1VJVHpi?=
 =?utf-8?Q?0lok=3D?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4d2af5e7-9bd7-4838-b11a-08dd7b32b42d
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Apr 2025 08:59:46.0717
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: atV14Xthnv7lxN+3zzLcy7pK/nk+b21PhhIMfAsKPsvh5e4GRzGNWDAZFxy07Tit
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR12MB9024
X-Rspamd-Queue-Id: 5A31C4486D
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.50 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	RBL_SENDERSCORE_REPUT_7(0.50)[40.107.220.77:from];
	MIME_GOOD(-0.10)[text/plain];
	BAD_REP_POLICIES(0.10)[];
	R_SPF_ALLOW(0.00)[+ip4:40.107.0.0/16];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.107.220.77:from];
	DMARC_POLICY_ALLOW(0.00)[amd.com,quarantine];
	ASN(0.00)[asn:8075, ipnet:40.104.0.0/14, country:US];
	ARC_ALLOW(0.00)[microsoft.com:s=arcselector10001:i=1];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_SEVEN(0.00)[8];
	MID_RHS_MATCH_FROM(0.00)[];
	R_DKIM_ALLOW(0.00)[amd.com:s=selector1];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	NEURAL_HAM(-0.00)[-0.998];
	RCVD_COUNT_TWO(0.00)[2];
	RCVD_TLS_LAST(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[amd.com:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: IEUQEGPFGP7JEWNXINXQYVWOLXFGEQ5O
X-Message-ID-Hash: IEUQEGPFGP7JEWNXINXQYVWOLXFGEQ5O
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Bastien Curutchet <bastien.curutchet@bootlin.com>, Sumit Semwal <sumit.semwal@linaro.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 0/3] uio/dma-buf: Give UIO users access to DMA addresses.
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/IEUQEGPFGP7JEWNXINXQYVWOLXFGEQ5O/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

QW0gMTQuMDQuMjUgdW0gMTA6MTcgc2NocmllYiBUaG9tYXMgUGV0YXp6b25pOg0KPiBIZWxsbyBD
aHJpc3RpYW4sDQo+DQo+IE9uIEZyaSwgMTEgQXByIDIwMjUgMTQ6NDE6NTYgKzAyMDANCj4gQ2hy
aXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPiB3cm90ZToNCj4NCj4+IEJ1
dCBhbnl3YXkgcGxlYXNlIG5vdGUgdGhhdCB3aGVuIHlvdSB3YW50IHRvIGNyZWF0ZSBuZXcgVUFQ
SSB5b3UgbmVlZA0KPj4gdG8gcHJvdmlkZSBhbiBvcGVuIHNvdXJjZSB1c2VyIG9mIGl0LiBFLmcu
IGxpbmsgdG8gYSByZXBvc2l0b3J5IG9yDQo+PiBzb21ldGhpbmcgc2ltaWxhciBpbiB0aGUgY292
ZXJ0IGxldHRlciBzaG91bGQgZG8gaXQuDQo+IENvdWxkIHlvdSBjbGFyaWZ5IHdoYXQgaXMgdGhl
ICJyZWZlcmVuY2UiIHVzZXItc3BhY2UgdXNlciBvZiBVSU8gdGhhdA0KPiBleGlzdHMgdG9kYXk/
DQoNCkkgaG9uZXN0bHkgZG9uJ3Qga25vdy4gSSBoYXZlIG5ldmVyIGxvb2tlZCBpbnRvIFVJTyBi
ZWZvcmUgdGhpcyBwYXRjaCBzZXQgYXJyaXZlZC4NCg0KV2hhdCBJIG1lYW4gaXMgdGhhdCB0aGUg
Z2VuZXJhbCBydWxlIHRvIGp1c3RpZnkgYWRkaW5nIFVBUEkgdG8gdGhlIExpbnV4IGtlcm5lbCBp
cyB0aGF0IHlvdSBuZWVkIHRvIGhhdmUgYW4gb3BlbiBzb3VyY2UgdXNlciBvZiB0aGF0IFVBUEku
DQoNCkluIG90aGVyIHdvcmRzIGZvciBVSU8gdGhpcyBtZWFucyB0aGF0IHlvdSAqY2FuJ3QqIGRv
IHRoaW5ncyBsaWtlIGV4cG9zaW5nIHNvbWUga2VybmVsIGZ1bmN0aW9uYWxpdHkgbGlrZSBETUEt
YnVmIHRocm91Z2ggVUlPIGFuZCB0aGVuIHdyaXRlIGEgYmluYXJ5IG9ubHkgZHJpdmVyIG9uIHRv
cCBvZiBpdC4NCg0KUmVnYXJkcywNCkNocmlzdGlhbi4NCg0KPg0KPiBUaG9tYXMNCg0KX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBt
YWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2Ny
aWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3Jn
Cg==
