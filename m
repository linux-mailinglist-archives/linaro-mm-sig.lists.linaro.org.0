Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id AED7261F509
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  7 Nov 2022 15:13:27 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7E1733F5DA
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  7 Nov 2022 14:13:26 +0000 (UTC)
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (mail-mw2nam12on2045.outbound.protection.outlook.com [40.107.244.45])
	by lists.linaro.org (Postfix) with ESMTPS id 597663F5D6
	for <linaro-mm-sig@lists.linaro.org>; Mon,  7 Nov 2022 14:13:06 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=VdupVe7W;
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.107.244.45 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	arc=pass ("microsoft.com:s=arcselector9901:i=1")
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=F1S2qKBE/Ud15knIJZPEhAiEL4o8MI4IdH5wiE702oJm6VLk5oPM5EVufMr2vuHutxUwojvRSdyvE+4MrwNNdcv6iWGyExRjgYfg2qYd5nC0UKiAUM2YgHST+PXgjM7EF21AL70kLZfJMph3bFnr7I+nOCtxTBs7X1roXiW/6pOSy748MsUN3xFDEDO2CARdMZs184VVJFn6m9jsPf1focV80Uh0zIhXM8s++gsL9HRXMOeL479HyzXZLY4JbDISE80qm3KIFquxZIRXQN9fZC4wirK3MaLh3Zm/CEIQ5Ju5p6XTHEIzSpzhOyL+Q+LYnBdPHhiZFY+zoVkqOXoZ3Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Ql8iMkSU+8aDD1+DxdykrLn3lHixabxtbxK2cnvomIg=;
 b=NrBL/b/nIwOZu+g/urCUeE4DwKO3iOz2+3ZjUKk9hDFIwlwCr0kc2ZOMaks2Xrp+N+5JqhkkC1Gr73aIq7JhiMVQirJHOUZSLZr2W3QLatKgXozv9e4+vrojtbO3VOvOuzuVSN9TInIzGaFTQL0t2e2fwA+T+DfMB3sIneP2mA2PmIG9Nx4kMnDYAKuQwMOTpYJ+T0K+Knts+YAVjjGFyOYrYIusCKSNzWhB9pyw2s5F1q5W7KZgXec9+xAApZSMfxjChucpIWKcONiN1oMpdEbOOCwxyrIhfPggUl1fQ2+u46KJ2PQ6gEI+tgKL0rANGO4gbzY/ZMIKsJPOIVAKtQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Ql8iMkSU+8aDD1+DxdykrLn3lHixabxtbxK2cnvomIg=;
 b=VdupVe7WFojTLZxrMc2Sv6BIASMWDWZRQ8FEkQra3/uCs54R5kSlks1rXQNSO0iqztghagaeTUQO0gcSW7fQEI/QcbZMXrcihrE9tMz8Yf2m8tsJY/dzPIIUBc7TjHG8Q9ynsZi72SfqHZNKU3dpVvlj401L4iKzjL0m8kotZOs=
Received: from BN8PR12MB3587.namprd12.prod.outlook.com (2603:10b6:408:43::13)
 by DM6PR12MB4531.namprd12.prod.outlook.com (2603:10b6:5:2a4::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5791.26; Mon, 7 Nov
 2022 14:13:03 +0000
Received: from BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::7d43:3f30:4caf:7421]) by BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::7d43:3f30:4caf:7421%7]) with mapi id 15.20.5791.026; Mon, 7 Nov 2022
 14:13:03 +0000
Message-ID: <c7b5a907-1e1f-46ba-ec1a-dd40c33dab37@amd.com>
Date: Mon, 7 Nov 2022 15:12:53 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
Content-Language: en-US
To: Steven Rostedt <rostedt@goodmis.org>, linux-kernel@vger.kernel.org
References: <20221105060024.598488967@goodmis.org>
 <20221105060200.357061890@goodmis.org>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
