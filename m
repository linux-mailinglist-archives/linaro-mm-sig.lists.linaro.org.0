Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id E8C8969A891
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 17 Feb 2023 10:47:45 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 95B413F06D
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 17 Feb 2023 09:47:44 +0000 (UTC)
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (mail-sn1nam02on2061.outbound.protection.outlook.com [40.107.96.61])
	by lists.linaro.org (Postfix) with ESMTPS id 7E1683EA30
	for <linaro-mm-sig@lists.linaro.org>; Fri, 17 Feb 2023 09:47:27 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=JRZxlOAK;
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.107.96.61 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	arc=pass ("microsoft.com:s=arcselector9901:i=1")
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Mqni6B98cvZqyC2xas9AgQiu6HdO/b5c8bkqThE9zE6CCKggTcwc39tlY97GTGnQ82fj9k5HNULpi8ugC+n0mWtH7Hv+ruBZOqxH1Jeb9HUmtwmVW2P4ViXbQdrzT880xBWSdqOC/0DPwqATYCH34e9ShntOYYcQfvK/VOCtkqquNQ0aqmQYnZocPWxtw2uw0KSOie7hozNG365Owz447iUia9CPB+sCeQQy5ZEfQoxCAWULBaOX+/pfIFKpBwUdYbO5tpmKPF64jAa4aDC4hBZPqBh7htLoLlwJ+msJ/oe9BlfgHDx2yfS2Jy2ldmbPlp9IXgJTXzu/AWMFYW7B6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Jrn/0EE9gd0AWa3R1I6j2qJ9knmQ8RF9AE1bCIwlTPg=;
 b=a3woX/Zqh4DfZRW2A47QKAxI9ZT/sYe2jSMfjAR4Z/uVDOuhwUW3qbExFxilCVLNEzhk8EoihjDsJAQ1up9wux0E0Ikoglxeuti1zt4spitxfVWr2o0B5qdFtq4CNQZMzjjUxNif1nsQfgb1RvQLMx525SHKBYdCqZbd1wAJyfQPRZFDydpY9zalZ8OrDpA7N7a1RgxdhriD7A97xKWDG4Uqr0Oc9lGdGBb6KXC/RRMY9ou+C0wj5UNOM6k5l/NYBOB9J2JlWBy/9jK6I5CK6OQdVaedHxMAwZ25OB8rGqu7PJzHZj+Yi8c14AD1VvTvAPqFKNeZtDm2xgCXDggXUA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Jrn/0EE9gd0AWa3R1I6j2qJ9knmQ8RF9AE1bCIwlTPg=;
 b=JRZxlOAKMsFScloqaD8Ty2DK/TqPiPU987XkniwNNWPWkfwfe2X1wzImSen1r0LT6q4d2ivma8wJbxt6ZJAeipIPVSw1JazMwHgqDIgidLfHREgFNCh1Ge5PbO912XwZt3tA7lCspbE474GR/XuEFzBCsa7ggRaCXb8mRSDfo4Q=
Received: from BN8PR12MB3587.namprd12.prod.outlook.com (2603:10b6:408:43::13)
 by SN7PR12MB7956.namprd12.prod.outlook.com (2603:10b6:806:328::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6086.24; Fri, 17 Feb
 2023 09:47:25 +0000
Received: from BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::2e4f:4041:28be:ba7a]) by BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::2e4f:4041:28be:ba7a%6]) with mapi id 15.20.6111.013; Fri, 17 Feb 2023
 09:47:25 +0000
Message-ID: <9efa30b4-5a6d-91b3-617c-853f0ac0b22e@amd.com>
Date: Fri, 17 Feb 2023 10:47:20 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Content-Language: en-US
To: =?UTF-8?Q?Thomas_Wei=c3=9fschuh?= <linux@weissschuh.net>,
 Sumit Semwal <sumit.semwal@linaro.org>
