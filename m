Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DB8782C1E6
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 12 Jan 2024 15:33:20 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 597293F4FF
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 12 Jan 2024 14:33:19 +0000 (UTC)
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (mail-dm6nam04on2081.outbound.protection.outlook.com [40.107.102.81])
	by lists.linaro.org (Postfix) with ESMTPS id 241643F0D1
	for <linaro-mm-sig@lists.linaro.org>; Fri, 12 Jan 2024 14:32:58 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=4pX5Wrtl;
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.107.102.81 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	arc=pass ("microsoft.com:s=arcselector9901:i=1")
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BsjU68mMKtryidpt9b2bY7NCNWxSR3IMuiuzGbdUXzAV/KEl7+J5anLiW1Htw3e20VfxXpcLFltZ6W/kbOc/BX/cVo+1Y/C7B2VgIhhEJgaIV/9E0a8lr2HArsYXJ1oUr291bjpQf5VeQDqXl/Dp4aN7rY38WN5BkIvsWnGiJE4brt9mnDtI6VnK7m+/HZXPyR8oCXLW0vBZr/sl1yNTxv3xjNComlVVGJzw4DBIFujYIS892j7GDAcgrphE+S/ZjhguR2U1gehpIWooxc1Bk2UbAWIoHobHMLQu53W1RdwjvUUGuMohVPYWq5ANXP0vkaUDpF/1j1Iu5gyMjC3SRg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5ETLcm1t3ho2irt6xj5DJIQK9RQubDl+Re02Os/xDxs=;
 b=f3PUxL3RH1xU+GiSapEGkUmZZSnHGTbl1LdBIsiAUIQJDC2L1ekV+xUUBeej1SP9YXdChwoYr9dwEkedTrsfKJnT7MmkEokd7lZmve9wumXU4G5H21Hm/dlCeKYRv4ONEnWsTEWdzmyJKeYmtCTwPSf+7ADuIgx9wk3327fAuEGf5vbbopQNbxOtGbYkJnmDwLCpwDNAT3Bt1Yg3luV7u3ERONBjV8eI1BXhkPlp3PZzgp65iKUbD/ewh3YU+VBzkdX5jL/5BLsCbMc5up8lEffYTsxanDfFIbBWYB+KG1gBJ6gq5kiyT8xaaFYFr2lZWJ3R2tfqP2qcgzr0NbPl9Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5ETLcm1t3ho2irt6xj5DJIQK9RQubDl+Re02Os/xDxs=;
 b=4pX5Wrtlq91VDO265q+LctA3LmvlM+QrbFl2dFRxiKeV7qlLwyMGrH0vv1BlIl4T/F+kKbln0V4SD1KO3iE1sQQYIAteBqERxog4Z/W0cmGVVJ/Nxz3LDCBGx/1+v3uw38Q26HUvihTfs5kgssGOqRq6gsFUhTNE7ISCbFqL7D0=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by CH2PR12MB4940.namprd12.prod.outlook.com (2603:10b6:610:65::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7181.19; Fri, 12 Jan
 2024 14:32:56 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::e1fb:4123:48b1:653]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::e1fb:4123:48b1:653%4]) with mapi id 15.20.7159.020; Fri, 12 Jan 2024
 14:32:56 +0000