In-Reply-To: <20221105060200.357061890@goodmis.org>
X-ClientProxiedBy: FR0P281CA0106.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:a8::7) To BN8PR12MB3587.namprd12.prod.outlook.com
 (2603:10b6:408:43::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR12MB3587:EE_|DM6PR12MB4531:EE_
X-MS-Office365-Filtering-Correlation-Id: 0afc4d13-d90b-4e92-a6ed-08dac0ca2f3c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	igPtnsWhTDGoPW0r+/sLsU+B8nGZilZVER3uNM8hKCWcW6F4zkD3EemdDTaGAoxKwUpBoOT9Xf0SSkGryOGlWCnnSwTzJ0Or4kdA9NQ5yAbLCdTx3l8kppeAL0ZowIT4meFc//BgdprlTTnOZS5vEOKZA/IAFvrIQBm/xhIJCuDLg//Adp+qHvvc1uyoVGIxcWwmupUDoUuQZrkhbQJyefn6dyZoDtdHe/LNlakwBE9YB49G5cfuT+Fr/+EHbVlp1cm3DGUAtXv+IuOYuQ07E1j4H0PoPVGvUkelbDd8jxVUg44FKs7Y16uQTXLAxiOCPaPWfTqjSGproIsQ6dLFmzc9yGayv79fQ33CJPL5q2URP7F8jaQLHAkTu6I6ydrDTQu1zlhOlLUOWtXb8NhzjuJHY8rTTlDZN3xD4bvhSvUArBqJYFHZkw/ZggiNq0knGt7wkoZ9V1/sT0tQdLKX7nDN/Ky6d4grztwg4n2TbezCT9B0B5uly3oydwAT2Lx2f/cMnVPnF417JBzsQGpe0Cp40WOJY/wYWWVSsZkV4gHbEX4+gcpa1TlwbRHJOzKVJLdw53cZQzuv+vMK/UrK6oQsrjyJ0YSrjnhwz4Bdq4weQVekvKPAvKASJDbe2HVK9yJbXZNJFBPOWGPrncEsCzDIUc6pAANyyNXQCv/YoJUKjIg8YGlZb14TyZo452FPGpXfvUEu3voXe1mbJTSgtpv8s0oLvJvgcyXg4pwO6ZXge7QCiicfSOD65M7NHedElDCQPuHLNrmEFFPPNR+AuuBqKt+9+koHuRrvBgQ3thfJM3yt4umM66tBAtIe6vLvrcNQOuV5rBsHiIrEg7zt7OTmJqOAT9VC25Ho+JoaHX8=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN8PR12MB3587.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(396003)(346002)(136003)(39860400002)(366004)(376002)(451199015)(36756003)(31686004)(86362001)(31696002)(2906002)(6506007)(7416002)(5660300002)(66574015)(6512007)(26005)(83380400001)(38100700002)(186003)(2616005)(8676002)(4326008)(66556008)(8936002)(41300700001)(66946007)(66476007)(316002)(478600001)(6486002)(45080400002)(54906003)(6666004)(966005)(42413004)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?SnlVMkIyRUovbTdJd0JkY2Z0ZHp0OGlGa0Z1YmVsVC9tNFIreCtrOStYcXhp?=
 =?utf-8?B?YnFsTlV1bFEyNmR3MHhTM1pRSkRac1NiMTdwTEtUZGpQRUZNWUZsVzFIQkZI?=
 =?utf-8?B?OU1yTldiQkFTU2UzK3k1NllKVUVnaENzYXlCcXRFK2lQa29tT0g1OTUzb0hE?=
 =?utf-8?B?cmU4clFiaE9RODhrMHVsaE5DZUlOazZyRVBDd3BRSjc2RERZMHRDZXZSeDhl?=
 =?utf-8?B?WWFWbWVLNnFQVFVxdTRQV01vSTJGOEI4YkR6bU9HU3Z6ZWF5MFA5REJqYW5l?=
 =?utf-8?B?SjZsVi9nelIzcHRjdWVDY2wzQXRzZGdkY25vMm9ralBEbWdCU3VUc3IvMjhP?=
 =?utf-8?B?aWh0WVpGVkNmcnFSL3FJdVV6OFpEWmVYWmdqOHp2MWo1V01EVDQ0RWJXdUV6?=
 =?utf-8?B?ZEpTZFpFT2ZyZmNUczJydGxyVEM1UW04cG04OTVwRnVUN24yalY0K3RTMTBN?=
 =?utf-8?B?S1ROTVpKMEwyTXF4ZFBJSzZGelNxOTFBazd4OFgyayt5N043NnIvVU1NUXJp?=
 =?utf-8?B?NXphTzBCQUw1VytQc1JPUWNnQ09GWmpCWk9iQkU4dklvQXRDZ3Vram1zTVkr?=
 =?utf-8?B?THNKbEROckpWMURxcmFtOHJKYUNSL3VQVDFHREEyV2Nib0RNU3E3TW5PczRy?=
 =?utf-8?B?RVp3QWUwU1k5YjNxeEpHWncvMlFvSFBwK2ZGb2R1NmxJUFJxNUJPWW5RSEpW?=
 =?utf-8?B?ekd4RnJDZ21uRVJBbHV2dUxmWWJHdGJMUlBLaVE4ZzJFMGFzTHN4UmNHMUw0?=
 =?utf-8?B?Z0tPYXNTTmZwdjRXK3pLZXpGNU1Oak1EeWl2NklxOGh2NXFFQWd1OUxQV1Nu?=
 =?utf-8?B?NE9XRlQ2b2tWYUw1N0RlREdKTTQ0bDh3Vk9mTmVXNm5JOElTM2tRSVA4NUdC?=
 =?utf-8?B?bENpNTd1R2lWY0N2TDNvNU9wdFhyZWEwTjd3b05kRTVPcjNqQmY0RUVBUThJ?=
 =?utf-8?B?Y0t2anlYZS9CRGtJa0QvRjRyOUVSQ1BraXVvM044Zm9vbmRoYjNxZUkxZmVj?=
 =?utf-8?B?cGM1b2NBODg2WkxudlI4cGt1N25mbjM4d212ZmphMCsvNDhXWk9pb3JnbU5s?=
 =?utf-8?B?SHkvSllGbGdTOStvN3VNTjFvZkdhVWVtQTRPNWt4c1U5NkNxaGlnb2ZIc0No?=
 =?utf-8?B?ekNxRkNPOElwUm1FYlhYR0d6SDVBa0hrWno5SnpkOHdETDF3ZWRqZHJGRWdF?=
 =?utf-8?B?dTlmSkp5M1Nyb0M4SEtPWE5kbEtyVHZZc3A3VUdPN0xLMkt2cnFYclk5eDQx?=
 =?utf-8?B?TGlKdzdFNFg1WnllNEp1SVJWekpQZmVQcWFITThQbElTM3dRQ0Z2SGtPN2ZC?=
 =?utf-8?B?NXVSMTQxcUM0bkY5OEpBRHNRVGU5NjBveGNORFBqKzhGL0Z3UzVkWGczN0Vj?=
 =?utf-8?B?THA3WUsyRzBVWUswTHBXRDF0ME9KWTgxTjZLcFMvMHZKTjR2OHl1N1lEQUpX?=
 =?utf-8?B?NE00N3ZoUm93OHZPNE1YaVN4MmFCa1ljYjYwWmJ2U3l1cDlycmw3OFFFWGpO?=
 =?utf-8?B?QjF5c29QNXdGVk9QdVYvYzJoWUd1UDYvazNsVDdPdWF1MldjdzQrUTc5WkJI?=
 =?utf-8?B?VzdFMGpZd2Z5bXlGcU9jMHpaUTBCN0NNdzJWaEJZR1ZMQUtXUTBWRFZYR2pj?=
 =?utf-8?B?TnNob0NQdGV3Um1IK2R3Z1NINk5KeWFUaE5iZTJrZjJrcjJ2dW12djFmWUNS?=
 =?utf-8?B?ZGxZZ1lCR3pIbksvYk9YUXkwZkRIL2VyTnNFTkFMTFVWaDRyMjEwZDFLbVRG?=
 =?utf-8?B?eThXU1ZRZzVSaElOTVViQ3dxc3E3SFZONlA3cU1sNFovcU8vRVZaK0xBWDRK?=
 =?utf-8?B?R1grSnlZdFVEbXZ4UUVWbitPRmk4cXJ6RXdEL2RLNStJTmpCelBiQUNNRE1I?=
 =?utf-8?B?eEdiLzBFcHdUR21MMHV5T1FmSWhkRVZrdjFJTVcrU25NWG9NTE5nOFZaNGZZ?=
 =?utf-8?B?d3lZc244RCs3NUs0SUZhcms4d3JNU1FqNzgrNkJDMllSb2taUVJBcXMvQmZh?=
 =?utf-8?B?eHlOMk05Sm80TzlId2k0ZHZaMmgxYkpDNnR2akpQNkdRM1V1THlwOVhxNGV3?=
 =?utf-8?B?KytLSHR5N09pbCtuVDRxSit4ZlU1aFVncnpndVN4UlJhSUV1SkVLV25wdEUr?=
 =?utf-8?Q?e02Q=3D?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0afc4d13-d90b-4e92-a6ed-08dac0ca2f3c
X-MS-Exchange-CrossTenant-AuthSource: BN8PR12MB3587.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Nov 2022 14:13:03.7433
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 4gvJIo1JOyHcnEFohV9OttjXZMlQVuClPW6K0L3xPOgLt5xe9RlJBnWY9ybMQl3d
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR12MB4531
X-Rspamd-Server: lists.linaro.org
X-Spamd-Bar: ------
X-Rspamd-Queue-Id: 597663F5D6
X-Spamd-Result: default: False [-6.50 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector9901:i=1];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	RCVD_IN_DNSWL_HI(-0.50)[2603:10b6:408:43::13:received];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:40.107.0.0/16];
	MIME_GOOD(-0.10)[text/plain];
	ASN(0.00)[asn:8075, ipnet:40.104.0.0/14, country:US];
	FROM_EQ_ENVFROM(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	NEURAL_HAM(-0.00)[-0.954];
	RCVD_TLS_LAST(0.00)[];
	RCVD_IN_DNSWL_NONE(0.00)[40.107.244.45:from];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.107.244.45:from];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	RCVD_COUNT_THREE(0.00)[3];
	FROM_HAS_DN(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[amd.com:+]
Message-ID-Hash: MFEOTMUTIC2JONNY4UPFOE25X73JDWOA
X-Message-ID-Hash: MFEOTMUTIC2JONNY4UPFOE25X73JDWOA
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Linus Torvalds <torvalds@linux-foundation.org>, Thomas Gleixner <tglx@linutronix.de>, Stephen Boyd <sboyd@kernel.org>, Guenter Roeck <linux@roeck-us.net>, Anna-Maria Gleixner <anna-maria@linutronix.de>, Andrew Morton <akpm@linux-foundation.org>, Sumit Semwal <sumit.semwal@linaro.org>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v4a 30/38] timers: dma-buf: Use timer_shutdown_sync() for on stack timers
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/MFEOTMUTIC2JONNY4UPFOE25X73JDWOA/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