References: <20230217-kobj_type-dma-buf-v1-1-b84a3616522c@weissschuh.net>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
In-Reply-To: <20230217-kobj_type-dma-buf-v1-1-b84a3616522c@weissschuh.net>
X-ClientProxiedBy: FR2P281CA0003.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:a::13) To BN8PR12MB3587.namprd12.prod.outlook.com
 (2603:10b6:408:43::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR12MB3587:EE_|SN7PR12MB7956:EE_
X-MS-Office365-Filtering-Correlation-Id: a91e2dea-3241-45f1-e361-08db10cbf97d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	2WsyeKPUNWJ/Hr+DZ3HeS1yMhdT9eQmgRpms/2aJ4/DuV0fN8wSKzWOFyNbUHH7jddugFEwgU21DOfGEZyZU6XFUCLtrVTX/OmDsnqw08wIGOx+nUwWUP4+4fTH0aCDK0g5AXNTbb+jrIFtmr9J8+FXTIh3Q9vzVgeRHuQL3sCiDHqymXts9m3YDPw284vVFVqo0qFeU0Hs7zGftJVSdnwmo6Yejk/hvf/F/05GIIe6m1s77aWKvvsMsiSF1UVwra/aJCUstE13py6L805p/O+JPRNemiIGJXT8GgcEGpVh+DdFKK06sa3hiE8SyiTWRg6xBxn7aecDdnePAo5KKZGeGqUAQC7E5J3jTSOZWEo/nfhzLaRuc55keHMU3lvwHxJnDcoggH8iIno7m1XH7UktdbqZC+crsmMe9vCgETQaGzUC/oQnyep1Fi9NUVDwoUNTIJ5ECFLlWxoQdiZszuL7edVdljO41a7PW38Vo+LD+So2WjIUEegJMau7h5+xelRJj5q6QcxIIfbnvdvNVdJ8iSBmAeBzFSfAncuGkzAfgbfvScUKfB1RzE1L+fitcAFJzy9gtO34XLsDZOd0knnetS+a9ntcngfcvC2Lg7lXuguHazW+OV7LOysPB/zG5zaJR/2Sj7n5wdgJz6juebSVtxUSMq44t15BrMH1SVOkzqRjMfVTkRTm3wOxf0+BbHu7pfyXyzCHd8h/bpVpzbC6ET5w1RMTB9jY/IgBRQeQ=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN8PR12MB3587.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(4636009)(376002)(396003)(136003)(39860400002)(366004)(346002)(451199018)(2906002)(6666004)(8936002)(31686004)(41300700001)(66556008)(4326008)(66476007)(66946007)(8676002)(316002)(110136005)(5660300002)(6512007)(6486002)(478600001)(36756003)(6506007)(186003)(38100700002)(66574015)(83380400001)(86362001)(31696002)(2616005)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?My9MV3R1aWlOMi9hTlpRYU1iWVE3U0pKN2dMNTlzZ1VlZmFyY3o0Zk9TV1g2?=
 =?utf-8?B?K3QveU5CMXNCRElYNmQyVkJCYVI1K1hpTUhpWnNtL3JYb2J3TDRROGZqTUox?=
 =?utf-8?B?NHkvVFJiUk1oZGJ4cFk1ODhNZ2o0UFB0NHZucTBCNU9EOC84ZGRueEtaN3J3?=
 =?utf-8?B?cHF5R0pUa0tlbjdWMTFXMkpyRlo2dml6RnVHam9TRUliTlBxNStKQUlmSWVo?=
 =?utf-8?B?ejhkM09DVGprNnBqNHBZK1p4eHQyYWVPZjZGZ0JldlJodVZoSjc5Y2VicFpC?=
 =?utf-8?B?N0x0NkVCRDg3NVIvRTduQlBkWG5MZURrTmRQa0xuS0FIcmU0Z0xEOEZ5Wlo1?=
 =?utf-8?B?ckVXS1M5cHRIZnZSL0ZmWVl2UDk2TVpwL2FyclBUb0RPQk51RkQwd3Z1TGR1?=
 =?utf-8?B?OUtjUUJ3bjBZbjNGSmd6a2srWjRhV2hEbmNUaHhuVzhnS0FkMGdPMkRSSkNM?=
 =?utf-8?B?bUtBTGI0ZEJNa0JEMGRCdUorVGlTQ0o5dFVGbGtCazQrcWtUckhsdDVWeXpN?=
 =?utf-8?B?ZFhqWElaQzVpcEVwMEZpS2ZsTGV4TlIxeHliL0liK3dtYmRHUG02YXd6dXRk?=
 =?utf-8?B?SUJSN1hZWnkxR1RML2ErdFlyNkU5bDJTcTU5OXV2L09EKytHWUwrd2tyQ25E?=
 =?utf-8?B?YmQ0OEJuSHpoRXczc3g0b292V0gzS0wyd25tMm91MklRMnhTeGtqMTZYMk03?=
 =?utf-8?B?V1VybVYrbzBUMGlzcUxUQ0VWajh3MGthK0xjbzB1czlWbjFMMnMrMUJjOU9I?=
 =?utf-8?B?a3VMbHh4OGZTUDgrdDFtTmFIdC9xVUs1aDEyaWh6dTAvWGRoZkVJM0hVUFhM?=
 =?utf-8?B?OUFraXY1cUxuZi9MWUNRVk00NzFYdHQ2MmQwU3NOTFVkY0RGSHQwUU5MZGJy?=
 =?utf-8?B?SkluRDl2R1hsRkxXbml5dU10K0dSQmtyaWJHQy9qa0Jya05PNWdkQ21GRXY5?=
 =?utf-8?B?Y2o1YS9QR2Z4bHVpemFtc0tGandNRndaMXdEQzNyenhYczFQNXgyTGxvWVhK?=
 =?utf-8?B?aDFDY2hxLzZrc0l5VnNYV1FIb0tWeFNUci9MQTM1MXkzWHFlVjI4QkdvVWdE?=
 =?utf-8?B?M0VhMHNQWlp0dDR3VCtOYkhHODh3em1MODRFNXFoY1NJQnVDWU0yaWpWeGFH?=
 =?utf-8?B?WmhoYWdFdkpmdjBWZy82dGFvdGNOMGhsSTNSQkcvWmFwU0xIT1RvZ3VuYXhE?=
 =?utf-8?B?bzljL3FHTHY0VlFSVERNMVFzbmpzNkFlR3FoVUpYcHllUVVNakwyZ1ZURFFq?=
 =?utf-8?B?RmNneU9uZzJ4Sm9WNXI5eUlWSVFJbXo4aGNEZTM2bTBrc1JqSHpGR05vRjVq?=
 =?utf-8?B?Wlg0eHpkSWJuWjRUNW9CU3ZlOWJLK25pcG4zdGRZS2laUWNsRHpCazNWdG5l?=
 =?utf-8?B?KzFsdVFhMmd6OGovSm1hUnJyYlhZSG9TYU55MWRWNm15RzJiT3BlVE1ydnZu?=
 =?utf-8?B?V3lYcktHbjV4ZDF3ampET2ZuUm10ZTE1c2VxdC9UOHREclhPRFhJQ3Y3bTVa?=
 =?utf-8?B?QTVPZlBBYit2Szlhc2tpOGpSNFluV1YwUEFab2VVaFZlV1Fpa2hvSGFoS1pY?=
 =?utf-8?B?RzFML3dnaVJvVXFjV0s2bVA5TVc4aXU0VkoycWdka1BYWEdCdlBmaU4zOEhM?=
 =?utf-8?B?T0RCYU16K3I5TWRrQ0JWQlUxZWJ0UnlKbkd1UHBwQlN3d2FRbTNaRndCWGNm?=
 =?utf-8?B?ZUFqRVc0TzQrNkZDcmUzK1VhaTNOU1B1ZFQxSWZKV0ZockwrdEN5K2NlaHlJ?=
 =?utf-8?B?dHhLanVvaHdOSEdGV3FaMERxcVNDb2ZMNi9YTEpPR25xcExvc05SaVZxN2NS?=
 =?utf-8?B?Y0lhenZwU0liWE1DUGl5cEFhSmNmMVE5OHEyVFRubnFxUVlKRDQ4YitGTVpp?=
 =?utf-8?B?ZVRpRjFBNGhZYTBXV3RyaHl5NGpkWGRYWE5POG5SY1VxTThmaElKUDkrV3U5?=
 =?utf-8?B?RCswbkNNTjllcHdrcTJYblFzekY2MHU5SitJTVdydTdEcXhXZWJHZFJZbDQ3?=
 =?utf-8?B?M0tiMXFucjNqOE4rNlo0YnQ3d2hwb0xWUmhJVDlVOERCUVRiY29Wdml2anFM?=
 =?utf-8?B?M2pLZG1MYzNhdDFYL2lZa2hnM2Y0RUFGVWxMK0J4UXV6L0pXcVBVbkNMbjJx?=
 =?utf-8?B?bnlVVFg4UUhLcXBpWnlZS25MSkFBMUlvL1A4aUkxNXB6Ui8vVzdyS3NKSisr?=
 =?utf-8?Q?tYcki4r2bbt+qgP39Y/qvB9uvujY80Uygfw8UihmHF9m?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a91e2dea-3241-45f1-e361-08db10cbf97d
X-MS-Exchange-CrossTenant-AuthSource: BN8PR12MB3587.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Feb 2023 09:47:25.5583
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: BgEiSPYFuZkpqQ5n1eLFRCL6WzPcbBW7nkoKlPIU3Dbh9BaLF28zcPEe2cvwMFIK
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR12MB7956
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 7E1683EA30
X-Spamd-Bar: -------
X-Spamd-Result: default: False [-7.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector9901:i=1];
	RCVD_IN_DNSWL_HI(-1.00)[40.107.96.61:from,2603:10b6:408:43::13:received];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:40.107.0.0/16];
	MIME_GOOD(-0.10)[text/plain];
	ASN(0.00)[asn:8075, ipnet:40.104.0.0/14, country:US];
	MID_RHS_MATCH_FROM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	DKIM_TRACE(0.00)[amd.com:+];
	TO_DN_SOME(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.107.96.61:from];
	RCPT_COUNT_FIVE(0.00)[6];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	TO_MATCH_ENVRCPT_SOME(0.00)[]
