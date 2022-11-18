Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id C153062F203
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 18 Nov 2022 10:58:53 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C9FBE3F5E9
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 18 Nov 2022 09:58:52 +0000 (UTC)
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (mail-sn1nam02on2073.outbound.protection.outlook.com [40.107.96.73])
	by lists.linaro.org (Postfix) with ESMTPS id 7224C3EF19
	for <linaro-mm-sig@lists.linaro.org>; Fri, 18 Nov 2022 09:58:35 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b="Fth/zx0q";
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.107.96.73 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	arc=pass ("microsoft.com:s=arcselector9901:i=1")
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=T1Rs3D+RrL08/4JqZi/w3dKJw+2pcg8ukar6gnHeS/ogxtyzlc9HXV2wXzB+9fl3BQQCwU8zv0A8K+cfeM0vIaOy4jw1IneTTXcyV+oq4RbxBfySfm8jb9fwrKGIPecSzXpBzvReo4JGs/RAXPUo6CYjMWshcRXftK8ht2P2bUvgmdyNuSxYzMEUeOiQQfsQXddYrxAPHE1PMxXZLtmMFqf9ahQ2wxpHeD5OJPL/txojewrn/VlEvoFOnve8IVDTvl6akqLWay0MiijQs0HV3FQGhJM7zkmSu211REsVPO5+o4vltzc3rDDDzfQdbUzDvzofSA5Dkrd3LPd1AyZnOw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sJF/IU7uZQzyCaWWiq8jwaowTN85bSbrM0A9GtwRBao=;
 b=VDjJVEmFaA+BUAny5qQovG+Hb2o4kKqpJg9yGIO7307s9d/E84gSPetHKM95WhjCXEzf4sgQM05NBrcn4JvAbU8m2adDe3dyKrWR1wQCYhylzsPH3rTk7+9N+UcHmfxWeCbrpTHVZhNjTPZj5k/kW6EsUU3c29TY2ovEOLefowAHurHfa2Hc1vETO938RIhEKJyXKYm0/tBL1dr3TDomhQN2Zo5tkD3mQYJAyXV+i8KM5ZfJ06fqc1Nk/M8WbDKXim4CwRSaMr/yn7/vIFKuYMJtjqX+ILf4VF2GaAZQTZT6Len1b8N95AWC++8YekPb4u/7MSwEAEPkFjVOXMJDYA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sJF/IU7uZQzyCaWWiq8jwaowTN85bSbrM0A9GtwRBao=;
 b=Fth/zx0qDmQ8NUbbigXZ63nOTI/3gzRo0SNwLpgHUe1wcygX/Nh4EknkjyqQ2/zZ2tiB87SuBWZVIeMe1odt0u2nv6XBwGbo4Hwg4EXqT27rsbxLf5nH7UkYIhug7EYsk5tXuNKkNe4w1/3GFHaGl+Os5SQqWZxfXNAQcoDvaYo=
Received: from BN8PR12MB3587.namprd12.prod.outlook.com (2603:10b6:408:43::13)
 by CH0PR12MB5140.namprd12.prod.outlook.com (2603:10b6:610:bf::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5834.9; Fri, 18 Nov
 2022 09:58:33 +0000
Received: from BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::7d43:3f30:4caf:7421]) by BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::7d43:3f30:4caf:7421%7]) with mapi id 15.20.5813.017; Fri, 18 Nov 2022
 09:58:32 +0000
Message-ID: <b31fc44a-5827-5213-2a8f-9f0529155542@amd.com>
Date: Fri, 18 Nov 2022 10:58:28 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Content-Language: en-US
To: Lukasz Wiecaszek <lukasz.wiecaszek@googlemail.com>,
 Gerd Hoffmann <kraxel@redhat.com>
