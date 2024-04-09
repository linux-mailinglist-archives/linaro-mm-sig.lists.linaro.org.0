Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id DEF6C89DF40
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  9 Apr 2024 17:35:13 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id DDB0143C4F
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  9 Apr 2024 15:35:12 +0000 (UTC)
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (mail-dm6nam04on2139.outbound.protection.outlook.com [40.107.102.139])
	by lists.linaro.org (Postfix) with ESMTPS id A8DA543C6E
	for <linaro-mm-sig@lists.linaro.org>; Tue,  9 Apr 2024 15:35:09 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=BeLT0oNN;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.107.102.139 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	arc=pass ("microsoft.com:s=arcselector9901:i=1")
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TXY7YebFidL3ljwwGxw7QhmtW1P/lcmn94vKqxIpQnpJq2xnljCH4HyLfskCYJ0HO8U4LbwAF/4R1F6SiIGAYSXmSec3k2DbvrWuJAFyMNU6me0gFkIj2Vk/Gr1xpzXiECuPej1nHoukhzKEEdxE3zZoeCWj/xDCMy4UfSvbyo6wBZs89mAWFbuEbqr9wq1xKvafuY7tTMsROlBq3yXvuw49O+lt6t64uKKtksOCFwH8fusM97Y7aI/TUc4K8AgLhbbYsjlGJqHi68FA/JbCUszRyEvokTn2N88n/TrgKkeUAy81XY/U9RPvwimLmsEyKkCJinvPCC7N9gTvpFoiqg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IzJMaBu9yeXpH7IyyNCB9XetP04HG0RmYP5kALA8sI4=;
 b=gAjjxQ3BHNP149hudqpVHXFJRMEDbGLIELd/4+9cgU/WH7p6zVmpflO9NpmjOMrSQFSzI4ZErey4wHH7tEahhq0JQ2/EZBAREkUQ9lwRNIuqQUEiKHC6fQCZv9KZ+4wy9suonwNKvvKMnRm7uxYrkX8UUf77AEaFvI/LuG2qLP0lbngcQl2qnYilpypfnoF/wWwDcu19lZqBOVBowGqhXnAQvdhbdoMX7GtAvgeadmh/zzDBqAjHQH9NQQC4rfQuD4rcxiRWOKwgVVELTtrSKbi+BT2SyjWx0zoPMmc3a3975/2CcCoc+gtjgwtdk1ZUmZ0WnIwMOoUbmRZbz328jg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IzJMaBu9yeXpH7IyyNCB9XetP04HG0RmYP5kALA8sI4=;
 b=BeLT0oNNCaFHx2W8ldwnfc2f+fCpqMn5VrHjNVACCTzr31yHvzTIYv3/TN6tzvSbzSvHZpQXCYLKkvDRDZO5CF58afN498eBGgidTPpo4PSKp64G4Y/b9bRNr1kkk4l0q8g6fN6ES4xXrE47bL0CJDyn87v32z5ID7jIRPCbwVw=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by PH7PR12MB6935.namprd12.prod.outlook.com (2603:10b6:510:1b9::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.46; Tue, 9 Apr
 2024 15:35:05 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::f2b6:1034:76e8:f15a]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::f2b6:1034:76e8:f15a%6]) with mapi id 15.20.7409.042; Tue, 9 Apr 2024
 15:35:05 +0000
Message-ID: <42aea61f-52d7-4cea-9944-7130ffcf9c15@amd.com>
Date: Tue, 9 Apr 2024 17:34:58 +0200
User-Agent: Mozilla Thunderbird
To: Rong Qianfeng <11065417@vivo.com>, Rong Qianfeng <rongqianfeng@vivo.com>,
 Jianqun Xu <jay.xu@rock-chips.com>, sumit.semwal@linaro.org
References: <20211113062222.3743909-1-jay.xu@rock-chips.com>
 <1da5cdf0-ccb8-3740-cf96-794c4d5b2eb4@amd.com>
 <3175d41a-fc44-4741-91ac-005c8f21abb8@vivo.com>
 <9e6f1f52-db49-43bb-a0c2-b0ad12c28aa1@amd.com>
 <5c7ac24c-79fa-45fc-a4fd-5b8fc77a741b@vivo.com>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <5c7ac24c-79fa-45fc-a4fd-5b8fc77a741b@vivo.com>
