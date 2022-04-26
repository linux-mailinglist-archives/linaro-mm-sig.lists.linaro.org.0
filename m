Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 181A750FB74
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 26 Apr 2022 12:51:15 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 42EB747FA3
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 26 Apr 2022 10:51:14 +0000 (UTC)
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.130])
	by lists.linaro.org (Postfix) with ESMTPS id BB24F47FA3
	for <linaro-mm-sig@lists.linaro.org>; Tue, 26 Apr 2022 10:51:08 +0000 (UTC)
Received: from mail-wr1-f53.google.com ([209.85.221.53]) by
 mrelayeu.kundenserver.de (mreue009 [213.165.67.97]) with ESMTPSA (Nemesis) id
 1MS3r9-1nKEcq2UjT-00TSnE for <linaro-mm-sig@lists.linaro.org>; Tue, 26 Apr
 2022 12:51:07 +0200
Received: by mail-wr1-f53.google.com with SMTP id s21so10180218wrb.8
        for <linaro-mm-sig@lists.linaro.org>; Tue, 26 Apr 2022 03:51:07 -0700 (PDT)
X-Gm-Message-State: AOAM532CtT45C6F89raxBi57QjUfC0dO/lhoZ5r6/lIX08yY9Oed6CHt
	24ztpNTvkqyrCNqeQUda7Ok/5U5OSB3TWiohVw8=
X-Google-Smtp-Source: ABdhPJwv3pFB8WncbOOxlmqz6E+LrLV4NkQu/Q5kzsoMl03tzrGAbxuUPuNyuSoi1V3F1hRSCNe/pbMUxDHw00bd99I=
X-Received: by 2002:a5d:64a3:0:b0:20a:7931:5b84 with SMTP id
 m3-20020a5d64a3000000b0020a79315b84mr18372018wrp.407.1650970267164; Tue, 26
 Apr 2022 03:51:07 -0700 (PDT)
MIME-Version: 1.0
References: <20220426060808.78225-1-cai.huoqing@linux.dev> <20220426060808.78225-5-cai.huoqing@linux.dev>
 <618a4f53-0998-1e6b-e32b-8bf2d3057cec@amd.com>
In-Reply-To: <618a4f53-0998-1e6b-e32b-8bf2d3057cec@amd.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Tue, 26 Apr 2022 12:50:50 +0200
X-Gmail-Original-Message-ID: <CAK8P3a2w1t7Sk897u0ndD66Lwp5a4DuOqqQLN4yHSg=JmrpOHQ@mail.gmail.com>
Message-ID: <CAK8P3a2w1t7Sk897u0ndD66Lwp5a4DuOqqQLN4yHSg=JmrpOHQ@mail.gmail.com>
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
X-Provags-ID: V03:K1:Sxn59yDX/tYE78uGkj4cqIHz86klhxkEu47Yj8Lo78RjSoZ8iZE
 lNnjDK7so4Ofkl4KTaDyk3CBvdN9SW/UK7+WNuX9Y0Dovdwxf1Ul5c0MKMNWAZ/G5LlnR7w
 3Xp6KkJsgoZpWhmDSfUAImtVlKmZBt6CNj0i6/wEL0QBmspm+H45JlYD3q9qyyEyv9l6sd0
 nb9HTEYOqfKTJpLUOI/fw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:ZU0xJUXwcNc=:bPvj9WR3MwLIbWAsLnw++n
 UzniYsGJEDFVUkWmBuz9X7bp4K1YAkNgpFeqi1XLVVtUXsoAOPuUZ97mt50vH+eG2BImY3lxz
 f/4iC8Uvtvy/Kbg5fr0FKVo6o1ZY8DhHB6an1/HZ0PFXiZDNQYW09ahDLTeZlaQpCnUia2Csv
 4Wt6p1vlUGM5oKSH8vMLxi3OqySfZpLt6UrU2asMXn/kiCKdw9DJgpZ0Guj56/qBNnoZYjxg/
 5gFulvtP4NE18UQv1WxIs+ng4VdJxL0v0zYragYW5bYJdjaeD3f6h0mYntQjh7JjHY/tMLLBF
 sbbYYVUx4Vax3T5Mr1QyQS873B1IXJWUzxrOfuRqvrVMJvH81qcM2gqZKC4Huy3tvzNMoiUv8
 UjEVb25OIFCS52FEdhTPqcvyx68g9clT1lBmZJs6H0pyBhaH5iVDfgOTlTIJgMM7aHV/tjLyY
 FLKTGkybPZGP2hSjST8wcc+UwaCt9h7M6/NbOzS7GJBGnp6OIiUxcnzt9+drJaWjYo7ZSurQE
 mwiYwmgqKR/2MQ8Zl9QP/p77e+ZlOlyrSL6D3yvvnfhZqH1vuG42qY3wT0CA/zGm9rc7AzFUS
 zWvgbDIt672goAFzvTe1Tf+4sVTN+UA7/Oo2HtRQhuy8gf6HXRxldf/aIqfnoLJFTTxn1vLkr
 OAaNXEWBtD0T9SInYwZOe9pjODOYb/s4zBK8Hp2Oi0Xnb63p3auvsS2lzedQZPHTLzM0lbKxA
 NmnganhQMdjqpRB8kFNQPN18u8dzJv2vz9zIVbftELNBJsPl33mKvpH07dh+aUFYsU22iRC5d
 95NljvB4Y3nhS1JjSmPFmCuLXtLEmSumfWtQAYqbEg0ZysHwTo=