References: <20221117171810.75637-1-lukasz.wiecaszek@gmail.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
In-Reply-To: <20221117171810.75637-1-lukasz.wiecaszek@gmail.com>
X-ClientProxiedBy: FR2P281CA0123.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:9d::16) To BN8PR12MB3587.namprd12.prod.outlook.com
 (2603:10b6:408:43::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR12MB3587:EE_|CH0PR12MB5140:EE_
X-MS-Office365-Filtering-Correlation-Id: 97b1c632-0298-484f-fe22-08dac94b73a6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	EBIZXCEzSr6CwGImqN49TCA/TQI1U0Nz1AqZqqcBEVJl7k6ZtU6aaRWXNfYjn2LuN4Bt83/kfkH0Q92a0wFL9jdXWnl6tUFjJbyLTfeMTu2gDCZ0yhrw6gDKwP48uysw3FO8OfiHT36vT4DV/Zi9/bPe/njtChwgiJcHC6iN8yJ044OQNrYxfn4PWCC+g87jU5t3jye4ffnE+C3fIt9o89BoQty6VFHJiSE/C+4AgcIuCszdHGKiJw6ZdAmwv19lBbJAqK4ZTy9MofxtjxIM7s/X5EyiVErIpPwH+eCZXoA5J3oCxxJkcpXU/CNhn5BMbgOClFxnIbRpx/3ABZCDZ/SJCvs3VbQ65UPDGVeWQegp4KChaylrpt9eot/neeE7L/xwBkbWKbHFNIAfFOYezwRd6dsAMAAQ3YqhbTqzlB1IfQX1onSAoV/BBgM1zsniZ1X64sutKaA7cIBxDvJF6UQf1pr3fI7LNEGaeK66cXjmcAkGse5dmYW7FWZ4qY5BRBFl/YIuv31S9YK8C/Eqk3HqcPb8/8sBZiQ0uH4gLb7T9Lw6pNMMDf3j2Zn5BrrftbEtd9PUHYLS0a52yL04K8C6FQZ/LgK/gziNG51RWOu9bmICs7W1AO9Lmqk1jVasH97hr1vomuY2w9sFKEcGE3Zcjm7/wO6jQcAwIunLqjTfS2gMLSxCB4LOspInjuaS1XHC9lZe/kiYVRAw0uH9aL5RR+v5Ym0zQROb/4U7iYgVABC2kVM58NMA4yeE11VKcrKuvKO22jDX8P8GuF2yadrgn8vqRWPOf1hpCYthgdM=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN8PR12MB3587.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(346002)(136003)(396003)(366004)(376002)(39860400002)(451199015)(45080400002)(6666004)(6506007)(66574015)(316002)(6512007)(110136005)(66899015)(31686004)(54906003)(2616005)(66946007)(8676002)(4326008)(66476007)(41300700001)(6486002)(966005)(66556008)(5660300002)(186003)(8936002)(478600001)(2906002)(83380400001)(36756003)(31696002)(86362001)(38100700002)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?R2FxTWM4SERvUE9CT1VmMzVPanoyTWNla2tGbDNXcCs0c0RUMlE1bzdIenFv?=
 =?utf-8?B?Zyt6TjJxaEMxQnYvUUs1SllNUkgrY3VRL3FlRjZ4R09tVk0wa2dVV1hCdVg5?=
 =?utf-8?B?S1g3aUQxcEFFWkFheVBMT1AzcGY0WTA2TmtPeStMWUd2LzJ0VEJzSWFSWGhM?=
 =?utf-8?B?V0w2TW5KSFZna3kwaEUyK1l5M1dndzc3ZzFpcjNtT0h4OUg1dkdyM1BVZmtH?=
 =?utf-8?B?eS9mWFNkYkZ0YzBqTTJPTFdFcEtXcjV5UGkzMi9STUZ5VjI1TVZGVUF4NXll?=
 =?utf-8?B?SXlsMEZQcGZKTVRwbHZmbzhJK2NESk03UVdnWXozQWYyeW91YXZhMFJSdGg3?=
 =?utf-8?B?NmVKa3Y1eTVvekowTzRBYmN0bGVWbmtQR2x6ZFdiWDlYVmZ1am9XU28zOU9u?=
 =?utf-8?B?a283VmVRVnBVRHpKY0FPV24yV0czNG1RQW4zMEJXUHV2VVgvc2dYZ0ZxZ0tU?=
 =?utf-8?B?eUpDUTJzSENBdFI1MHVhZU9YM0gzTUduNHBaNDJPcVJIeFBneXpNY2kyTW1I?=
 =?utf-8?B?QmRxb0xpWUUyV1ZzNStMMDFsVXBIYlVsQ082TlNJZ2xVN3lOcnV5U3FHclJE?=
 =?utf-8?B?NGFwVUsxKzU0VGc1SHJqSHp5T3h6aDc3amo4MkJpWlhCN2MrT0tESGM1bEN4?=
 =?utf-8?B?NHRIWHZWZFhsQTQ3ZG1tQk1CUnU0QXZHanl3eTQ2c3BZZXRycVBFOGFYN1Nv?=
 =?utf-8?B?NG9HZEtxcWhETDRoVnNlK2FMNkVSSjlEcWpQLzNDTW1TWExxTmx4bTRoMzEr?=
 =?utf-8?B?TjZUelVXajdUL1czbk15dmhLQ0VaSXEwYjN3ak54Ly9qSjVSTXpHeGtjVGtv?=
 =?utf-8?B?dHY3VE1ZWnN2bVNRSWQxcWZGbWpOeksvb25tM3d3UTNTeVk0azBnUXVrOERH?=
 =?utf-8?B?ZlBFZHRzK2VNTVlwRTlRVkdCeEpPVnhJR3liY3JkNUhEM2d1QkpnL1BMdDJs?=
 =?utf-8?B?bkxlYVhkRHhSbFZMdTB3TFpkOEtZVTVKYnNiaERTZHNxSEFJaFJHZllsL3Rz?=
 =?utf-8?B?bXRXZWlRQ2ZGRUMrdWpibHdkd3BkNTVRZVZETzdYU3JJamZmYzdvS3hZSkhN?=
 =?utf-8?B?Qi9CQ2MvZlpEdVJqSXVOUXZBbW43MWpldGY0cXg4bGFBSDN4Smo4SFo4elZa?=
 =?utf-8?B?OFdqZnFnRWlGUE1rdUVKcW1kMkRCdjd2L1ZZQ3Rrakl3WE5uYW92dE9sTysw?=
 =?utf-8?B?Z2FQRlMxZ1A1endObU9vU2pUczFEOTBNQTF6TFAwOHJJNzlTS05nTXVqRklo?=
 =?utf-8?B?WmpNUUhVTnZtQlRWQUN4Mk83eVBXalU2Q3R1bFYxMGR4cTBNdnlldmhxNWl2?=
 =?utf-8?B?Q2ZKdzVIYTdoejhjYVdDNVU2NlorQ1VnNTk1QVdrajR0dG92R1h3UlAzb1Zl?=
 =?utf-8?B?VHZ2NDRlUC9mNTNRZHlsQUlIbG9qS1p2Q0FBN1I0MnAvRG1yNmk5R1M5ZUVx?=
 =?utf-8?B?N2ZGTlEwNjBCbVVzVG9GbzlWOXE5ei83RnpNVjBXNUZoUEw1UTFpODdmVU8z?=
 =?utf-8?B?U0YzbGFGWHhkS0J5dXh5VVAxYnFZeDVGNGs4VWN5U3NqNEdjbXZlYmVmLzIv?=
 =?utf-8?B?M09tWlZlVk1NRmVlT1ozWmY0bkk5N09DTHo2M0FIV3lTUFY5UlZ2U1Fxc3FP?=
 =?utf-8?B?V3J4SDBDRWc1ZndFN2lhVkVJMEh4VnZwdjhwYnk5bmNXMG1JSEN1TWNTbnU0?=
 =?utf-8?B?d2g1SUNsQW5Qb2M4TlZKZ25KOXNEY3J1YzJHaEVWRDQvZWpMbG1wMmQvNGtZ?=
 =?utf-8?B?eWJ0Yjdib2VyU2EvcnRPTjhLTjRlb2o5em9tcmREZXBQeExNL1BaVjJDZEdx?=
 =?utf-8?B?Q0Izb094dkIxc3Y4U0RPQndxL1AxL2FxTmpFRG5JRHlZWWdWNkdhd3hjUHdI?=
 =?utf-8?B?M0F0MkxLTFZONlhLa0FrVTZMUlZ5aHdvUU9DdFlYV0ROSk5pa2xiWUVRY2l0?=
 =?utf-8?B?OFQ4aVpLVUV4RDczRDZvekFCSVFTZFE4a1VrdDZtcGxjVXdhYTFSWnhLamlP?=
 =?utf-8?B?TmM3M3dzdml0aEZmSFZKMFp4VjVkQ3lNNlVhbXp4VDViKzZDRnhVTWEvQTJS?=
 =?utf-8?B?Qkh4Ym9lL1l3U0hzQVJ0M1UxcE1qc1pJeE4zd1F0YkMzeDA3K1dtL3ZKYVk0?=
 =?utf-8?B?TDlpM3ZsMkU0MzE5S1A3Q2x2OFV4T3AwTDB4bDFrVjFWT2lOTEZ4bTlldWJk?=
 =?utf-8?Q?6Q8ag+yHZik1EaQpGbnUMrrzEeSYovmgZH7eDjawgQqS?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 97b1c632-0298-484f-fe22-08dac94b73a6
X-MS-Exchange-CrossTenant-AuthSource: BN8PR12MB3587.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Nov 2022 09:58:32.8119
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ishwQu9LVjOPABzrB1BgVbi9yhk0pgISx7RQE8DM5YMsBo8fi0LRFTD/ZQ5h3Wdf
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR12MB5140
X-Rspamd-Server: lists.linaro.org
X-Spamd-Bar: ---
X-Rspamd-Queue-Id: 7224C3EF19
X-Spamd-Result: default: False [-3.50 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector9901:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:40.107.0.0/16];
	MIME_GOOD(-0.10)[text/plain];
	FREEMAIL_TO(0.00)[googlemail.com,redhat.com];
	FROM_EQ_ENVFROM(0.00)[];
	ASN(0.00)[asn:8075, ipnet:40.104.0.0/14, country:US];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[collabora.com,gmail.com,linaro.org,lists.freedesktop.org,vger.kernel.org,lists.linaro.org];
	RCVD_TLS_LAST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	DKIM_TRACE(0.00)[amd.com:+];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.107.96.73:from];
	RCPT_COUNT_SEVEN(0.00)[9];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	TAGGED_RCPT(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[]
Message-ID-Hash: CEUMHYUDTHM45LQFYJBSNNYF4HPXEB4J
X-Message-ID-Hash: CEUMHYUDTHM45LQFYJBSNNYF4HPXEB4J
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Dmitry Osipenko <dmitry.osipenko@collabora.com>, Lukasz Wiecaszek <lukasz.wiecaszek@gmail.com>, Sumit Semwal <sumit.semwal@linaro.org>, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v5] udmabuf: add vmap and vunmap methods to udmabuf_ops
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/CEUMHYUDTHM45LQFYJBSNNYF4HPXEB4J/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

