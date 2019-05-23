Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 2421927BA3
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 23 May 2019 13:21:48 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 47693609D6
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 23 May 2019 11:21:47 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 3329961086; Thu, 23 May 2019 11:21:47 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	ip-10-150-125-211.ec2.internal
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,SPF_HELO_PASS autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A610260F5B;
	Thu, 23 May 2019 11:21:17 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 81B2160908
 for <linaro-mm-sig@lists.linaro.org>; Thu, 23 May 2019 11:21:15 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 70FFC60F5B; Thu, 23 May 2019 11:21:15 +0000 (UTC)
Received: from NAM04-CO1-obe.outbound.protection.outlook.com
 (mail-eopbgr690073.outbound.protection.outlook.com [40.107.69.73])
 by lists.linaro.org (Postfix) with ESMTPS id 1B77B60908
 for <linaro-mm-sig@lists.linaro.org>; Thu, 23 May 2019 11:21:14 +0000 (UTC)
Received: from DM5PR12MB1546.namprd12.prod.outlook.com (10.172.36.23) by
 DM5PR12MB1402.namprd12.prod.outlook.com (10.168.236.140) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1900.19; Thu, 23 May 2019 11:21:10 +0000
Received: from DM5PR12MB1546.namprd12.prod.outlook.com
 ([fe80::e1b1:5b6f:b2df:afa5]) by DM5PR12MB1546.namprd12.prod.outlook.com
 ([fe80::e1b1:5b6f:b2df:afa5%7]) with mapi id 15.20.1922.018; Thu, 23 May 2019
 11:21:10 +0000
From: "Koenig, Christian" <Christian.Koenig@amd.com>
To: Daniel Vetter <daniel@ffwll.ch>
Thread-Topic: [PATCH 01/12] dma-buf: add dynamic caching of sg_table
Thread-Index: AQHVEMyJP5maGBYcQkWyKdEVjdF6oqZ4kZwA
Date: Thu, 23 May 2019 11:21:10 +0000
Message-ID: <cbb1f3a1-6cd1-c231-f1b2-8f20a6bad067@amd.com>
References: <20190416183841.1577-1-christian.koenig@amd.com>
 <1556323269-19670-1-git-send-email-lmark@codeaurora.org>
 <CAO_48GGanguXbmYDD+p1kK_VkiWdZSTYAD1y-0JQK7hqL_OPPg@mail.gmail.com>
 <d7fb2a6b-f516-b506-247d-0f3d4d59ec8e@gmail.com>
 <CAKMK7uEaeVW0EMtCUeH+WeUmFnovEySz3kebRUcybLeySb4GSA@mail.gmail.com>
