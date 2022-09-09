Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id DB011604399
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 19 Oct 2022 13:43:50 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D88433F1BB
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 19 Oct 2022 11:43:49 +0000 (UTC)
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (mail-co1nam11on2055.outbound.protection.outlook.com [40.107.220.55])
	by lists.linaro.org (Postfix) with ESMTPS id E994C3ED2F
	for <linaro-mm-sig@lists.linaro.org>; Fri,  9 Sep 2022 17:32:56 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ei4akZUCkSOMnopBqy8cJnwJLaw3IFIzTdgJKRLra1rLh2LwL7pVM+PvSLgyDRfITQoMTXEpAR/BEYCSW6/umjM1L7QClwgUa+IiuZT+L0nxyxzac/On0sT1NDpl58b8Mo/VC5Wa326C0uLB7uOg9K565MANO/rhX/mqqqqeUngClWg40M1NCTCD68cTcPey8briwPpQpaB8JIpU4hYCR/fAZwwCw9AT7zO0De5Verw9Lkw79qLH1Oc8KI1B2DZ4pqfWsyobjW6yakw6wf7Vd9lpo19AnddLBZaGCZSfuqV2kELiBL8Hy1dJXxSyl9zH2mqCp8/7c2Jj5t34Ov622A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GGXpud9UCNw3G7+HiXOSZncEj92fpilV7WnD5W5XGZw=;
 b=VMentbY/WWdNIDf4VsK55rLideSXaMnGL2Py4fiN2eGC0sXulgsXAGyuPS5/rRkEsvXeyDPUjyPEDNIr9XRZqR1OV/suCdkG6iNUtUO7VhNQsGgCB0vJFkop+wCmOsKBDIsRjpJ1an0yVzcSUM/UsZrzNov0SzGXAo2HnBlTWZqBwMR9tWtIfEVasrCvprLSNcNe0afzpH9Zo9V7yo9bIm1ybA6NqSCD62yD6v/loHE7Bcxf2YS5+s78RPYsX7ISl2N5AKU+DPvNHr12XIkklU15ovVyOxSc2iMugaoYxYcnJTs/9fjqwJZjSXFb1KlKEBmOV2vEg7yBFqkzm+Lt8g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GGXpud9UCNw3G7+HiXOSZncEj92fpilV7WnD5W5XGZw=;
 b=krGxL0zMt4JfiGQ7WXx+CjbgHnn9bHW2tlisNk6TGUqVlhzon7B/78hHdL1J1Sssf/qmjYe4D48e8K4v5NzjxNK2y6r74YHkpUthY+tREhzWATxxNHaTwiOVESJTCs8jFn2nlWBFTR/hZegSN3jTf0EzpMxlXFjsbCOhsdVFPrQ=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