X-Rspamd-Action: no action
Message-ID-Hash: 4UZNRIIK3DFVOOQHU5JLCXNI77LXAVSH
X-Message-ID-Hash: 4UZNRIIK3DFVOOQHU5JLCXNI77LXAVSH
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf: make kobj_type structure constant
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/4UZNRIIK3DFVOOQHU5JLCXNI77LXAVSH/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

QW0gMTcuMDIuMjMgdW0gMDQ6MTMgc2NocmllYiBUaG9tYXMgV2Vpw59zY2h1aDoNCj4gU2luY2Ug
Y29tbWl0IGVlNmQzZGQ0ZWQ0OCAoImRyaXZlciBjb3JlOiBtYWtlIGtvYmpfdHlwZSBjb25zdGFu
dC4iKQ0KPiB0aGUgZHJpdmVyIGNvcmUgYWxsb3dzIHRoZSB1c2FnZSBvZiBjb25zdCBzdHJ1Y3Qg
a29ial90eXBlLg0KPg0KPiBUYWtlIGFkdmFudGFnZSBvZiB0aGlzIHRvIGNvbnN0aWZ5IHRoZSBz
dHJ1Y3R1cmUgZGVmaW5pdGlvbiB0byBwcmV2ZW50DQo+IG1vZGlmaWNhdGlvbiBhdCBydW50aW1l
Lg0KPg0KPiBTaWduZWQtb2ZmLWJ5OiBUaG9tYXMgV2Vpw59zY2h1aCA8bGludXhAd2Vpc3NzY2h1
aC5uZXQ+DQoNClJldmlld2VkLWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmln
QGFtZC5jb20+DQoNCkkgd2lsbCBwaWNrIHRoaXMgdXAgZm9yIHVwc3RyZWFtaW5nIHRocm91Z2gg
ZHJtLW1pc2MtbmV4dC4NCg0KVGhhbmtzLA0KQ2hyaXN0aWFuLg0KDQo+IC0tLQ0KPiAgIGRyaXZl
cnMvZG1hLWJ1Zi9kbWEtYnVmLXN5c2ZzLXN0YXRzLmMgfCAyICstDQo+ICAgMSBmaWxlIGNoYW5n
ZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pDQo+DQo+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL2RtYS1idWYvZG1hLWJ1Zi1zeXNmcy1zdGF0cy5jIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1i
dWYtc3lzZnMtc3RhdHMuYw0KPiBpbmRleCBmYmY3MjVmYWU3YzEuLjZjZmJiZjA3MjBiZCAxMDA2
NDQNCj4gLS0tIGEvZHJpdmVycy9kbWEtYnVmL2RtYS1idWYtc3lzZnMtc3RhdHMuYw0KPiArKysg
Yi9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi1zeXNmcy1zdGF0cy5jDQo+IEBAIC0xMTIsNyArMTEy
LDcgQEAgc3RhdGljIHZvaWQgZG1hX2J1Zl9zeXNmc19yZWxlYXNlKHN0cnVjdCBrb2JqZWN0ICpr
b2JqKQ0KPiAgIAlrZnJlZShzeXNmc19lbnRyeSk7DQo+ICAgfQ0KPiAgIA0KPiAtc3RhdGljIHN0
cnVjdCBrb2JqX3R5cGUgZG1hX2J1Zl9rdHlwZSA9IHsNCj4gK3N0YXRpYyBjb25zdCBzdHJ1Y3Qg
a29ial90eXBlIGRtYV9idWZfa3R5cGUgPSB7DQo+ICAgCS5zeXNmc19vcHMgPSAmZG1hX2J1Zl9z
dGF0c19zeXNmc19vcHMsDQo+ICAgCS5yZWxlYXNlID0gZG1hX2J1Zl9zeXNmc19yZWxlYXNlLA0K
PiAgIAkuZGVmYXVsdF9ncm91cHMgPSBkbWFfYnVmX3N0YXRzX2RlZmF1bHRfZ3JvdXBzLA0KPg0K
PiAtLS0NCj4gYmFzZS1jb21taXQ6IDNhYzg4ZmE0NjA1ZWM5OGU1NDVmYjNhZDAxNTRmNTc1ZmRh
MmRlNWYNCj4gY2hhbmdlLWlkOiAyMDIzMDIxNy1rb2JqX3R5cGUtZG1hLWJ1Zi1hMmVhNmE4YTFk
ZTMNCj4NCj4gQmVzdCByZWdhcmRzLA0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0t
c2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5h
cm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