In-Reply-To: <CAKMK7uEaeVW0EMtCUeH+WeUmFnovEySz3kebRUcybLeySb4GSA@mail.gmail.com>
Accept-Language: de-DE, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
x-originating-ip: [2a02:908:1252:fb60:be8a:bd56:1f94:86e7]
x-clientproxiedby: AM6P193CA0081.EURP193.PROD.OUTLOOK.COM
 (2603:10a6:209:88::22) To DM5PR12MB1546.namprd12.prod.outlook.com
 (2603:10b6:4:8::23)
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 2c916d8f-9a39-4ced-beec-08d6df70c218
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:DM5PR12MB1402; 
x-ms-traffictypediagnostic: DM5PR12MB1402:
x-microsoft-antispam-prvs: <DM5PR12MB14026F92EFED86C289B0896683010@DM5PR12MB1402.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 00462943DE
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(346002)(396003)(366004)(136003)(39860400002)(376002)(199004)(189003)(64756008)(66556008)(66946007)(73956011)(8676002)(305945005)(2906002)(486006)(66446008)(7736002)(66476007)(229853002)(52116002)(6486002)(25786009)(186003)(71200400001)(99286004)(8936002)(46003)(2616005)(68736007)(476003)(446003)(11346002)(14444005)(256004)(6116002)(31696002)(71190400001)(5024004)(86362001)(81156014)(81166006)(5660300002)(64126003)(36756003)(72206003)(6246003)(53936002)(14454004)(478600001)(102836004)(6512007)(6436002)(316002)(6916009)(31686004)(58126008)(54906003)(6506007)(386003)(65826007)(76176011)(4326008)(65806001)(65956001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM5PR12MB1402;
 H:DM5PR12MB1546.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: amd.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 1QgghXmHlzduNwD3J1hA+JP2nvnp8mU3IC7AGYgDwJk1V2VHNOTTCwrCEGp2W4qjgkG8IwJ1vq7PjqYlxt5w6IUGtPVIbCqK3q6c2U72sEALhdZA83LXiCnLsQFdLXwSEgLSVIzv0uKx/XYcK7Cy2nBXP9+5oJ7Ft4u6zsNWa0LUreVKki5affKjgLyMoEIIiVDDdzv2LtunGlCn8kzQTTcGqilcAGqLHDX/92FjZ1+vPMPIFkmMruASJWNM8Tm4YQx2vfuBsNZxJP729XiHJwVXIBFrN3rkioqf1vjVcm4iDA4kMKXUU5CSJQ2THL81IrRgEguyIGsSvApA2ovyIx1mLHD75mVzCR2xjPP8O2vZ/ys4/YifK/ccfH5ki+Let4P92pt3mLyo+oCHMw3cxUd1/7Qhh8oGt4pAi+MbhoY=
Content-ID: <CD6A67A23EF5314086ED4E6CF6ACE72E@namprd12.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2c916d8f-9a39-4ced-beec-08d6df70c218
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 May 2019 11:21:10.7498 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR12MB1402
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Liam Mark <lmark@codeaurora.org>, LKML <linux-kernel@vger.kernel.org>,
 DRI mailing list <dri-devel@lists.freedesktop.org>,
 Linaro MM SIG <linaro-mm-sig@lists.linaro.org>,
 amd-gfx list <amd-gfx@lists.freedesktop.org>, "open list:DMA BUFFER SHARING
 FRAMEWORK" <linux-media@vger.kernel.org>
Subject: Re: [Linaro-mm-sig] [PATCH 01/12] dma-buf: add dynamic caching of
	sg_table
X-BeenThere: linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 2.1.16
Precedence: list
List-Id: "Unified memory management interest group."
 <linaro-mm-sig.lists.linaro.org>
List-Unsubscribe: <https://lists.linaro.org/mailman/options/linaro-mm-sig>,
 <mailto:linaro-mm-sig-request@lists.linaro.org?subject=unsubscribe>
List-Archive: <http://lists.linaro.org/pipermail/linaro-mm-sig/>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Subscribe: <https://lists.linaro.org/mailman/listinfo/linaro-mm-sig>,
 <mailto:linaro-mm-sig-request@lists.linaro.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

QW0gMjIuMDUuMTkgdW0gMjA6MzAgc2NocmllYiBEYW5pZWwgVmV0dGVyOg0KPiBbU05JUF0NCj4+
IFdlbGwsIGl0IHNlZW1zIHlvdSBhcmUgbWFraW5nIGluY29ycmVjdCBhc3N1bXB0aW9ucyBhYm91
dCB0aGUgY2FjaGUNCj4+IG1haW50ZW5hbmNlIG9mIERNQS1idWYgaGVyZS4NCj4+DQo+PiBBdCBs
ZWFzdCBmb3IgYWxsIERSTSBkZXZpY2VzIEknbSBhd2FyZSBvZiBtYXBwaW5nL3VubWFwcGluZyBh
bg0KPj4gYXR0YWNobWVudCBkb2VzICpOT1QqIGhhdmUgYW55IGNhY2hlIG1haW50ZW5hbmNlIGlt
cGxpY2F0aW9ucy4NCj4+DQo+PiBFLmcuIHRoZSB1c2UgY2FzZSB5b3UgZGVzY3JpYmUgYWJvdmUg
d291bGQgY2VydGFpbmx5IGZhaWwgd2l0aCBhbWRncHUsDQo+PiByYWRlb24sIG5vdXZlYXUgYW5k
IGk5MTUgYmVjYXVzZSBtYXBwaW5nIGEgRE1BLWJ1ZiBkb2Vzbid0IHN0b3AgdGhlDQo+PiBleHBv
cnRlciBmcm9tIHJlYWRpbmcvd3JpdGluZyB0byB0aGF0IGJ1ZmZlciAoanVzdCB0aGUgb3Bwb3Np
dGUgYWN0dWFsbHkpLg0KPj4NCj4+IEFsbCBvZiB0aGVtIGFzc3VtZSBwZXJmZWN0bHkgY29oZXJl
bnQgYWNjZXNzIHRvIHRoZSB1bmRlcmx5aW5nIG1lbW9yeS4NCj4+IEFzIGZhciBhcyBJIGtub3cg
dGhlcmUgaXMgbm8gZG9jdW1lbnRlZCBjYWNoZSBtYWludGVuYW5jZSByZXF1aXJlbWVudHMNCj4+
IGZvciBETUEtYnVmLg0KPiBJIHRoaW5rIGl0IGlzIGRvY3VtZW50ZWQuIEl0J3MganVzdCB0aGF0
IG9uIHg4Niwgd2UgaWdub3JlIHRoYXQNCj4gYmVjYXVzZSB0aGUgZG1hLWFwaSBwcmV0ZW5kcyB0
aGVyZSdzIG5ldmVyIGEgbmVlZCBmb3IgY2FjaGUgZmx1c2hpbmcNCj4gb24geDg2LCBhbmQgdGhh
dCBldmVyeXRoaW5nIHNub29wcyB0aGUgY3B1IGNhY2hlcy4gV2hpY2ggaXNuJ3QgdHJ1ZQ0KPiBz
aW5jZSBvdmVyIDIwIGFnbyB3aGVuIEFHUCBoYXBwZW5lZC4gVGhlIGFjdHVhbCBydWxlcyBmb3Ig
eDg2IGRtYS1idWYNCj4gYXJlIHZlcnkgbXVjaCBhZC1ob2MgKGFuZCB3ZSBvY2Nhc2lvbmFsbHkg
cmVhcHBseSBzb21lIGR1Y3QtdGFwZSB3aGVuDQo+IGNhY2hlbGluZSBub2lzZSBzaG93cyB1cCBz
b21ld2hlcmUpLg0KDQpXZWxsIEkgc3Ryb25nbHkgZGlzYWdyZWUgb24gdGhpcy4gRXZlbiBvbiB4
ODYgYXQgbGVhc3QgQU1EIEdQVXMgYXJlIGFsc28gDQpub3QgZnVsbHkgY29oZXJlbnQuDQoNCkZv
ciBleGFtcGxlIHlvdSBoYXZlIHRoZSB0ZXh0dXJlIGNhY2hlIGFuZCB0aGUgSERQIHJlYWQvd3Jp
dGUgY2FjaGUuIFNvIA0Kd2hlbiBib3RoIGFtZGdwdSBhcyB3ZWxsIGFzIGk5MTUgd291bGQgd3Jp
dGUgdG8gdGhlIHNhbWUgYnVmZmVyIGF0IHRoZSANCnNhbWUgdGltZSB3ZSB3b3VsZCBnZXQgYSBj
b3JydXB0ZWQgZGF0YSBhcyB3ZWxsLg0KDQpUaGUga2V5IHBvaW50IGlzIHRoYXQgaXQgaXMgTk9U
IERNQS1idWYgaW4gaXQncyBtYXAvdW5tYXAgY2FsbCB3aG8gaXMgDQpkZWZpbmluZyB0aGUgY29o
ZXJlbmN5LCBidXQgcmF0aGVyIHRoZSByZXNlcnZhdGlvbiBvYmplY3QgYW5kIGl0cyANCmF0dGFj
aGVkIGRtYV9mZW5jZSBpbnN0YW5jZXMuDQoNClNvIGZvciBleGFtcGxlIGFzIGxvbmcgYXMgYSBl
eGNsdXNpdmUgcmVzZXJ2YXRpb24gb2JqZWN0IGZlbmNlIGlzIHN0aWxsIA0Kbm90IHNpZ25hbGVk
IEkgY2FuJ3QgYXNzdW1lIHRoYXQgYWxsIGNhY2hlcyBhcmUgZmx1c2hlZCBhbmQgc28gY2FuJ3Qg
DQpzdGFydCB3aXRoIG15IG93biBvcGVyYXRpb24vYWNjZXNzIHRvIHRoZSBkYXRhIGluIHF1ZXN0
aW9uLg0KDQpSZWdhcmRzLA0KQ2hyaXN0aWFuLg0KDQo+DQo+IEkndmUganVzdCBmaWxlZCB0aGlz
IGF3YXkgYXMgYW5vdGhlciBpbnN0YW5jZSBvZiB0aGUgZG1hLWFwaSBub3QNCj4gZml0dGluZyBn
cHVzLCBhbmQgSSB0aGluayBnaXZpbmcgcmVjZW50IGRpc2N1c3Npb25zIHRoYXQgd29uJ3QgaW1w
cm92ZQ0KPiBhbnl0aW1lIHNvb24uIFNvIHdlJ3JlIHN0dWNrIHdpdGggZXNzZW50aWFsbHkgdW5k
ZWZpbmVkIGRtYS1idWYNCj4gYmVoYXZpb3VyLg0KPiAtRGFuaWVsDQo+DQoNCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGlu
ZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFy
by5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==
