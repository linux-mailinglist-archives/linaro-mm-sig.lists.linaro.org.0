Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 82FC981331
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  5 Aug 2019 09:32:04 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 427FE60ECF
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  5 Aug 2019 07:32:03 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 33A7761786; Mon,  5 Aug 2019 07:32:03 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	ip-10-150-125-211.ec2.internal
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,SPF_HELO_PASS autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4D2896176E;
	Mon,  5 Aug 2019 07:31:32 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 08F8960813
 for <linaro-mm-sig@lists.linaro.org>; Mon,  5 Aug 2019 07:31:30 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id E30B06176E; Mon,  5 Aug 2019 07:31:29 +0000 (UTC)
Received: from NAM03-CO1-obe.outbound.protection.outlook.com
 (mail-eopbgr790055.outbound.protection.outlook.com [40.107.79.55])
 by lists.linaro.org (Postfix) with ESMTPS id EC57E60813
 for <linaro-mm-sig@lists.linaro.org>; Mon,  5 Aug 2019 07:31:27 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NYC20YxpEYPumv1uOr/qyrD7EjHb/a6ha9hYq0vDyhAcEcACrQBrzP7RlSUatVipitlt44HNe9+1uFx8B2af2f/Gn6q5YK+mS6zktVDVSbknDXIpg2Bd2nteEO3sjnndSim9DaIODYgz3WLr98WjU4BMbYIt+Gnne53S7qgTOUZAUCkhZ80sdvmRuRrxxh2Ybtj66QJtTsvh4+5N1ab38fLa4+Auo/zNPDfd49tHveNfH6mOuAUA1rjkuSepm8Cnn0T8Hn1iw35ANtkF4mcgZJyNuK545Jg6TeDjCOvi8SUfwmxKVbtohjSBU70Au2ubMxYYioPwDGX436Y/Mrgd0g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=szHfvlcDWLsDOKTgGWyySV51zsdOnfrptt7WM36Y+oE=;
 b=kgiATxT+q8tNIuAMt0J4Ox8ZTF7JlwCtZgvHqyH5VZxTNcrF5M+m4qlQcBv64+683kK4Y0mMYzxbFq4zKEqvSC1M8jjKHRSS2nN7WqAOgYY6fg5oNvHUPJ9ZU9lPHmfEqOSYcHAk3u1/f5FFJvJIZjiJ8zXFhxidkOe/m3gvumK+HbS+hsZI1oO9IdBkirgrcvvTBr+GjfXp2QWqKmWvwmBLG2vaMDJ9VMwz0qaLBFPg0d/BgvxGGXlTRSYPZs+6ipx9sTZTzpblJSB84ZLivsoCfBY6axTn+pwOoO1O3EB6XesYFEli9OGy9iw8UMbcx64EN+7fg6gJTnI9CtO3kg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=amd.com;dmarc=pass action=none header.from=amd.com;dkim=pass
 header.d=amd.com;arc=none
Received: from DM5PR12MB1546.namprd12.prod.outlook.com (10.172.36.23) by
 DM5PR12MB1660.namprd12.prod.outlook.com (10.172.36.150) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2136.19; Mon, 5 Aug 2019 07:31:22 +0000
Received: from DM5PR12MB1546.namprd12.prod.outlook.com
 ([fe80::fc5f:ce01:e8c8:db89]) by DM5PR12MB1546.namprd12.prod.outlook.com
 ([fe80::fc5f:ce01:e8c8:db89%12]) with mapi id 15.20.2136.018; Mon, 5 Aug 2019
 07:31:22 +0000
From: "Koenig, Christian" <Christian.Koenig@amd.com>
To: Chris Wilson <chris@chris-wilson.co.uk>,
 =?utf-8?B?Q2hyaXN0aWFuIEvDtm5pZw==?= <ckoenig.leichtzumerken@gmail.com>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "linaro-mm-sig@lists.linaro.org" <linaro-mm-sig@lists.linaro.org>,
 "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>,
 "sumit.semwal@linaro.org" <sumit.semwal@linaro.org>
