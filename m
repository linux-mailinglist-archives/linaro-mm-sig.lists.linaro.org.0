Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C9F041EEB
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 12 Jun 2019 10:21:16 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3B0F360D8D
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 12 Jun 2019 08:21:15 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 2CC7260F10; Wed, 12 Jun 2019 08:21:15 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	ip-10-150-125-211.ec2.internal
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_PASS autolearn=disabled
	version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 44ECB60E8C;
	Wed, 12 Jun 2019 08:20:50 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 6C187609AB
 for <linaro-mm-sig@lists.linaro.org>; Wed, 12 Jun 2019 08:20:48 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 604F760E8C; Wed, 12 Jun 2019 08:20:48 +0000 (UTC)
Received: from NAM01-BN3-obe.outbound.protection.outlook.com
 (mail-eopbgr740042.outbound.protection.outlook.com [40.107.74.42])
 by lists.linaro.org (Postfix) with ESMTPS id 0D317609AB
 for <linaro-mm-sig@lists.linaro.org>; Wed, 12 Jun 2019 08:20:47 +0000 (UTC)
Received: from DM5PR12MB1546.namprd12.prod.outlook.com (10.172.36.23) by
 DM5PR12MB1707.namprd12.prod.outlook.com (10.175.86.21) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1987.11; Wed, 12 Jun 2019 08:20:41 +0000
Received: from DM5PR12MB1546.namprd12.prod.outlook.com
 ([fe80::e1b1:5b6f:b2df:afa5]) by DM5PR12MB1546.namprd12.prod.outlook.com
 ([fe80::e1b1:5b6f:b2df:afa5%7]) with mapi id 15.20.1965.017; Wed, 12 Jun 2019
 08:20:41 +0000
From: "Koenig, Christian" <Christian.Koenig@amd.com>
To: Nicolin Chen <nicoleotsuka@gmail.com>
Thread-Topic: [PATCH] dma-buf: refcount the attachment for cache_sgt_mapping
Thread-Index: AQHVIL1FUykFich2jk+2KmuqNh9/V6aXpCSAgAAEqwCAAAD9AIAAAtUAgAABTIA=
Date: Wed, 12 Jun 2019 08:20:41 +0000
Message-ID: <c5e04bf7-d07e-9e26-df65-d7382d6051ba@amd.com>
References: <20190612012219.21652-1-nicoleotsuka@gmail.com>
 <261b46c7-0c5e-4268-619d-f8381fbc3aeb@amd.com>
 <20190612080214.GA8876@Asurada>
 <170c3828-115b-38e5-35fc-1b88c08c492a@amd.com>
 <20190612081554.GB8876@Asurada>