QW0gMDUuMTEuMjIgdW0gMDc6MDAgc2NocmllYiBTdGV2ZW4gUm9zdGVkdDoNCj4gRnJvbTogIlN0
ZXZlbiBSb3N0ZWR0IChHb29nbGUpIiA8cm9zdGVkdEBnb29kbWlzLm9yZz4NCj4NCj4gQmVmb3Jl
IGEgdGltZXIgaXMgcmVsZWFzZWQsIHRpbWVyX3NodXRkb3duX3N5bmMoKSBtdXN0IGJlIGNhbGxl
ZC4NCj4NCj4gTGluazogaHR0cHM6Ly9uYW0xMS5zYWZlbGlua3MucHJvdGVjdGlvbi5vdXRsb29r
LmNvbS8/dXJsPWh0dHBzJTNBJTJGJTJGbG9yZS5rZXJuZWwub3JnJTJGYWxsJTJGMjAyMjExMDQw
NTQwNTMuNDMxOTIyNjU4JTQwZ29vZG1pcy5vcmclMkYmYW1wO2RhdGE9MDUlN0MwMSU3Q2Nocmlz
dGlhbi5rb2VuaWclNDBhbWQuY29tJTdDZmRhZGRlOGQ4MDFlNDhmZWNhZmEwOGRhYmVmMzMwZjQl
N0MzZGQ4OTYxZmU0ODg0ZTYwOGUxMWE4MmQ5OTRlMTgzZCU3QzAlN0MwJTdDNjM4MDMyMjQ4OTk3
ODIwNTE4JTdDVW5rbm93biU3Q1RXRnBiR1pzYjNkOGV5SldJam9pTUM0d0xqQXdNREFpTENKUUlq
b2lWMmx1TXpJaUxDSkJUaUk2SWsxaGFXd2lMQ0pYVkNJNk1uMCUzRCU3QzMwMDAlN0MlN0MlN0Mm
YW1wO3NkYXRhPW1FTDNiRlU3Zlo3a1NyejN2djk2b3BkQXl0N0V3NFVlWTJuTkYlMkJoRG1mYyUz
RCZhbXA7cmVzZXJ2ZWQ9MA0KPg0KPiBDYzogU3VtaXQgU2Vtd2FsIDxzdW1pdC5zZW13YWxAbGlu
YXJvLm9yZz4NCj4gQ2M6ICJDaHJpc3RpYW4gS8O2bmlnIiA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQu
Y29tPg0KPiBDYzogbGludXgtbWVkaWFAdmdlci5rZXJuZWwub3JnDQo+IENjOiBkcmktZGV2ZWxA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IENjOiBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5v
cmcNCj4gU2lnbmVkLW9mZi1ieTogU3RldmVuIFJvc3RlZHQgKEdvb2dsZSkgPHJvc3RlZHRAZ29v
ZG1pcy5vcmc+DQoNClJldmlld2VkLWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29l
bmlnQGFtZC5jb20+DQoNCj4gLS0tDQo+ICAgZHJpdmVycy9kbWEtYnVmL3N0LWRtYS1mZW5jZS5j
IHwgMiArLQ0KPiAgIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigt
KQ0KPg0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9kbWEtYnVmL3N0LWRtYS1mZW5jZS5jIGIvZHJp
dmVycy9kbWEtYnVmL3N0LWRtYS1mZW5jZS5jDQo+IGluZGV4IGZiNmUwYTZhZTJjOS4uNWQzZTdi
NTAzNTAxIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2RtYS1idWYvc3QtZG1hLWZlbmNlLmMNCj4g
KysrIGIvZHJpdmVycy9kbWEtYnVmL3N0LWRtYS1mZW5jZS5jDQo+IEBAIC00MTIsNyArNDEyLDcg
QEAgc3RhdGljIGludCB0ZXN0X3dhaXRfdGltZW91dCh2b2lkICphcmcpDQo+ICAgDQo+ICAgCWVy
ciA9IDA7DQo+ICAgZXJyX2ZyZWU6DQo+IC0JZGVsX3RpbWVyX3N5bmMoJnd0LnRpbWVyKTsNCj4g
Kwl0aW1lcl9zaHV0ZG93bl9zeW5jKCZ3dC50aW1lcik7DQo+ICAgCWRlc3Ryb3lfdGltZXJfb25f
c3RhY2soJnd0LnRpbWVyKTsNCj4gICAJZG1hX2ZlbmNlX3NpZ25hbCh3dC5mKTsNCj4gICAJZG1h
X2ZlbmNlX3B1dCh3dC5mKTsNCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0Bs
aXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1t
LXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