Thread-Topic: [PATCH] dma-buf: add more reservation object locking wrappers
Thread-Index: AQHVR6gGr7MN05AABkG1OwQATicrpabsMDcA
Date: Mon, 5 Aug 2019 07:31:22 +0000
Message-ID: <f2b6c926-0df9-fac7-d099-acbb84662ce8@amd.com>
References: <20190731113853.51779-1-christian.koenig@amd.com>
 <156457641010.6373.7515721920178088211@skylake-alporthouse-com>
 <6421ea80-2bdd-7f63-1cba-9c57157f3946@gmail.com>
 <156458148806.15787.4157473890441039515@skylake-alporthouse-com>
In-Reply-To: <156458148806.15787.4157473890441039515@skylake-alporthouse-com>
Accept-Language: de-DE, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
x-originating-ip: [2a02:908:1252:fb60:be8a:bd56:1f94:86e7]
x-clientproxiedby: PR0P264CA0157.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:100:1b::25) To DM5PR12MB1546.namprd12.prod.outlook.com
 (2603:10b6:4:8::23)
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 6e0befea-1863-4854-2f8c-08d71976ea37
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:DM5PR12MB1660; 
x-ms-traffictypediagnostic: DM5PR12MB1660:
x-microsoft-antispam-prvs: <DM5PR12MB166062618D6D39CF7072A32283DA0@DM5PR12MB1660.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 01208B1E18
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(39850400004)(136003)(346002)(376002)(396003)(366004)(189003)(199004)(2616005)(11346002)(6506007)(5660300002)(476003)(53936002)(486006)(110136005)(46003)(76176011)(446003)(52116002)(99286004)(58126008)(8676002)(229853002)(316002)(6246003)(36756003)(68736007)(65806001)(65956001)(6436002)(31686004)(6512007)(7736002)(305945005)(65826007)(8936002)(81166006)(2201001)(6486002)(2501003)(25786009)(66446008)(64756008)(66556008)(66476007)(71190400001)(478600001)(71200400001)(31696002)(6116002)(256004)(64126003)(81156014)(86362001)(66946007)(102836004)(2906002)(386003)(14454004)(186003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM5PR12MB1660;
 H:DM5PR12MB1546.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: amd.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 61BVPPYyQ7VaYJ6uqJ4YIxX5wgmUn2Vr+uMPJt0qNL0bI71bj6jtpUMExWci/sEC4SUyZiAY+KQw+yx7PCtAqQ3khWyFv03+w6JrXTKR7vHQr0T/WYm/DMtB7UfYghGzflMGwqKUuC7gMBgNJu+9uilQOp+BuZ4vEkYGQOYUk4AgayTx4LVRA/dmFXNt2iiC7VmljGCjZrFBDa4UAA0xFHRlZZ0RwV60jzWLgGGEFJuvuqNxayOap4vIi/RdoQWMH4TyyFJkuOrHONA8zjg25/NjKv9xKhDxGgzGeJKqJOeqsZyov4SGzDAKuB3IlyYfRvOCkV+0qPuWVhnnEfn652I6chZiyPj40ZaVdtC2CT38MzifpPFLqT24X0/FgXSi/1LiCgiLE7XX434qf2/0psb/5j3zMDOROrqWunnA90I=
Content-ID: <BC698184876B324EB2B7927B2A8337B5@namprd12.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6e0befea-1863-4854-2f8c-08d71976ea37
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Aug 2019 07:31:22.4744 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ckoenig@amd.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR12MB1660
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH] dma-buf: add more reservation object
	locking wrappers
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