UHVzaGVkIHRoaXMgb25lIGhlcmUgdG8gZHJtLW1pc2MtbmV4dC4NCg0KVGhhbmtzLA0KQ2hyaXN0
aWFuLg0KDQpBbSAxNy4xMS4yMiB1bSAxODoxOCBzY2hyaWViIEx1a2FzeiBXaWVjYXN6ZWs6DQo+
IFRoZSByZWFzb24gYmVoaW5kIHRoYXQgcGF0Y2ggaXMgYXNzb2NpYXRlZCB3aXRoIHZpZGVvYnVm
MiBzdWJzeXN0ZW0NCj4gKG9yIG1vcmUgZ2VucmFsbHkgd2l0aCB2NGwyIGZyYW1ld29yaykgYW5k
IHVzZXIgY3JlYXRlZA0KPiBkbWEgYnVmZmVycyAodWRtYWJ1ZikuIEluIHNvbWUgY2lyY3Vtc3Rh
bmNlcw0KPiB3aGVuIGRlYWxpbmcgd2l0aCBWNEwyX01FTU9SWV9ETUFCVUYgYnVmZmVycyB2aWRl
b2J1ZjIgc3Vic3lzdGVtDQo+IHdhbnRzIHRvIHVzZSBkbWFfYnVmX3ZtYXAoKSBtZXRob2Qgb24g
dGhlIGF0dGFjaGVkIGRtYSBidWZmZXIuDQo+IEFzIHVkbWFidWYgZG9lcyBub3QgaGF2ZSAudm1h
cCBvcGVyYXRpb24gaW1wbGVtZW50ZWQsDQo+IHN1Y2ggZG1hX2J1Zl92bWFwKCkgbmF0dWFsbHkg
ZmFpbHMuDQo+DQo+IHZpZGVvYnVmMl9jb21tb246IF9fdmIyX3F1ZXVlX2FsbG9jOiBhbGxvY2F0
ZWQgMyBidWZmZXJzLCAxIHBsYW5lKHMpIGVhY2gNCj4gdmlkZW9idWYyX2NvbW1vbjogX19wcmVw
YXJlX2RtYWJ1ZjogYnVmZmVyIGZvciBwbGFuZSAwIGNoYW5nZWQNCj4gdmlkZW9idWYyX2NvbW1v
bjogX19wcmVwYXJlX2RtYWJ1ZjogZmFpbGVkIHRvIG1hcCBkbWFidWYgZm9yIHBsYW5lIDANCj4g
dmlkZW9idWYyX2NvbW1vbjogX19idWZfcHJlcGFyZTogYnVmZmVyIHByZXBhcmF0aW9uIGZhaWxl
ZDogLTE0DQo+DQo+IFRoZSBwYXRjaCBpdHNlbGYgc2VlbXMgdG8gYmUgc3RyaWdoZm9yd2FyZC4N
Cj4gSXQgYWRkcyBpbXBsZW1lbnRhdGlvbiBvZiAudm1hcCBhbmQgLnZ1bm1hcCBtZXRob2RzDQo+
IHRvICdzdHJ1Y3QgZG1hX2J1Zl9vcHMgdWRtYWJ1Zl9vcHMnLg0KPiAudm1hcCBtZXRob2QgaXRz
ZWxmIHVzZXMgdm1fbWFwX3JhbSgpIHRvIG1hcCBwYWdlcyBsaW5lYXJseQ0KPiBpbnRvIHRoZSBr
ZXJuZWwgdmlydHVhbCBhZGRyZXNzIHNwYWNlLg0KPiAudnVubWFwIHJlbW92ZXMgbWFwcGluZyBj
cmVhdGVkIGVhcmxpZXIgYnkgLnZtYXAuDQo+IEFsbCBsb2NraW5nIGFuZCAndm1hcHBpbmcgY291
bnRpbmcnIGlzIGRvbmUgaW4gZG1hX2J1Zi5jDQo+IHNvIGl0IHNlZW1zIHRvIGJlIHJlZHVuZGFu
dC91bm5lY2Vzc2FyeSBpbiAudm1hcC8udnVubWFwLg0KPg0KPiBSZXZpZXdlZC1ieTogRG1pdHJ5
IE9zaXBlbmtvIDxkbWl0cnkub3NpcGVua29AY29sbGFib3JhLmNvbT4NCj4gQWNrZWQtYnk6IENo
cmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4NCj4gU2lnbmVkLW9mZi1i
eTogTHVrYXN6IFdpZWNhc3playA8bHVrYXN6LndpZWNhc3pla0BnbWFpbC5jb20+DQo+IC0tLQ0K
PiB2MTogaHR0cHM6Ly9uYW0xMS5zYWZlbGlua3MucHJvdGVjdGlvbi5vdXRsb29rLmNvbS8/dXJs
PWh0dHBzJTNBJTJGJTJGbG9yZS5rZXJuZWwub3JnJTJGbGludXgtbWVkaWElMkYyMDIyMTExMjAz
NTIuRzdXUEFTb1AtbGtwJTQwaW50ZWwuY29tJTJGVCUyRiUyM3QmYW1wO2RhdGE9MDUlN0MwMSU3
Q2NocmlzdGlhbi5rb2VuaWclNDBhbWQuY29tJTdDOWVmMTcwZDY1N2E5NDg0OTk4NmYwOGRhYzhi
ZmViMGYlN0MzZGQ4OTYxZmU0ODg0ZTYwOGUxMWE4MmQ5OTRlMTgzZCU3QzAlN0MwJTdDNjM4MDQz
MDIzODUyMjU3NTU4JTdDVW5rbm93biU3Q1RXRnBiR1pzYjNkOGV5SldJam9pTUM0d0xqQXdNREFp
TENKUUlqb2lWMmx1TXpJaUxDSkJUaUk2SWsxaGFXd2lMQ0pYVkNJNk1uMCUzRCU3QzMwMDAlN0Ml
N0MlN0MmYW1wO3NkYXRhPXltbDZMRnppdnZVMVZ2NGNIUmY0N0JFZXFSTiUyQmtIMVN5JTJGTjRo
JTJCTXBSeFUlM0QmYW1wO3Jlc2VydmVkPTANCj4gdjI6IGh0dHBzOi8vbmFtMTEuc2FmZWxpbmtz
LnByb3RlY3Rpb24ub3V0bG9vay5jb20vP3VybD1odHRwcyUzQSUyRiUyRmxvcmUua2VybmVsLm9y
ZyUyRmxpbnV4LW1lZGlhJTJGMjAyMjExMTQwNTI5NDQuR0E3MjY0JTQwdGhpbmtwYWQtcDcyJTJG
VCUyRiUyM3QmYW1wO2RhdGE9MDUlN0MwMSU3Q2NocmlzdGlhbi5rb2VuaWclNDBhbWQuY29tJTdD
OWVmMTcwZDY1N2E5NDg0OTk4NmYwOGRhYzhiZmViMGYlN0MzZGQ4OTYxZmU0ODg0ZTYwOGUxMWE4
MmQ5OTRlMTgzZCU3QzAlN0MwJTdDNjM4MDQzMDIzODUyMjU3NTU4JTdDVW5rbm93biU3Q1RXRnBi
R1pzYjNkOGV5SldJam9pTUM0d0xqQXdNREFpTENKUUlqb2lWMmx1TXpJaUxDSkJUaUk2SWsxaGFX
d2lMQ0pYVkNJNk1uMCUzRCU3QzMwMDAlN0MlN0MlN0MmYW1wO3NkYXRhPW1CRWZXcDd3OHdUSWhP
MnFGN2FkOUdyZk15WDI5RU0zbmVITkhtMGkyWmMlM0QmYW1wO3Jlc2VydmVkPTANCj4gdjM6IGh0
dHBzOi8vbmFtMTEuc2FmZWxpbmtzLnByb3RlY3Rpb24ub3V0bG9vay5jb20vP3VybD1odHRwcyUz
QSUyRiUyRmxvcmUua2VybmVsLm9yZyUyRmxpbnV4LW1lZGlhJTJGNGY5MmU5NWYtYTBkYy00ZWFj
LTRjMDgtMGRmODVkZTc4YWU3JTQwY29sbGFib3JhLmNvbSUyRlQlMkYlMjN0JmFtcDtkYXRhPTA1
JTdDMDElN0NjaHJpc3RpYW4ua29lbmlnJTQwYW1kLmNvbSU3QzllZjE3MGQ2NTdhOTQ4NDk5ODZm
MDhkYWM4YmZlYjBmJTdDM2RkODk2MWZlNDg4NGU2MDhlMTFhODJkOTk0ZTE4M2QlN0MwJTdDMCU3
QzYzODA0MzAyMzg1MjI1NzU1OCU3Q1Vua25vd24lN0NUV0ZwYkdac2IzZDhleUpXSWpvaU1DNHdM
akF3TURBaUxDSlFJam9pVjJsdU16SWlMQ0pCVGlJNklrMWhhV3dpTENKWFZDSTZNbjAlM0QlN0Mz
MDAwJTdDJTdDJTdDJmFtcDtzZGF0YT0yTFRuOGx6ZzQ4JTJCJTJCVEs0dzN2Y3R5UTZQalV2YSUy
QlpLUzhlWmVMRyUyRldSN0klM0QmYW1wO3Jlc2VydmVkPTANCj4gdjQ6IGh0dHBzOi8vbmFtMTEu
c2FmZWxpbmtzLnByb3RlY3Rpb24ub3V0bG9vay5jb20vP3VybD1odHRwcyUzQSUyRiUyRmxvcmUu
a2VybmVsLm9yZyUyRmxpbnV4LW1lZGlhJTJGOTcwZTc5OGQtZWEyNi01ZTFlLWFjZTgtNzkxNWE4
NjZmN2M3JTQwY29sbGFib3JhLmNvbSUyRlQlMkYlMjN0JmFtcDtkYXRhPTA1JTdDMDElN0NjaHJp
c3RpYW4ua29lbmlnJTQwYW1kLmNvbSU3QzllZjE3MGQ2NTdhOTQ4NDk5ODZmMDhkYWM4YmZlYjBm
JTdDM2RkODk2MWZlNDg4NGU2MDhlMTFhODJkOTk0ZTE4M2QlN0MwJTdDMCU3QzYzODA0MzAyMzg1
MjI1NzU1OCU3Q1Vua25vd24lN0NUV0ZwYkdac2IzZDhleUpXSWpvaU1DNHdMakF3TURBaUxDSlFJ
am9pVjJsdU16SWlMQ0pCVGlJNklrMWhhV3dpTENKWFZDSTZNbjAlM0QlN0MzMDAwJTdDJTdDJTdD
JmFtcDtzZGF0YT10TzRUZ2Q1alBldTYlMkJOdVdTbCUyQlNxRiUyRkVoNGRJN3ZhYWg0JTJGSUNp
bUh2Z28lM0QmYW1wO3Jlc2VydmVkPTANCj4NCj4gdjQgLT4gdjU6IEFkZGVkIEFja2VkLWJ5IGFu
ZCBSZXZpZXdlZC1ieSB0byB0aGUgY29tbWl0IG1lc3NhZ2UNCj4gdjMgLT4gdjQ6IFJlbW92ZWQg
bGluZS9pbmZvICdyZXBvcnRlZCBieSBrZXJuZWwgdGVzdCByb2JvdCcNCj4gdjIgLT4gdjM6IEFk
ZGVkIC52dW5tYXAgdG8gJ3N0cnVjdCBkbWFfYnVmX29wcyB1ZG1hYnVmX29wcycNCj4gdjEgLT4g
djI6IFBhdGNoIHByZXBhcmVkIGFuZCB0ZXN0ZWQgYWdhaW5zdCA2LjEuMC1yYzIrDQo+DQo+ICAg
ZHJpdmVycy9kbWEtYnVmL3VkbWFidWYuYyB8IDI4ICsrKysrKysrKysrKysrKysrKysrKysrKysr
KysNCj4gICAxIGZpbGUgY2hhbmdlZCwgMjggaW5zZXJ0aW9ucygrKQ0KPg0KPiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9kbWEtYnVmL3VkbWFidWYuYyBiL2RyaXZlcnMvZG1hLWJ1Zi91ZG1hYnVmLmMN
Cj4gaW5kZXggMjgzODE2ZmJkNzJmLi43NDBkNmU0MjZlZTkgMTAwNjQ0DQo+IC0tLSBhL2RyaXZl
cnMvZG1hLWJ1Zi91ZG1hYnVmLmMNCj4gKysrIGIvZHJpdmVycy9kbWEtYnVmL3VkbWFidWYuYw0K
PiBAQCAtMTMsNiArMTMsOCBAQA0KPiAgICNpbmNsdWRlIDxsaW51eC9zbGFiLmg+DQo+ICAgI2lu
Y2x1ZGUgPGxpbnV4L3VkbWFidWYuaD4NCj4gICAjaW5jbHVkZSA8bGludXgvaHVnZXRsYi5oPg0K
PiArI2luY2x1ZGUgPGxpbnV4L3ZtYWxsb2MuaD4NCj4gKyNpbmNsdWRlIDxsaW51eC9pb3N5cy1t
YXAuaD4NCj4gICANCj4gICBzdGF0aWMgaW50IGxpc3RfbGltaXQgPSAxMDI0Ow0KPiAgIG1vZHVs
ZV9wYXJhbShsaXN0X2xpbWl0LCBpbnQsIDA2NDQpOw0KPiBAQCAtNjAsNiArNjIsMzAgQEAgc3Rh
dGljIGludCBtbWFwX3VkbWFidWYoc3RydWN0IGRtYV9idWYgKmJ1Ziwgc3RydWN0IHZtX2FyZWFf
c3RydWN0ICp2bWEpDQo+ICAgCXJldHVybiAwOw0KPiAgIH0NCj4gICANCj4gK3N0YXRpYyBpbnQg
dm1hcF91ZG1hYnVmKHN0cnVjdCBkbWFfYnVmICpidWYsIHN0cnVjdCBpb3N5c19tYXAgKm1hcCkN
Cj4gK3sNCj4gKwlzdHJ1Y3QgdWRtYWJ1ZiAqdWJ1ZiA9IGJ1Zi0+cHJpdjsNCj4gKwl2b2lkICp2
YWRkcjsNCj4gKw0KPiArCWRtYV9yZXN2X2Fzc2VydF9oZWxkKGJ1Zi0+cmVzdik7DQo+ICsNCj4g
Kwl2YWRkciA9IHZtX21hcF9yYW0odWJ1Zi0+cGFnZXMsIHVidWYtPnBhZ2Vjb3VudCwgLTEpOw0K
PiArCWlmICghdmFkZHIpDQo+ICsJCXJldHVybiAtRUlOVkFMOw0KPiArDQo+ICsJaW9zeXNfbWFw
X3NldF92YWRkcihtYXAsIHZhZGRyKTsNCj4gKwlyZXR1cm4gMDsNCj4gK30NCj4gKw0KPiArc3Rh
dGljIHZvaWQgdnVubWFwX3VkbWFidWYoc3RydWN0IGRtYV9idWYgKmJ1Ziwgc3RydWN0IGlvc3lz
X21hcCAqbWFwKQ0KPiArew0KPiArCXN0cnVjdCB1ZG1hYnVmICp1YnVmID0gYnVmLT5wcml2Ow0K
PiArDQo+ICsJZG1hX3Jlc3ZfYXNzZXJ0X2hlbGQoYnVmLT5yZXN2KTsNCj4gKw0KPiArCXZtX3Vu
bWFwX3JhbShtYXAtPnZhZGRyLCB1YnVmLT5wYWdlY291bnQpOw0KPiArfQ0KPiArDQo+ICAgc3Rh
dGljIHN0cnVjdCBzZ190YWJsZSAqZ2V0X3NnX3RhYmxlKHN0cnVjdCBkZXZpY2UgKmRldiwgc3Ry
dWN0IGRtYV9idWYgKmJ1ZiwNCj4gICAJCQkJICAgICBlbnVtIGRtYV9kYXRhX2RpcmVjdGlvbiBk
aXJlY3Rpb24pDQo+ICAgew0KPiBAQCAtMTYyLDYgKzE4OCw4IEBAIHN0YXRpYyBjb25zdCBzdHJ1
Y3QgZG1hX2J1Zl9vcHMgdWRtYWJ1Zl9vcHMgPSB7DQo+ICAgCS51bm1hcF9kbWFfYnVmCSAgID0g
dW5tYXBfdWRtYWJ1ZiwNCj4gICAJLnJlbGVhc2UJICAgPSByZWxlYXNlX3VkbWFidWYsDQo+ICAg
CS5tbWFwCQkgICA9IG1tYXBfdWRtYWJ1ZiwNCj4gKwkudm1hcAkJICAgPSB2bWFwX3VkbWFidWYs
DQo+ICsJLnZ1bm1hcAkJICAgPSB2dW5tYXBfdWRtYWJ1ZiwNCj4gICAJLmJlZ2luX2NwdV9hY2Nl
c3MgID0gYmVnaW5fY3B1X3VkbWFidWYsDQo+ICAgCS5lbmRfY3B1X2FjY2VzcyAgICA9IGVuZF9j
cHVfdWRtYWJ1ZiwNCj4gICB9Ow0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2ln
QGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8t
bW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