Received: from DM5PR12MB1947.namprd12.prod.outlook.com (2603:10b6:3:111::23)
 by MN2PR12MB4375.namprd12.prod.outlook.com (2603:10b6:208:24f::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5612.20; Fri, 9 Sep
 2022 17:32:53 +0000
Received: from DM5PR12MB1947.namprd12.prod.outlook.com
 ([fe80::80ca:c97:d395:1acf]) by DM5PR12MB1947.namprd12.prod.outlook.com
 ([fe80::80ca:c97:d395:1acf%6]) with mapi id 15.20.5612.016; Fri, 9 Sep 2022
 17:32:53 +0000
Message-ID: <2937dc45-0b62-7c71-b846-942fa91cbb4e@amd.com>
Date: Fri, 9 Sep 2022 13:32:51 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: Arvind Yadav <Arvind.Yadav@amd.com>, Christian.Koenig@amd.com,
 shashank.sharma@amd.com, amaranath.somalapuram@amd.com,
 Arunpravin.PaneerSelvam@amd.com, sumit.semwal@linaro.org,
 gustavo@padovan.org, airlied@linux.ie, daniel@ffwll.ch,
 linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
References: <20220909170845.4946-1-Arvind.Yadav@amd.com>
 <20220909170845.4946-6-Arvind.Yadav@amd.com>
From: Andrey Grodzovsky <andrey.grodzovsky@amd.com>
In-Reply-To: <20220909170845.4946-6-Arvind.Yadav@amd.com>
X-ClientProxiedBy: YT1PR01CA0059.CANPRD01.PROD.OUTLOOK.COM
 (2603:10b6:b01:2e::28) To DM5PR12MB1947.namprd12.prod.outlook.com
 (2603:10b6:3:111::23)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM5PR12MB1947:EE_|MN2PR12MB4375:EE_
X-MS-Office365-Filtering-Correlation-Id: 61905350-805d-4f56-bc69-08da92895398
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	p6diCgmJCOBNpO4+ed2ZNyh6JZ0WthnDBinATnhuZ7OmHyfIYK9HBj7AU2Bh77u94ia414y47xgb66k6uWYYN1KpuNGyd1BaLkQXplE5IHqBps6fNl2YFNAZmdTHcF+wa+EKd/jIgm5NtZJUmTyZEYsLI6t2s7kzE2YTOY/1V5bzludvjIk8S16oUPkWvmwuSmFk0lpzp2VMeWzJsW0ZD93IGS6jlUVXFjakkEV2FJOuXpWuMtSnfnxwWC0SkLjpA/b1dcMfzwA2zgiMmfL5t4AZfKQlce/LC8eEXQm5ZEhfKWroGtqIq11f0wfP8DMRx3QKjuyaBvjm6MPUEZJFwJ6kwCBGSM/78r4kzLmmKzUssjUh6kmek5+Wtf7WyX7UVG4BriyD2/uH0PPGmLe5DTjejYOTZ6Ydt1ywhnh6XMd0Y0QxWX3jUTohxc4oCJp0KE6xwiThxi6fRwtKGHpZYy62RxY99G3sO+Z11eOXbePmG9NP5XiFc/2yG31K79ivcVvv4OMOAwEFXjOpLUf2bdxCoof8w9JVV4zyw+u3HNxezQJppL92w+sAI3F1EHZJPWTGM67yWURnyGxQeoOk3nMM5qyPZlN8iYsK4AUq2iur9+oDtpTOUh6ixAW/IVuxYGZ+gxh1K6suZGI4UEQlau1bEeD2lZPJZlz/ZLlY6Gwrqw6bjSNKlr5DbYyMvvtLyal2/9dZrMrcjAxTfuEDGoeTE2E6XyBuVFo+FUe+oGizLf8ToUAWkP1Y2jhGM9mV+FE6jLfLtz/n6AvxewT3xrW+iYyJc4YqJbQdvZldzcIsnl+wOVCXM/S4c9JcZ7y2
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM5PR12MB1947.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(4636009)(396003)(346002)(376002)(39860400002)(136003)(366004)(31696002)(5660300002)(66556008)(66476007)(31686004)(38100700002)(86362001)(921005)(83380400001)(2616005)(186003)(53546011)(6506007)(6486002)(6512007)(41300700001)(478600001)(8936002)(36756003)(66946007)(316002)(44832011)(8676002)(2906002)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?RlloTjgrS25NRnNOOVFDMWdtUjM5SG1PS1A2L2w0WWN0UHVpVlVDKzlIZWZz?=
 =?utf-8?B?UGlrWXlWWGlUbnhpSGhuMU1YQ0paV1pVYXNQUkluWDJNUEk5elFYT2tZNG9E?=
 =?utf-8?B?RlNxQjlOVlIyNTBReDZCS1lYb05HcHBEbjl1UFZTZFFqYWJENlRiMEZvVGp3?=
 =?utf-8?B?MkU4MkRCUHR1aWw0aCtteXNvS1VLMXIvVXArZVFicHJMNTRhYTYvdTZOSkda?=
 =?utf-8?B?YWxZWktJR3Z1NTJSeDBPMVBUNXptUFJDY1BzVzVkYVdFUG0wRE5xRHdCb3F2?=
 =?utf-8?B?TUVvbkljZ3d3cE9iRzkrSGwrNGhvYksrQnpMTFVJYW4zMlJQbDFucys2N2hX?=
 =?utf-8?B?UEIxOVVEc0NDSlF6WFZmVEh0MnJidXRHSnh3UVNOVTd6Vms1YmVVZnp3NEVF?=
 =?utf-8?B?U1lZQ1MyQklicDFWLzdFK2k1bTJEZUtVbFlxQWtVcmdMRGtzODM2eWtvVFZ2?=
 =?utf-8?B?blkzSXVvTVo4bVBCOU9paUV5SDlabFJCOGNGT2RFNXFMa3V0TUsyTE16MDRl?=
 =?utf-8?B?WTh3RUR5RFVPMXZsZ0JXelgxOGVUQmhGZW1DbUROYW5HcEgrRVFmVzV5SHA1?=
 =?utf-8?B?T0V1RmpzTVNhV253d1R5QU43QkRHTUsvNitCTDltSTVmUExQU3NyN0NjZ0tJ?=
 =?utf-8?B?QWpOQlVhODRkMmNheXBQSGpWajk5TisreGl0ZGNKWVBIa0c0bnhLQzFzdkhz?=
 =?utf-8?B?WXEydlR1VzBTWFBndFluRkg3TkVIcFZscStsQ09CMDlzdElQTlBIS0hISys2?=
 =?utf-8?B?ZjVJRHkvdlNVU0R4NjNlY1UwZVlTRCt3UlU0YlIrNkdxbmNVYStmc0c5dnFR?=
 =?utf-8?B?QytHY3VicWFqUjVXa3NNZ3RPV1RVUlFQaXU2TFZEUTN2VFY3RkxlWjVJOHN4?=
 =?utf-8?B?byt0Q2FsbW5GQVNsQlJKdC9VRm10bjg2NWo4V0tYTEswR2EvUkFVNlRLaWdY?=
 =?utf-8?B?RHpJNU5qZVF3WWNVb0tDRFNmV00yUEtRb3psYzRrRDE5Y3UzN1J1Ry91SkRL?=
 =?utf-8?B?OUZVQXlRSVJvd0x6dDhDSE9hTGdlNlgrZkx0cVM4K3psSmdCc3hhb3hkcHM4?=
 =?utf-8?B?RlVTTTRyZjh5TU1tcUh4U1hRbWRMOXhrSW1mV2lmRzYzdnUrZ3d3b2Z4anAr?=
 =?utf-8?B?NE1CbXhTaXFDTERnSG9yUUVuVzRmTC9SdFovUWNTeHZQNXQrSFQ0R0NVS3hn?=
 =?utf-8?B?aFRTMUVtK0svQzkyKzh6WHRhYmZMMnVQTUVPUy9lT0lWMjBvRDM4bFMyRTJ5?=
 =?utf-8?B?WlRyVVFvd21KVzhSc2N6bHNnelA1c2lYM3dFTDMvTHlIb0VUb3U1TzVGODkx?=
 =?utf-8?B?TE1JODNtL0lFNGlsWEFJZE1jUk9uMEloZi92M3dqayt2MEc3aE8vaVJ6WmRX?=
 =?utf-8?B?WjZvYW1IeFhXdVMvUFQrRGRZZHZFU0dWS2p2dDVzR0NENm9CcndHdlpPNHBh?=
 =?utf-8?B?Y29HdkF0SlNZZEZ2U3VPcExBOExDMHlzV0NqdnlNNTBjYzErVVc2Q3J1NU84?=
 =?utf-8?B?OXQ5aDhKaFVveG5IaHpYZ1gvUE1CQnp1TjE4SVF6Z1UvNjk0Q0dxVkZaMmJD?=
 =?utf-8?B?RmlhMkpaeFBNOHAzdnlJT3hhYzZ0YTBYSnZ5WE5MNG1nU043TkR5YWxzSzRu?=
 =?utf-8?B?eEszMGJrWnZ0LzFhRmEyTHNUUTNscFF2VWl3SW0wY2w2cVVVS3lLNlV3Y1px?=
 =?utf-8?B?SlhhaUkrK0pudzNkZ2d0c09lVVdIdTVkU3NYbDFzQTRpcStLckdSVnVCaFRM?=
 =?utf-8?B?Q05FWGxxWHFVMVF6WkpiVzRObjZwL1BaQUkvQTJtMVIzUEZLcklsYVBQN2t0?=
 =?utf-8?B?bzVLUEtucDJOQmJSSEoySEFaTWo5bUN3YUdHUG5CNExnU2pnRGNUbHRXaXdw?=
 =?utf-8?B?WmpJcTVyYjgwUWdXeFc5UEFlS3pUMU43NWtIVm42TDRDSnpUeGQ1M1dLMms4?=
 =?utf-8?B?eWZGZUlZbGI5OFJHOTZReDhtVVJCbHFJQ3E2bTJFOTVEQjdNcGlNOGVyempk?=
 =?utf-8?B?Umk4bm0rWHFkWEIxazVIUjlnY1pCNE4xU1lPaUhpaXNoY2pXZjI5Z0gxRld4?=
 =?utf-8?B?QmFQUm9ycVN0REZyZ09odmw0SnRrd09wWEZVeHNPNzJLVHljaVJRcGRwMDJZ?=
 =?utf-8?B?NDQzRStzT1lPMWFINml0NnhHRzVnQ2JQb2FDeW9OUEdIT3h0Z3JFWkpBVnBY?=
 =?utf-8?Q?zxM8cj5PvJIsB/SR41H+d9lPkJhn7kB0cwK4oPtTnjXR?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 61905350-805d-4f56-bc69-08da92895398
X-MS-Exchange-CrossTenant-AuthSource: DM5PR12MB1947.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Sep 2022 17:32:53.8602
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: yeeEc/KHxXSBua6SMtPfnOxbHCV0fD5uldYIKQopCHpASCsQgiBPv38a1EubwXtMAg8dGFNHwnuTGb5y0a/5xg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR12MB4375
X-MailFrom: Andrey.Grodzovsky@amd.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: NZ3FI5FW6KUWQYFJU44UQKA77EX6YIOV
X-Message-ID-Hash: NZ3FI5FW6KUWQYFJU44UQKA77EX6YIOV
X-Mailman-Approved-At: Wed, 19 Oct 2022 11:38:20 +0000
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 5/6] drm/sched: Use parent fence instead of finished
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/NZ3FI5FW6KUWQYFJU44UQKA77EX6YIOV/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