Message-ID-Hash: LHPNB7BA5XSLAAUPTP24PTWOHQZHLXSQ
X-Message-ID-Hash: LHPNB7BA5XSLAAUPTP24PTWOHQZHLXSQ
X-MailFrom: arnd@arndb.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Cai Huoqing <cai.huoqing@linux.dev>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, dri-devel <dri-devel@lists.freedesktop.org>, Linux Media Mailing List <linux-media@vger.kernel.org>, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 4/4] drm/nvdla/uapi: Add UAPI of NVDLA driver
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/LHPNB7BA5XSLAAUPTP24PTWOHQZHLXSQ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gVHVlLCBBcHIgMjYsIDIwMjIgYXQgODozMSBBTSBDaHJpc3RpYW4gS8O2bmlnDQo8Y2hyaXN0
aWFuLmtvZW5pZ0BhbWQuY29tPiB3cm90ZToNCj4gQW0gMjYuMDQuMjIgdW0gMDg6MDggc2Nocmll
YiBDYWkgSHVvcWluZzoNCj4gPiBUaGUgTlZJRElBIERlZXAgTGVhcm5pbmcgQWNjZWxlcmF0b3Ig
KE5WRExBKSBpcyBhbiBvcGVuIHNvdXJjZSBJUA0KPiA+IHdoaWNoIGlzIGludGVncmF0ZWQgaW50
byBOVklESUEgSmV0c29uIEFHWCBYYXZpZXIsDQo+ID4gc28gYWRkIFVBUEkgb2YgdGhpcyBkcml2
ZXIuDQo+ID4NCj4gPiBTaWduZWQtb2ZmLWJ5OiBDYWkgSHVvcWluZyA8Y2FpLmh1b3FpbmdAbGlu
dXguZGV2Pg0KDQpJIHNhdyB0aGUgcmVwbHkgYnV0IG5vIHRoZSBvcmlnaW5hbCBtYWlsLCBzbyBJ
J2xsIGNvbW1lbnQgaGVyZS4NCg0KPiA+ICsNCj4gPiArI2lmICFkZWZpbmVkKF9fS0VSTkVMX18p
DQo+ID4gKyNkZWZpbmUgX191c2VyDQo+ID4gKyNlbmRpZg0KDQpUaGlzIGlzIGRvbmUgaW4gdGhl
ICdtYWtlIGhlYWRlcnNfaW5zdGFsbCcgc3RlcCwgbm8gbmVlZCB0byBkZWZpbmUgaXQNCnNlcGFy
YXRlbHkuDQoNCj4gPiArI2RlZmluZSBOVkRMQV9OT19USU1FT1VUICAgICgweGZmZmZmZmZmKQ0K
PiA+ICsgICAgIF9fdTMyIHRpbWVvdXQ7DQo+DQo+IFdoYXQgZm9ybWF0IGRvZXMgdGhhdCB0aW1l
b3V0IHZhbHVlIGhhdmU/DQo+DQo+IEluIGdlbmVyYWwgaXQgaXMgYmVzdCBwcmFjdGljZSB0byBo
YXZlIGFic29sdXRlIDY0Yml0IG5hbm9zZWNvbmQNCj4gdGltZW91dHMgKHRvIGJlIHVzZWQgd2l0
aCBrdGltZSBpbnNpZGUgdGhlIGtlcm5lbCkgc28gdGhhdCByZXN0YXJ0aW5nDQo+IGludGVycnVw
dGVkIElPQ1RMcyB3b3JrcyBzbW9vdGguDQoNCldoZW4gdXNpbmcgYWJzb2x1dGUgdmFsdWVzLCBv
bmUgYWxzbyBuZWVkcyB0byBkZWNpZGUgd2hldGhlciB0aGlzIHNob3VsZCBiZQ0KcmVhbHRpbWUs
IG1vbm90b25pYyBvciBib290dGltZSBhbmQgZG9jdW1lbnQgdGhlIGRlY2lzaW9uLg0KDQoNCj4g
PiArICogc3RydWN0IG52ZGxhX3N1Ym1pdF9hcmdzIHN0cnVjdHVyZSBmb3IgdGFzayBzdWJtaXQN
Cj4gPiArICoNCj4gPiArICogQHRhc2tzICAgICAgICAgICAgcG9pbnRlciB0byBhcnJheSBvZiBz
dHJ1Y3QgbnZkbGFfaW9jdGxfc3VibWl0X3Rhc2sNCj4gPiArICogQG51bV90YXNrcyAgICAgICAg
ICAgICAgICBudW1iZXIgb2YgZW50cmllcyBpbiB0YXNrcw0KPiA+ICsgKiBAZmxhZ3MgICAgICAg
ICAgICBmbGFncyBmb3IgdGFzayBzdWJtaXQsIG5vIGZsYWdzIGRlZmluZWQgeWV0DQo+ID4gKyAq
IEB2ZXJzaW9uICAgICAgICAgIHZlcnNpb24gb2YgdGFzayBzdHJ1Y3R1cmUNCj4gPiArICoNCj4g
PiArICovDQo+ID4gK3N0cnVjdCBudmRsYV9zdWJtaXRfYXJncyB7DQo+ID4gKyAgICAgX191NjQg
dGFza3M7DQo+ID4gKyAgICAgX191MTYgbnVtX3Rhc2tzOw0KPiA+ICsjZGVmaW5lIE5WRExBX01B
WF9UQVNLU19QRVJfU1VCTUlUICAgMjQNCj4gPiArI2RlZmluZSBOVkRMQV9TVUJNSVRfRkxBR1Nf
QVRPTUlDICAgICgxIDw8IDApDQo+DQo+IFdlbGwgdGhhdCAibm8gZmxhZ3MgZGVmaW5lZCB5ZXQi
IGZyb20gdGhlIGNvbW1lbnQgYWJvdmUgaXMgcHJvYmFibHkNCj4gb3V0ZGF0ZWQgOikNCg0KPiA+
ICsgICAgIF9fdTE2IGZsYWdzOw0KPiA+ICsgICAgIF9fdTMyIHZlcnNpb247DQo+ID4gK307DQoN
ClZlcnNpb25lZCBpbnRlcmZhY2VzIGFyZSB1c3VhbGx5IGEgYmFkIGlkZWEuIElmIHlvdSBpbnRy
b2R1Y2UgYW4gaW9jdGwgY29tbWFuZCwNCml0IHNob3VsZCBnZW5lcmFsbHkga2VlcCB3b3JraW5n
LiBJZiB5b3UgZXZlciBuZWVkIHRvIGNoYW5nZSB0aGUgaW50ZXJmYWNlLCBqdXN0DQp1c2UgYSBu
ZXcgY29tbWFuZCBudW1iZXIgZm9yIHRoZSBuZXcgdmVyc2lvbi4NCg0KPiA+ICsvKioNCj4gPiAr
ICogc3RydWN0IG52ZGxhX2dlbV9jcmVhdGVfYXJncyBmb3IgYWxsb2NhdGluZyBETUEgYnVmZmVy
IHRocm91Z2ggR0VNDQo+ID4gKyAqDQo+ID4gKyAqIEBoYW5kbGUgICAgICAgICAgIGhhbmRsZSB1
cGRhdGVkIGJ5IGtlcm5lbCBhZnRlciBhbGxvY2F0aW9uDQo+ID4gKyAqIEBmbGFncyAgICAgICAg
ICAgIGltcGxlbWVudGF0aW9uIHNwZWNpZmljIGZsYWdzDQo+ID4gKyAqIEBzaXplICAgICAgICAg
ICAgIHNpemUgb2YgYnVmZmVyIHRvIGFsbG9jYXRlDQo+ID4gKyAqLw0KPiA+ICtzdHJ1Y3QgbnZk
bGFfZ2VtX2NyZWF0ZV9hcmdzIHsNCj4gPiArICAgICBfX3UzMiBoYW5kbGU7DQo+ID4gKyAgICAg
X191MzIgZmxhZ3M7DQo+ID4gKyAgICAgX191NjQgc2l6ZTsNCj4gPiArfTsNCj4gPiArDQo+ID4g
Ky8qKg0KPiA+ICsgKiBzdHJ1Y3QgbnZkbGFfZ2VtX21hcF9vZmZzZXRfYXJncyBmb3IgbWFwcGlu
ZyBETUEgYnVmZmVyDQo+ID4gKyAqDQo+ID4gKyAqIEBoYW5kbGUgICAgICAgICAgIGhhbmRsZSBv
ZiB0aGUgYnVmZmVyDQo+ID4gKyAqIEByZXNlcnZlZCAgICAgICAgIHJlc2VydmVkIGZvciBwYWRk
aW5nDQo+ID4gKyAqIEBvZmZzZXQgICAgICAgICAgIG9mZnNldCB1cGRhdGVkIGJ5IGtlcm5lbCBh
ZnRlciBtYXBwaW5nDQo+ID4gKyAqLw0KPiA+ICtzdHJ1Y3QgbnZkbGFfZ2VtX21hcF9vZmZzZXRf
YXJncyB7DQo+ID4gKyAgICAgX191MzIgaGFuZGxlOw0KPiA+ICsgICAgIF9fdTMyIHJlc2VydmVk
Ow0KPiA+ICsgICAgIF9fdTY0IG9mZnNldDsNCj4gPiArfTsNCj4gPiArDQo+ID4gKyNkZWZpbmUg
RFJNX05WRExBX1NVQk1JVCAgICAgICAgICAgICAweDAwDQo+ID4gKyNkZWZpbmUgRFJNX05WRExB
X0dFTV9DUkVBVEUgMHgwMQ0KPiA+ICsjZGVmaW5lIERSTV9OVkRMQV9HRU1fTU1BUCAgICAgICAg
ICAgMHgwMg0KDQpJcyB0aGlzIGFuIGFjdHVhbCBtbWFwKCkgY2FsbCwgb3Igc29tZXRoaW5nIHRo
YXQgbmVlZHMgdG8gYmUgZG9uZSBiZWZvcmUgdGhlDQptbWFwKCk/IElzIHRoZSAnaGFuZGxlJyBh
IGZpbGUgZGVzY3JpcHRvciBvciBzb21lIGludGVybmFsIG51bWJlcj8NCg0KICAgICAgQXJuZA0K
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1t
LXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVu
c3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5h
cm8ub3JnCg==