QW0gMzEuMDcuMTkgdW0gMTU6NTggc2NocmllYiBDaHJpcyBXaWxzb246DQo+IFF1b3RpbmcgQ2hy
aXN0aWFuIEvDtm5pZyAoMjAxOS0wNy0zMSAxNDozNDoyOCkNCj4+IEFtIDMxLjA3LjE5IHVtIDE0
OjMzIHNjaHJpZWIgQ2hyaXMgV2lsc29uOg0KPj4+IFF1b3RpbmcgQ2hyaXN0aWFuIEvDtm5pZyAo
MjAxOS0wNy0zMSAxMjozODo1MykNCj4+Pj4gQ29tcGxldGUgdGhlIGFic3RyYWN0aW9uIG9mIHRo
ZSB3d19tdXRleCBpbnNpZGUgdGhlIHJlc2VydmF0aW9uIG9iamVjdC4NCj4+Pj4NCj4+Pj4gVGhp
cyBhbGxvd3MgdXMgdG8gYWRkIG1vcmUgaGFuZGxpbmcgYW5kIGRlYnVnZ2luZyB0byB0aGUgcmVz
ZXJ2YXRpb24NCj4+Pj4gb2JqZWN0IGluIHRoZSBmdXR1cmUuDQo+Pj4+DQo+Pj4+IFNpZ25lZC1v
ZmYtYnk6IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4NCj4+PiBM
b29rcyBlbnRpcmVseSBtZWNoYW5pY2FsLA0KPj4+IFJldmlld2VkLWJ5OiBDaHJpcyBXaWxzb24g
PGNocmlzQGNocmlzLXdpbHNvbi5jby51az4NCj4+Pg0KPj4+IFF1aWV0bHkgb3BpbmVzIGZvciBz
L3Jlc2VydmF0aW9uX29iamVjdC9kbWFfcmVzZXJ2YXRpb24vDQo+PiBJIHdhcyB0aGlua2luZyBh
Ym91dCB0aGF0IGFzIHdlbGwgYmVjYXVzZSAicmVzZXJ2YXRpb25fb2JqZWN0IiBpcyBqdXN0IGEN
Cj4+IHJhdGhlciBsb25nIG5hbWUgYW5kIG5vdCB2ZXJ5IGRlc2NyaXB0aXZlLg0KPj4NCj4+IEJ1
dCBJJ20gbm90IHN1cmUgaWYgZG1hX3Jlc2VydmF0aW9uIGZpdHMgZWl0aGVyLiBIb3cgYWJvdXQg
c29tZXRoaW5nDQo+PiBsaWtlIGRtYV9jbnRybD8NCj4gUmVzZXJ2YXRpb24ga2luZCBvZiB3b3Jr
cyBiZWNhdXNlIG9mIGhpc3RvcmljYWwgdXNhZ2UsIGJ1dCBpcyBpdHNlbGYNCj4gcmF0aGVyIGxv
bmcuIENvbnRyb2wgZG9lc24ndCBtZWFuIG11Y2ggdG8gbWUuIGRtYV9zZXF1ZW5jZT8gTWF5YmUg
anVzdA0KPiBkbWFfc3luY3B0LCBhcyB0aGUgc25hcHNob3Qgb2YgZmVuY2VzIGlzIGl0c2VsZiBh
IGZlbmNlIC8NCj4gc3luY2hyb25pc2F0aW9uIHBvaW50LiBUaG91Z2ggdGhhdCBpcyBhdCBvZGRz
IHdpdGggb3RoZXIgdXNhZ2Ugb2YNCj4gc3luY3B0LCB3ZSBoYXZlIGFuIHVub3JkZXJlZCBjb2xs
ZWN0aW9uIG9mIGZlbmNlcyBhY3Jvc3MgbXVsdGlwbGUNCj4gdGltZWxpbmVzLCBhcyBvcHBvc2Vk
IHRvIGEgc2luZ2xlIHBvaW50IGFsb25nIGEgdGltZWxpbmUuDQo+DQo+IEZ3aXcsIHdlIHVzZSBp
OTE1X2FjdGl2ZSBmb3IgdGhlIHNpbWlsYXIgcHVycG9zZSBvZiB0cmFja2luZyB0aGUgYWN0aXZl
DQo+IGNvbGxlY3Rpb24gb2YgZmVuY2VzLCBzbyBtYXliZSBkbWFfYWN0aXZlPw0KDQpJbiBhbWRn
cHUgd2UgaGF2ZSBhbWRncHVfc3luYyBmb3IgdGhhdCwgYnV0IHRoYXQgaXNuJ3QgbXVjaCBkZXNj
cmlwdGl2ZSANCmVpdGhlci4NCg0KT2ssIGxldCdzIHN0aWNrIHdpdGggZG1hX3Jlc2VydmF0aW9u
IGZvciBub3cgdW5sZXNzIHNvbWVib2R5IGhhcyBhIA0KYmV0dGVyIGlkZWEuDQoNCkNocmlzdGlh
bi4NCg0KPiAtQ2hyaXMNCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5s
aW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFy
by1tbS1zaWcK