V2hhdCBleGFjdGx5IGlzIHRoZSBzY2VuYXJpbyB3aGljaCB0aGlzIHBhdGNoIGZpeGVzIGluIG1v
cmUgZGV0YWlsIHBsZWFzZcKgID8NCg0KQW5kcmV5DQoNCk9uIDIwMjItMDktMDkgMTM6MDgsIEFy
dmluZCBZYWRhdiB3cm90ZToNCj4gVXNpbmcgdGhlIHBhcmVudCBmZW5jZSBpbnN0ZWFkIG9mIHRo
ZSBmaW5pc2hlZCBmZW5jZQ0KPiB0byBnZXQgdGhlIGpvYiBzdGF0dXMuIFRoaXMgY2hhbmdlIGlz
IHRvIGF2b2lkIEdQVQ0KPiBzY2hlZHVsZXIgdGltZW91dCBlcnJvciB3aGljaCBjYW4gY2F1c2Ug
R1BVIHJlc2V0Lg0KPg0KPiBTaWduZWQtb2ZmLWJ5OiBBcnZpbmQgWWFkYXYgPEFydmluZC5ZYWRh
dkBhbWQuY29tPg0KPiAtLS0NCj4NCj4gY2hhbmdlcyBpbiB2MSx2MiAtIEVuYWJsZSBzaWduYWxp
bmcgZm9yIGZpbmlzaGVkIGZlbmNlIGluIHNjaGVfbWFpbigpDQo+IGlzIHJlbW92ZWQNCj4NCj4g
LS0tDQo+ICAgZHJpdmVycy9ncHUvZHJtL3NjaGVkdWxlci9zY2hlZF9tYWluLmMgfCA0ICsrLS0N
Cj4gICAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQ0KPg0K
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3NjaGVkdWxlci9zY2hlZF9tYWluLmMgYi9k
cml2ZXJzL2dwdS9kcm0vc2NoZWR1bGVyL3NjaGVkX21haW4uYw0KPiBpbmRleCBlMGFiMTRlMGZi
NmIuLjJhYzI4YWQxMTQzMiAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL3NjaGVkdWxl
ci9zY2hlZF9tYWluLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL3NjaGVkdWxlci9zY2hlZF9t
YWluLmMNCj4gQEAgLTgyOSw3ICs4MjksNyBAQCBkcm1fc2NoZWRfZ2V0X2NsZWFudXBfam9iKHN0
cnVjdCBkcm1fZ3B1X3NjaGVkdWxlciAqc2NoZWQpDQo+ICAgCWpvYiA9IGxpc3RfZmlyc3RfZW50
cnlfb3JfbnVsbCgmc2NoZWQtPnBlbmRpbmdfbGlzdCwNCj4gICAJCQkJICAgICAgIHN0cnVjdCBk
cm1fc2NoZWRfam9iLCBsaXN0KTsNCj4gICANCj4gLQlpZiAoam9iICYmIGRtYV9mZW5jZV9pc19z
aWduYWxlZCgmam9iLT5zX2ZlbmNlLT5maW5pc2hlZCkpIHsNCj4gKwlpZiAoam9iICYmIGRtYV9m
ZW5jZV9pc19zaWduYWxlZChqb2ItPnNfZmVuY2UtPnBhcmVudCkpIHsNCj4gICAJCS8qIHJlbW92
ZSBqb2IgZnJvbSBwZW5kaW5nX2xpc3QgKi8NCj4gICAJCWxpc3RfZGVsX2luaXQoJmpvYi0+bGlz
dCk7DQo+ICAgDQo+IEBAIC04NDEsNyArODQxLDcgQEAgZHJtX3NjaGVkX2dldF9jbGVhbnVwX2pv
YihzdHJ1Y3QgZHJtX2dwdV9zY2hlZHVsZXIgKnNjaGVkKQ0KPiAgIA0KPiAgIAkJaWYgKG5leHQp
IHsNCj4gICAJCQluZXh0LT5zX2ZlbmNlLT5zY2hlZHVsZWQudGltZXN0YW1wID0NCj4gLQkJCQlq
b2ItPnNfZmVuY2UtPmZpbmlzaGVkLnRpbWVzdGFtcDsNCj4gKwkJCQlqb2ItPnNfZmVuY2UtPnBh
cmVudC0+dGltZXN0YW1wOw0KPiAgIAkJCS8qIHN0YXJ0IFRPIHRpbWVyIGZvciBuZXh0IGpvYiAq
Lw0KPiAgIAkJCWRybV9zY2hlZF9zdGFydF90aW1lb3V0KHNjaGVkKTsNCj4gICAJCX0NCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcg
bWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNj
cmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9y
Zwo=