X-ClientProxiedBy: FR0P281CA0144.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:96::19) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|PH7PR12MB6935:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	LQwPNWDYyrUqKxONMsorqS+LM1yAzs46r3dJir9uH5EzWYtsZ76S0rRFYYxJBd4nzaSCfzdOYlBsY3Oy/OmrpO16o3lA+41QvPq04bB/986zx05HzKc395n2jUr0iW2Ser5xF4XrTKisInxb/Vko66QGR0aCWWQOqiXk0/YCv0j2ZbdOhWaUt1nT04c2ucLezvvB9MTL3fmQOukU4osyOYWnzMn+glqfd853g/+r4vrDEiHnVduS/rkW2KGkwyr8/UO/AodT/Dlr4CaYis74VFhjK3Mc9QUV0HeBA06HgBYxTcZh+OHfw6oOshScITNZLmZOlQVXY9Mvl4IQut1HeX3OBSu2Rtio7JXayBkYXgaCR7FkK2ulqYcfD/DhzynnN6HooynJmfPirCix0IFAJsUvViiBJ321xhCkql8Vhq52Xt0rizazBzmYFLSG/Fi58/5EcleP6OsVuI0oT6UN0LUirKRCdJ2E6690lwgIhB6H+AUgGgVeJV6LKDIQjlvQqrwqVzS7znypeucRjbOTWb8zQ1X2qJZ/fmRJsVuBHm4AFjwyFhbOUWDAn+cI0iBN70AS9jWU2TADP0uTwmFlSBUZEKR08c18kEL6RgfLcCDirfZCoPRpWp3pJWVAwW75dreiMAenvD3gSI9O2HLcev2Vi1xLcb6qLbmirJnOMUk=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(376005)(7416005)(1800799015)(366007);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?SVc4czlmR3lDMCswWU9LQXRHVXo4RHF5ZiszYkI2bnNmZEc5K1g4S3NKY2xm?=
 =?utf-8?B?QS9QV0lib1NIQlY4eDZBZFZWM2pJTXZ3UWdiN2hPanA1NDNKN3VNTzYvVEFW?=
 =?utf-8?B?YnNqTWxJeFcrWUxLdzAwRWFvdCs4NDNCL1dYaWhHeVJmc1hwQ0VKSGFxSDQ0?=
 =?utf-8?B?QVU0OFpnSWkzY2lOeVEvWEdvOHdhZnhRS3hpWXpBSytWOUNQV3NMVWk5cDRS?=
 =?utf-8?B?L1FKUFJwYk5LOVZ1NFlGU3RKeDdnY2ZsWnJscU9MZmtINlNzMERJSFkvNFhx?=
 =?utf-8?B?SmZlUXJNUTdBL2ZCTEFKYzdjNDRSSHpXSTE5L1BDZE9FVFFmRHZaRE85eXFP?=
 =?utf-8?B?dzNDdEpXbk5sOGYwZWY1VTRSVTVGVFd0K3dDVEkwN29ZblM1Yk1wUEl4Szd6?=
 =?utf-8?B?THU1ZmVTTUJveFpWNTM5TVB0d3ppcjR0UVlLTWhpRmt0UC9TeHhpTWIzMGJh?=
 =?utf-8?B?M0FjbHVLNVJGR0NXNTBzVG9kMS96QlJROUhUUUF4a0FtQzVCUTJDeFU5a3pa?=
 =?utf-8?B?bWQ1SWc5ZnlBbjBwZEhtQ0dySUdxdnNvVUdjQytEZTNsb1NxVURQSEk0MCtS?=
 =?utf-8?B?TlpJL091Q3RmbWFxcXJYc1RGb3ZET0tsZUh3aXorcUtyVjdXT1NuT0hCNE1C?=
 =?utf-8?B?Kzk0dmRGV1dOS2hiSXNyOHVITElUWEVKSVRQVGlyUHFXTDVNbGRXNlVMQjNJ?=
 =?utf-8?B?SjZmeERsTjJuRWVkU3NpdkRVSVNIQ2dIMTFCNEZmQVpRVmRXOVFUcERpMW15?=
 =?utf-8?B?VTNwa1FYaXNCQTFmN2g4aExGN2NpQVFYcWVyK3N6Y1p0MlZ2cFlLamVkQXlk?=
 =?utf-8?B?Q0NqMEJvWkJIOXpxSzRzdlNBY05YN3Y2N3FnTkpRejJIUG5zcm5zVTBKMkhv?=
 =?utf-8?B?ZC8ycUpLRy83UjRPQmI3QUFLb0Q0cFpKRlVFM1czZkVrQXNFSkY1U1QzQ0Fj?=
 =?utf-8?B?dEZzc0k1Z3lycVZ2aDhIeW1iZk1iZ3ltYzVnaWVMZkhwZXNrMGdHSnVhYUhX?=
 =?utf-8?B?YW9WZDFCVUlZcFBhcnZEWmlhbmhCUXdqcUNpRk9Ec2g4czI0ZHJ6a3JJRVl6?=
 =?utf-8?B?S25uZTMzcExINE1zVHAyendaZy9oVXJ5TnRZanp6TGNucnduZXRpK3RwYjBQ?=
 =?utf-8?B?bWs3b2x0MVBIbkptcVhxR0l3dDFUZFJQL0wvVHRyb3A3SHkwM3lXSnlRVkNv?=
 =?utf-8?B?dDRkQWNpRVhMNWtOd3F4L3l0djhkc3ZLZFVDVDBQUG0xNURLd3V3bjRET2wy?=
 =?utf-8?B?NlVZNVovLzErRksyYjhzcEFmeFhvOGdCeXMwN09qdHZDNGZNR2w0ZXRjR3BS?=
 =?utf-8?B?TXl6SUNmTys2QUJwcGM4THpUblFmVXZaN0wyVUFDN1crOWNYSk9tZ0pSa3F5?=
 =?utf-8?B?NCs5Uk1SM2tSWktxWVNWaXh1QStraU1FOG90cVZZNkRwbHoycWtOL3BhLzhw?=
 =?utf-8?B?cHprb3NOYWNKOURUMzRDSk8vc00rTnM4cGdCVVFMVWNrdit5c01KL0tsQjc5?=
 =?utf-8?B?UnNrQmZ6cFBjYm5ldm5FeG8ycWpWWWNYa3ZDWE1hZVJGN3VQdktuR1QzZXRa?=
 =?utf-8?B?NDdnMU1BNk82T3orOWdXdHdRWTdyT1RQR05yQUtnUU90Qkg1bHdWS0E5M0NH?=
 =?utf-8?B?bHNvTFc4OVAyMHVmMkhLT0tKaExLSnlvay9VS3I4YVQydklSMGVGa09SNWxy?=
 =?utf-8?B?VzZmVHpMMzJMaFk3cnlaOXlEUFJ3YncrRVFJSVRZbklzaVZ1T3NQTGIzU3F1?=
 =?utf-8?B?WEtMaDB0RTJFK0p6Mk9uZksyVXgrNWJWZmVtYTBSMjNIRUtOYWpobVYvTys0?=
 =?utf-8?B?UnhRUkVPT0pySnNRNTN3dUpQN0N4cG80d001UG8xYkFiWjZCNm91OVgrZExy?=
 =?utf-8?B?ck4yemJwNytmbWVLSCtndW8wWW1CcHpiUUxTRWpMVktVOHJZQ3o0VzVka0pU?=
 =?utf-8?B?NGpZS0VTTVY1aFgwQXlpWmp5akJrVi9Pd2RlaTBYYnBaMTduc2g0a2NBNE5D?=
 =?utf-8?B?alJDbTEvZEtNZ3gxelNXMlh4anVWUFlmRlg5bTBWM0xQR0FMaE93T3ZUWlhl?=
 =?utf-8?B?ejE2MkY5YWw4U1kxL2dtWXlrOGxnTHdiaWd3bGdWeEJUZy9PenI2ZGNORGpi?=
 =?utf-8?Q?6ZFrgaJqwYxD0OtJtShE/LfFi?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cd98731f-1ac4-41f3-a20c-08dc58aaa11c
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Apr 2024 15:35:05.3677
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: XNDwPIN0nNSmxS9YJcOVy7Hv9+yHXg9YW4W5+Uto/FmZfbxgfvqm8XwVpGgQsScm
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR12MB6935
X-Rspamd-Queue-Id: A8DA543C6E
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.99 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector9901:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:40.107.0.0/16];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	MIME_GOOD(-0.10)[text/plain];
	XM_UA_NO_VERSION(0.01)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.107.102.139:from];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[12];
	ASN(0.00)[asn:8075, ipnet:40.104.0.0/14, country:US];
	NEURAL_HAM(-0.00)[-0.999];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	RCVD_TLS_LAST(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[amd.com:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: 222N7C2ELCUWUGEXDCPKMBFVJJWEFI53
X-Message-ID-Hash: 222N7C2ELCUWUGEXDCPKMBFVJJWEFI53
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: pekka.paalanen@collabora.com, jason@jlekstrand.net, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf: add DMA_BUF_IOCTL_SYNC_PARTIAL support
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/222N7C2ELCUWUGEXDCPKMBFVJJWEFI53/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

QW0gMDkuMDQuMjQgdW0gMDk6MzIgc2NocmllYiBSb25nIFFpYW5mZW5nOg0KPg0KPiDlnKggMjAy
NC80LzggMTU6NTgsIENocmlzdGlhbiBLw7ZuaWcg5YaZ6YGTOg0KPj4gQW0gMDcuMDQuMjQgdW0g
MDk6NTAgc2NocmllYiBSb25nIFFpYW5mZW5nOg0KPj4+IFtTTklQXQ0KPj4+PiBBbSAxMy4xMS4y
MSB1bSAwNzoyMiBzY2hyaWViIEppYW5xdW4gWHU6DQo+Pj4+PiBBZGQgRE1BX0JVRl9JT0NUTF9T
WU5DX1BBUlRJQUwgc3VwcG9ydCBmb3IgdXNlciB0byBzeW5jIGRtYS1idWYgd2l0aA0KPj4+Pj4g
b2Zmc2V0IGFuZCBsZW4uDQo+Pj4+DQo+Pj4+IFlvdSBoYXZlIG5vdCBnaXZlbiBhbiB1c2UgY2Fz
ZSBmb3IgdGhpcyBzbyBpdCBpcyBhIGJpdCBoYXJkIHRvIA0KPj4+PiByZXZpZXcuIEFuZCBmcm9t
IHRoZSBleGlzdGluZyB1c2UgY2FzZXMgSSBkb24ndCBzZWUgd2h5IHRoaXMgc2hvdWxkIA0KPj4+
PiBiZSBuZWNlc3NhcnkuDQo+Pj4+DQo+Pj4+IEV2ZW4gd29yc2UgZnJvbSB0aGUgZXhpc3Rpbmcg
YmFja2VuZCBpbXBsZW1lbnRhdGlvbiBJIGRvbid0IGV2ZW4gDQo+Pj4+IHNlZSBob3cgZHJpdmVy
cyBzaG91bGQgYmUgYWJsZSB0byBmdWxmaWxsIHRoaXMgc2VtYW50aWNzLg0KPj4+Pg0KPj4+PiBQ
bGVhc2UgZXhwbGFpbiBmdXJ0aGVyLA0KPj4+PiBDaHJpc3RpYW4uDQo+Pj4gSGVyZSBpcyBhIHBy
YWN0aWNhbCBjYXNlOg0KPj4+IFRoZSB1c2VyIHNwYWNlIGNhbiBhbGxvY2F0ZSBhIGxhcmdlIGNo
dW5rIG9mIGRtYS1idWYgZm9yIA0KPj4+IHNlbGYtbWFuYWdlbWVudCwgdXNlZCBhcyBhIHNoYXJl
ZCBtZW1vcnkgcG9vbC4NCj4+PiBTbWFsbCBkbWEtYnVmIGNhbiBiZSBhbGxvY2F0ZWQgZnJvbSB0
aGlzIHNoYXJlZCBtZW1vcnkgcG9vbCBhbmQgDQo+Pj4gcmVsZWFzZWQgYmFjayB0byBpdCBhZnRl
ciB1c2UsIHRodXMgaW1wcm92aW5nIHRoZSBzcGVlZCBvZiBkbWEtYnVmIA0KPj4+IGFsbG9jYXRp
b24gYW5kIHJlbGVhc2UuDQo+Pj4gQWRkaXRpb25hbGx5LCBjdXN0b20gZnVuY3Rpb25hbGl0aWVz
IHN1Y2ggYXMgbWVtb3J5IHN0YXRpc3RpY3MgYW5kIA0KPj4+IGJvdW5kYXJ5IGNoZWNraW5nIGNh
biBiZSBpbXBsZW1lbnRlZCBpbiB0aGUgdXNlciBzcGFjZS4NCj4+PiBPZiBjb3Vyc2UsIHRoZSBh
Ym92ZS1tZW50aW9uZWQgZnVuY3Rpb25hbGl0aWVzIHJlcXVpcmUgdGhlIA0KPj4+IGltcGxlbWVu
dGF0aW9uIG9mIGEgcGFydGlhbCBjYWNoZSBzeW5jIGludGVyZmFjZS4NCj4+DQo+PiBXZWxsIHRo
YXQgaXMgb2J2aW91cywgYnV0IHdoZXJlIGlzIHRoZSBjb2RlIGRvaW5nIHRoYXQ/DQo+Pg0KPj4g
WW91IGNhbid0IHNlbmQgb3V0IGNvZGUgd2l0aG91dCBhbiBhY3R1YWwgdXNlciBvZiBpdC4gVGhh
dCB3aWxsIA0KPj4gb2J2aW91c2x5IGJlIHJlamVjdGVkLg0KPj4NCj4+IFJlZ2FyZHMsDQo+PiBD
aHJpc3RpYW4uDQo+DQo+IEluIGZhY3QsIHdlIGhhdmUgYWxyZWFkeSB1c2VkIHRoZSB1c2VyLWxl
dmVsIGRtYS1idWYgbWVtb3J5IHBvb2wgaW4gDQo+IHRoZSBjYW1lcmEgc2hvb3Rpbmcgc2NlbmFy
aW8gb24gdGhlIHBob25lLg0KPg0KPiBGcm9tIHRoZSB0ZXN0IHJlc3VsdHMsIFRoZSBleGVjdXRp
b24gdGltZSBvZiB0aGUgcGhvdG8gc2hvb3RpbmcgDQo+IGFsZ29yaXRobSBoYXMgYmVlbiByZWR1
Y2VkIGZyb20gMy44cyB0byAzcy4NCj4NCj4gVG8gYmUgaG9uZXN0LCBJIGRpZG4ndCB1bmRlcnN0
YW5kIHlvdXIgY29uY2VybiAiLi4uaG93IGRyaXZlcnMgc2hvdWxkIA0KPiBiZSBhYmxlIHRvIGZ1
bGZpbGwgdGhpcyBzZW1hbnRpY3MuIiBDYW4geW91IHBsZWFzZSBoZWxwIGV4cGxhaW4gaXQgaW4g
DQo+IG1vcmUgZGV0YWlsPw0KDQpXZWxsIHlvdSBkb24ndCBnaXZlIGFueSB1cHN0cmVhbSBkcml2
ZXIgY29kZSB3aGljaCBhY3R1YWxseSB1c2VzIHRoaXMgDQppbnRlcmZhY2UuDQoNCklmIHlvdSB3
YW50IHRvIHN1Z2dlc3Qgc29tZSBjaGFuZ2VzIHRvIHRoZSBjb3JlIExpbnV4IGtlcm5lbCB5b3Vy
IGRyaXZlciANCmFjdHVhbGx5IG5lZWRzIHRvIGJlIHVwc3RyZWFtLg0KDQpBcyBsb25nIGFzIHRo
YXQgaXNuJ3QgdGhlIGNhc2UgdGhpcyBhcHByb2FjaCBoZXJlIGlzIGEgY29tcGxldGVseSBuby1n
by4NCg0KUmVnYXJkcywNCkNocmlzdGlhbi4NCg0KPg0KPiBUaGFua3MsDQo+DQo+IFJvbmcgUWlh
bmZlbmcuDQo+DQo+Pg0KPj4+DQo+Pj4gVGhhbmtzDQo+Pj4gUm9uZyBRaWFuZmVuZy4NCj4+DQoN
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1t
bS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1
bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGlu
YXJvLm9yZwo=