In-Reply-To: <20190612081554.GB8876@Asurada>
Accept-Language: de-DE, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
x-originating-ip: [2a02:908:1252:fb60:be8a:bd56:1f94:86e7]
x-clientproxiedby: AM6PR03CA0027.eurprd03.prod.outlook.com (2603:10a6:20b::40)
 To DM5PR12MB1546.namprd12.prod.outlook.com
 (2603:10b6:4:8::23)
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 3b6f6909-d3de-44a5-4719-08d6ef0edb64
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:DM5PR12MB1707; 
x-ms-traffictypediagnostic: DM5PR12MB1707:
x-microsoft-antispam-prvs: <DM5PR12MB1707FE39D9A2D26626971C2983EC0@DM5PR12MB1707.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0066D63CE6
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(346002)(376002)(396003)(366004)(136003)(39860400002)(199004)(189003)(65806001)(46003)(102836004)(99286004)(52116002)(76176011)(86362001)(36756003)(186003)(31696002)(386003)(6506007)(5660300002)(31686004)(73956011)(66946007)(64756008)(66446008)(66556008)(66476007)(14454004)(478600001)(72206003)(2906002)(25786009)(4326008)(65956001)(6436002)(6486002)(54906003)(58126008)(316002)(6246003)(6916009)(229853002)(6512007)(65826007)(53936002)(2616005)(5024004)(68736007)(64126003)(1411001)(305945005)(7736002)(71190400001)(71200400001)(6116002)(256004)(81166006)(8936002)(81156014)(8676002)(486006)(476003)(446003)(11346002)(56590200001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM5PR12MB1707;
 H:DM5PR12MB1546.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: amd.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: yfFbgsyRrFnM5pSlBnIW31FHv1WmaBPGQ+crt6XJQxbrP4wzB2qc7iqzqFXLhqAeZ75ZVXz2XzPpspbmVjvex7OuisfZZdVCgv5iXrqVE5kPH1xo96DtjIIkridbRb2pjC6B7xlJdQj9FN9h695KnM1L8zVxQDYp6YRFfsy157AvJhndf0TWomre0xZzr6LhBZKmmWWlEfnOA2E2WK+854yJwSuHqdF/N7t7qOyUaxFbXUwuiELUm6V5V15AWKX/nJl7JgOxpCJv0WQkCcH5WC+UF+d56/FUKKIokEEF6ztUGGQnKZa7d7/KG6k7b0LwJA51BY+6x3O3LyrQSfyTpx4wdg6uhy4bPkCSYB0HwmQoQMesAoEd0gkOhms18j3YpNSFKOanSBrXMT/67bAFNDog71b91NobYDZEOuRpIYE=
Content-ID: <10BD814C49D1534D8785E7E5D7E605A4@namprd12.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3b6f6909-d3de-44a5-4719-08d6ef0edb64
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Jun 2019 08:20:41.2289 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ckoenig@amd.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR12MB1707
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "linaro-mm-sig@lists.linaro.org" <linaro-mm-sig@lists.linaro.org>,
 "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>
Subject: Re: [Linaro-mm-sig] [PATCH] dma-buf: refcount the attachment for
	cache_sgt_mapping
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

QW0gMTIuMDYuMTkgdW0gMTA6MTUgc2NocmllYiBOaWNvbGluIENoZW46DQo+IEhpIENocmlzdGlh
biwNCj4NCj4gT24gV2VkLCBKdW4gMTIsIDIwMTkgYXQgMDg6MDU6NTNBTSArMDAwMCwgS29lbmln
LCBDaHJpc3RpYW4gd3JvdGU6DQo+PiBBbSAxMi4wNi4xOSB1bSAxMDowMiBzY2hyaWViIE5pY29s
aW4gQ2hlbjoNCj4+IFtTTklQXQ0KPj4+IFdlIGhhdmVuJ3QgdXNlZCBEUk0vR1JNX1BSSU1FIHll
dCBidXQgSSBhbSBhbHNvIGN1cmlvdXMgd291bGQgaXQNCj4+PiBiZW5lZml0IERSTSBhbHNvIGlm
IHdlIHJlZHVjZSB0aGlzIG92ZXJoZWFkIGluIHRoZSBkbWFfYnVmPw0KPj4gTm8sIG5vdCBhdCBh
bGwuDQo+ICBGcm9tIHlvdSByZXBsaWVzLCBpbiBhIHN1bW1hcnksIGRvZXMgaXQgbWVhbnMgdGhh
dCB0aGVyZSB3b24ndCBiZSBhIGNhc2UNCj4gb2YgRFJNIGhhdmluZyBhIGRtYV9idWYgYXR0YWNo
aW5nIHRvIHRoZSBzYW1lIGRldmljZSwgaS5lLiBtdWx0aXBsZSBjYWxscw0KPiBvZiBkcm1fZ2Vt
X3ByaW1lX2ltcG9ydCgpIGZ1bmN0aW9uIHdpdGggc2FtZSBwYXJhbWV0ZXJzIG9mIGRldiArIGRt
YV9idWY/DQoNCldlbGwsIHRoZXJlIGFyZSBzb21lIGNhc2VzIHdoZXJlIHRoaXMgaGFwcGVucy4g
QnV0IGluIHRob3NlIGNhc2VzIHdlIA0KaW50ZW50aW9uYWxseSB3YW50IHRvIGdldCBhIG5ldyBh
dHRhY2htZW50IDopDQoNClNvIHRoaW5raW5nIG1vcmUgYWJvdXQgaXQgeW91IHdvdWxkIGFjdHVh
bGx5IGJyZWFrIHRob3NlIGFuZCB0aGF0IGlzIG5vdCANCnNvbWV0aGluZyB3ZSBjYW4gZG8uDQoN
Cj4gSWYgc28sIHdlIGNhbiBqdXN0IGlnbm9yZS9kcm9wIHRoaXMgcGF0Y2guIFNvcnJ5IGZvciB0
aGUgbWlzdW5kZXJzdGFuZGluZy4NCg0KSXQgbWlnaHQgYmUgaW50ZXJlc3RpbmcgZm9yIHRoaW5n
cyBsaWtlIFAyUCwgYnV0IGV2ZW4gdGhlbiBpdCBtaWdodCBiZSANCmJldHRlciB0byBqdXN0IGNh
Y2hlIHRoZSBQMlAgc2V0dGluZ3MgaW5zdGVhZCBvZiB0aGUgZnVsbCBhdHRhY2htZW50Lg0KDQpS
ZWdhcmRzLA0KQ2hyaXN0aWFuLg0KDQo+DQo+IFRoYW5rcw0KPiBOaWNvbGluDQoNCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFp
bGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxp
bmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==