Message-ID: <54bf529d-c71b-4ee4-a025-bda48e6ac297@amd.com>
Date: Fri, 12 Jan 2024 15:32:51 +0100
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Daniel Vetter <daniel@ffwll.ch>, Randy Dunlap <rdunlap@infradead.org>
References: <20240111041202.32011-1-rdunlap@infradead.org>
 <ZaE4_l8PzXx9Isjp@phenom.ffwll.local>
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <ZaE4_l8PzXx9Isjp@phenom.ffwll.local>
X-ClientProxiedBy: FR2P281CA0100.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:9c::14) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|CH2PR12MB4940:EE_
X-MS-Office365-Filtering-Correlation-Id: 3bbad347-241c-44dc-2849-08dc137b5e03
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	bicqnWwdUlDG2yli9pNxTGcY3Jrup4yx5mkB7bjWM90berPps5nT8rmssEMvCRBDLbEz0WzGrCwz0xSlPv3wB3rPkTULOj4Dg2ls6sIlHmRD0g/7fUuYIrBlXKGC3rruByK8lPLz7hV/xxgz/yzyFqSlPScCIat1OFXFNbLfWEdtTAADGeCNZjPUNJ4WFcn1ndRWMLBePKRV2C6nK7N2JwB9tDIAfMhEhSRvEvwkGwzx1N9c3nH4yeDSrG7Zop6moRd5HGvLV4gMl05YByQKXeAeDpG4Qv53YB1qVvU86clh11pJOk4E6kFAUnWcgo7hv1FyKoRNTOQfpASmrx6VSJ9RSpLthlQqVgbY/Hol0gmtLKchhEtPir8FKzF+g9LUu/2slGQSyK5abhJ2VHjQyUHNlGMfAsmXnCMh5jBWXIvCIMQlEXy5vdLj3D+Ox0FUFeVarEkB+YZwJUO6rhUKKRVx+k9gwV1tYGkQdeGw/67dN2hDGegsVo6fE9BhmF/N4uohmfB3xDxFDaAWCG4P9JpGskFD1SPA5z4ttRBuOxxZHpMxBGvfT1E91i9DPnMhBibKMAbhUdvN5ubQTZGR71jif0geTHTPvs2sp06ygKtHaduS3eK9I9TncmD+RzJ8xURBqN4DgbXXwXzwGs4mNA==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(376002)(396003)(39860400002)(366004)(346002)(136003)(230922051799003)(451199024)(186009)(64100799003)(1800799012)(66899024)(316002)(66556008)(66946007)(8936002)(4326008)(8676002)(66476007)(110136005)(36756003)(5660300002)(2906002)(41300700001)(6506007)(6666004)(6512007)(66574015)(478600001)(2616005)(38100700002)(26005)(31686004)(6486002)(83380400001)(31696002)(86362001)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?NW1HZVRYelNOREYvNmNMaStXZUJEdVY2WEdFdENpZU1NZmxvREVQdjM5Um15?=
 =?utf-8?B?cG5xSndrblliNzA0M1hkYjhaZnJLTzEwOS9Xa0RjSVFIbjRnQ0FSLzhHWi9v?=
 =?utf-8?B?NHlZYURrK040RUFIUFczNWZRODhKQ3NqekFjNWd6OXJhMmFEdWlMUytpUVFI?=
 =?utf-8?B?d0RIa0lTVURtYVAzdzdocVRrOHdLMlJKTVBMZEF0RDNFRG1XV2h4VGR1MFpl?=
 =?utf-8?B?SmplMnJkQys0Vk9CemNXRkxDcHBBb3BHclhzaWlUVVJnZ2pUVy9QcWkxa1Bn?=
 =?utf-8?B?bk5WdDBGaloyRkpyTS96QkxOQlB0VUl3dzNoWmJNaGJMSFY0cjNlYXlBQUpL?=
 =?utf-8?B?MEU2WkljRWdkb09EeE5uYm41dlJKK3RETysrWSt6YTlzU2w1ek9pOHFlVkVY?=
 =?utf-8?B?ZjU4MzgrdHYvZDdZZXljZ2wwdUlqUzNGRjA5OHp1K1dEL3hxaE5BS21zUEo0?=
 =?utf-8?B?N3oyZEpHR2FILzNsN0dWSkVuRisxMTh1bVd2d21XandGcjhOQUY2VFBUeW5m?=
 =?utf-8?B?Uk1QVnJxeVJob2RCOG1FRVp1TEo4bTg1d3h5WEYxZmRlWDd3WktEdmROakJ2?=
 =?utf-8?B?WkRmeEJpQytnQSs2Y2hlMGI2dGthc1dySnd4QXB2TmJwRU5lU0puWnp0bG1X?=
 =?utf-8?B?TkNWZW1ROFdDejRZV0pSZXFQa0FvRVdiSGExQXMzR1dBSDFUSS90RFk1c0FM?=
 =?utf-8?B?OE1hRFZrdkpoVFdhV1NURExCVnViM0h4c3FRQU9RMEJFM0o5T0FOYXM4S3Nr?=
 =?utf-8?B?bEd4eUZNU2QzdERicHp0TnArdk1OUkc2R3RrZ3laSEkxTXFLR3lmckxCZUNN?=
 =?utf-8?B?SGRzcHl2czR2WkNOV1MxUE9iVFdLaWNGUnBPOWFBN2U3bGlySVYyU1FrRmlK?=
 =?utf-8?B?VHo2akk0NnRsMjlVM0F5cllxajJ1NTFncW9rRERDTVVoMTlWWktFeDEvc3hZ?=
 =?utf-8?B?QVpmWWp5ZlNXMDRHYU8yVU9EM1BETW1QYjFud1VmTVZFWk52NDdoSzZKRk1P?=
 =?utf-8?B?Tmp6THV3SmloTjJ4UWpIcWZrYk9PbVVsN3F0ZlZ6Z3FoVjR0MytQTTB4Rzg0?=
 =?utf-8?B?OHBpT21kNUNNdXRSaWVYVk8rQnlDbTQ3Y0h2a2pTL2ZhWDEvWStsUzJQcGo1?=
 =?utf-8?B?OURsWTg5cGVMU2gramtNekFRTzJBTHVvcnFrS3l4azYwNHBpNnFHdE9NQXdG?=
 =?utf-8?B?WEtJbElseGhTM3RVblArS2NuQUp0bTQySndtRE1UMXpEdXNheW1Dc3dYQ05s?=
 =?utf-8?B?ZGRGQU9nZ1pyL1p6Q3VManloeVpva24xbDVPR1NKd251ZDg4bnhPdi85NlZU?=
 =?utf-8?B?ZDkvK3I3MWh2RHpsY0ZDdDlndi96OXZPbXJaQU5wcU1QN1ZVeGkrcnpsUmtJ?=
 =?utf-8?B?SGZXallqYVBGK0ZNQ2NQY0dMUDZ1OU9rc0hUNzlGcEh1dmZITFlxZ3ZnNkp1?=
 =?utf-8?B?cFlBNnZ6RUhrVUEzY3hhRmNUN2xteTYwY2lFZEpkQnNObEZYQktwakQ2RUlr?=
 =?utf-8?B?MGVtVnFVQXlEQ2F2c1dKdEFVR2JGemsrQ3d3SnR3TlVmZ3lwbnNFMzJ5cWNI?=
 =?utf-8?B?QXZ6YWZRTjNuWFhDS01xMGFFczNOcm9HSWRwU0QzbXVDVDlLY1creG5rMlE0?=
 =?utf-8?B?RmhkQys0RDFJT2ZoVE9LL3FwNFRENG5EV0V1WEEzZzRrTk1EK05LQytzdmNU?=
 =?utf-8?B?eithT08zdXNlSWVva2IybmErL2JVMUFOdVFUNGdINFlWZjY4NmVYTW5ESWNs?=
 =?utf-8?B?K0xYdFZkaFFYK1hGc3krWEJyTlp1U1hkMXFOaDBiUjNFZVhmUm9CU2kvV2gz?=
 =?utf-8?B?N3NvZ09WZkxzWWRqRElzbzk4cVZZdnhwdGJzR09NaURNTDJPS3U2elNCUVFq?=
 =?utf-8?B?NitnaXg5L2pvbTgvc0FrYlkxRlpjWG5UM1RMVDJBR01Vb29lbUhqTXhDWkpF?=
 =?utf-8?B?YXFKUUpCWTMwU3hGRFR4d2QrNHJUVHBqSVYrWk80RXZscUd6aWF0aklMSkZK?=
 =?utf-8?B?amYrbWR4cVNmVldqTGhKT3k5ZDZkbkQzaUwxbFA4T1ZhTU9xNzdWM0VyMTho?=
 =?utf-8?B?Qko4NlplSUJSdDRuUFRPWEFlSTlDV1ZlOWdhUVluNDVLdENQRjE2dHU2NUE5?=
 =?utf-8?Q?D7U+XVF5xjMzsdkP7jPRR90sp?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3bbad347-241c-44dc-2849-08dc137b5e03
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Jan 2024 14:32:56.0983
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: saKYIOW81qo9DDZu3yRcUxqtlRAWixYUFn0WhX2ftU2oe+OlriC+LE5Q9vv+6ZJS
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR12MB4940
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-8.99 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector9901:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:40.107.0.0/16];
	MIME_GOOD(-0.10)[text/plain];
	XM_UA_NO_VERSION(0.01)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.107.102.81:from];
	ASN(0.00)[asn:8075, ipnet:40.104.0.0/14, country:US];
	MIME_TRACE(0.00)[0:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_COUNT_TWO(0.00)[2];
	DKIM_TRACE(0.00)[amd.com:+]
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 241643F0D1
X-Spamd-Bar: --------
Message-ID-Hash: KOZ6SP43OAMN3XDHOOCZFR5JKY4TAKKR
X-Message-ID-Hash: KOZ6SP43OAMN3XDHOOCZFR5JKY4TAKKR
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: dri-devel@lists.freedesktop.org, patches@lists.linux.dev, Sumit Semwal <sumit.semwal@linaro.org>, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf/dma-resv: fix spelling
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/KOZ6SP43OAMN3XDHOOCZFR5JKY4TAKKR/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

QW0gMTIuMDEuMjQgdW0gMTQ6MDUgc2NocmllYiBEYW5pZWwgVmV0dGVyOg0KPiBPbiBXZWQsIEph
biAxMCwgMjAyNCBhdCAwODoxMTo1NVBNIC0wODAwLCBSYW5keSBEdW5sYXAgd3JvdGU6DQo+PiBG
aXggc3BlbGxpbmcgbWlzdGFrZXMgYXMgcmVwb3J0ZWQgYnkgY29kZXNwZWxsLg0KPj4NCj4+IFNp
Z25lZC1vZmYtYnk6IFJhbmR5IER1bmxhcCA8cmR1bmxhcEBpbmZyYWRlYWQub3JnPg0KPj4gQ2M6
IFN1bWl0IFNlbXdhbCA8c3VtaXQuc2Vtd2FsQGxpbmFyby5vcmc+DQo+PiBDYzogbGludXgtbWVk
aWFAdmdlci5rZXJuZWwub3JnDQo+PiBDYzogZHJpLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9y
Zw0KPj4gQ2M6IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4NCj4+
IENjOiBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcNCj4gQm90aCBkbWEtYnVmIHNwZWxs
IGZpeGVzIGFwcGxpZWQgdG8gZHJtLW1pc2MtbmV4dCwgdGhhbmtzIQ0KDQpDcmFwIG5vdCBmYXN0
IGVub3VnaC4gSSB3YXMganVzdCBhYm91dCB0byByZXBseSB0aGF0IHdoaWxlIGF0IGl0IHdlIA0K
Y291bGQgYWRkIGluIHRoZSBvdGhlciBwYXRjaCB0aGF0IEdGUF9BVE9NSUPCoCBvciBHRlBfTk9X
QUlUIHNob3VsZCBiZSANCnN1ZmZpY2llbnQuDQoNCkJ1dCByZWFsbHkganVzdCBhIG1pbm9yIGFk
ZGl0aW9uLg0KDQpDaHJpc3RpYW4uDQoNCj4gLVNpbWENCj4+IC0tLQ0KPj4gICBkcml2ZXJzL2Rt
YS1idWYvZG1hLXJlc3YuYyB8ICAgIDQgKystLQ0KPj4gICAxIGZpbGUgY2hhbmdlZCwgMiBpbnNl
cnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQ0KPj4NCj4+IGRpZmYgLS0gYS9kcml2ZXJzL2RtYS1i
dWYvZG1hLXJlc3YuYyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtcmVzdi5jDQo+PiAtLS0gYS9kcml2
ZXJzL2RtYS1idWYvZG1hLXJlc3YuYw0KPj4gKysrIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1yZXN2
LmMNCj4+IEBAIC00MDUsNyArNDA1LDcgQEAgc3RhdGljIHZvaWQgZG1hX3Jlc3ZfaXRlcl93YWxr
X3VubG9ja2VkKA0KPj4gICAgKg0KPj4gICAgKiBCZXdhcmUgdGhhdCB0aGUgaXRlcmF0b3IgY2Fu
IGJlIHJlc3RhcnRlZC4gIENvZGUgd2hpY2ggYWNjdW11bGF0ZXMgc3RhdGlzdGljcw0KPj4gICAg
KiBvciBzaW1pbGFyIG5lZWRzIHRvIGNoZWNrIGZvciB0aGlzIHdpdGggZG1hX3Jlc3ZfaXRlcl9p
c19yZXN0YXJ0ZWQoKS4gRm9yDQo+PiAtICogdGhpcyByZWFzb24gcHJlZmVyIHRoZSBsb2NrZWQg
ZG1hX3Jlc3ZfaXRlcl9maXJzdCgpIHdoZW52ZXIgcG9zc2libGUuDQo+PiArICogdGhpcyByZWFz
b24gcHJlZmVyIHRoZSBsb2NrZWQgZG1hX3Jlc3ZfaXRlcl9maXJzdCgpIHdoZW5ldmVyIHBvc3Np
YmxlLg0KPj4gICAgKg0KPj4gICAgKiBSZXR1cm5zIHRoZSBmaXJzdCBmZW5jZSBmcm9tIGFuIHVu
bG9ja2VkIGRtYV9yZXN2IG9iai4NCj4+ICAgICovDQo+PiBAQCAtNDI4LDcgKzQyOCw3IEBAIEVY
UE9SVF9TWU1CT0woZG1hX3Jlc3ZfaXRlcl9maXJzdF91bmxvY2sNCj4+ICAgICoNCj4+ICAgICog
QmV3YXJlIHRoYXQgdGhlIGl0ZXJhdG9yIGNhbiBiZSByZXN0YXJ0ZWQuICBDb2RlIHdoaWNoIGFj
Y3VtdWxhdGVzIHN0YXRpc3RpY3MNCj4+ICAgICogb3Igc2ltaWxhciBuZWVkcyB0byBjaGVjayBm
b3IgdGhpcyB3aXRoIGRtYV9yZXN2X2l0ZXJfaXNfcmVzdGFydGVkKCkuIEZvcg0KPj4gLSAqIHRo
aXMgcmVhc29uIHByZWZlciB0aGUgbG9ja2VkIGRtYV9yZXN2X2l0ZXJfbmV4dCgpIHdoZW52ZXIg
cG9zc2libGUuDQo+PiArICogdGhpcyByZWFzb24gcHJlZmVyIHRoZSBsb2NrZWQgZG1hX3Jlc3Zf
aXRlcl9uZXh0KCkgd2hlbmV2ZXIgcG9zc2libGUuDQo+PiAgICAqDQo+PiAgICAqIFJldHVybnMg
dGhlIG5leHQgZmVuY2UgZnJvbSBhbiB1bmxvY2tlZCBkbWFfcmVzdiBvYmouDQo+PiAgICAqLw0K
Pj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18NCj4+IExp
bmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9y
Zw0KPj4gVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZl
QGxpc3RzLmxpbmFyby5vcmcNCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0Bs
aXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1t
LXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
