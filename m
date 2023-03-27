Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id BCCE56CC008
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 28 Mar 2023 15:01:18 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 953EE3EE12
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 28 Mar 2023 13:01:17 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
	by lists.linaro.org (Postfix) with ESMTPS id A85233E950
	for <linaro-mm-sig@lists.linaro.org>; Mon, 27 Mar 2023 15:32:28 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=Uf7haOZl;
	spf=pass (lists.linaro.org: domain of chunkuang.hu@kernel.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=chunkuang.hu@kernel.org;
	dmarc=pass (policy=none) header.from=kernel.org
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 46C396132E
	for <linaro-mm-sig@lists.linaro.org>; Mon, 27 Mar 2023 15:32:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AE9E7C433A4
	for <linaro-mm-sig@lists.linaro.org>; Mon, 27 Mar 2023 15:32:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679931147;
	bh=f/2piHpw3ZnrfqbQuVx2e9zDHBO/3jdQSMgOHr7fUgI=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=Uf7haOZlNKZwY496KgXr8ZjlaSRrfAV++oWbg76seCtszHHlgU1C1ncye4Qk/V2kz
	 StEQf1XMyZwTOZ/cnqDbnLJBTooVJ2t2QnaFNeYpIsrT8Oiwgs2t8LijpOjuPl5FCz
	 wi+uXl2N9FXMOxxNp3Saizfkp0Vw0EvdBmv0NR2ZkTTbbi/QTnYwhoHpPOzn6AhfK5
	 aM1iGYvK++y4XO7Pzxh/jUsKut53pMYajBadWckTRzZG34diyNKmek1Y1cQrIjT2Hw
	 /CFI1AoZLOOeRzn6oxii8F19hLdy7PuKHIEmuZWBxKQypuPz5l2TncjN8Eu5njsu1j
	 UTJZdnD20aNtw==
Received: by mail-lf1-f45.google.com with SMTP id h11so5021189lfu.8
        for <linaro-mm-sig@lists.linaro.org>; Mon, 27 Mar 2023 08:32:27 -0700 (PDT)
X-Gm-Message-State: AAQBX9eMMxa0KwzyMLXbHfdzpMy5ek9L4sO4AQupCHaMg6Lns/3sUhg4
	axt72sldHRrzPxGX53BLtCyKvD9ofJ6Az+aYqQ==
X-Google-Smtp-Source: AKy350bW5rYVHuil7fmrbkaSQdUyszcMFvxLxlLqTRSqGk5pqC/YLdf2j3t3MtlGs7578J55uH+BYxLmKoEt/9tHeRM=
X-Received: by 2002:a19:7419:0:b0:4d8:62e5:4f66 with SMTP id
 v25-20020a197419000000b004d862e54f66mr3484970lfe.7.1679931145672; Mon, 27 Mar
 2023 08:32:25 -0700 (PDT)
MIME-Version: 1.0
References: <20230320030449.5397-1-yongqiang.niu@mediatek.com>
In-Reply-To: <20230320030449.5397-1-yongqiang.niu@mediatek.com>
From: Chun-Kuang Hu <chunkuang.hu@kernel.org>
Date: Mon, 27 Mar 2023 23:32:13 +0800
X-Gmail-Original-Message-ID: <CAAOTY__w650cboh38Ptgeq8_smev36-xqzjhFmx9kaBAVMGg_Q@mail.gmail.com>
Message-ID: <CAAOTY__w650cboh38Ptgeq8_smev36-xqzjhFmx9kaBAVMGg_Q@mail.gmail.com>
To: Yongqiang Niu <yongqiang.niu@mediatek.com>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: A85233E950
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.50 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	RCVD_IN_DNSWL_HI(-1.00)[139.178.84.217:from,52.25.139.140:received];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,none];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+a:dfw.source.kernel.org];
	MIME_GOOD(-0.10)[text/plain];
	FREEMAIL_CC(0.00)[kernel.org,mediatek.com,pengutronix.de,gmail.com,ffwll.ch,collabora.com,linaro.org,cerno.tech,suse.de,lists.freedesktop.org,lists.infradead.org,vger.kernel.org,lists.linaro.org,chromium.org];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	ASN(0.00)[asn:54825, ipnet:139.178.80.0/21, country:US];
	RCPT_COUNT_TWELVE(0.00)[19];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[3];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TAGGED_RCPT(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[]
X-MailFrom: chunkuang.hu@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: AZH5BYFIU6STXDDLLKWZY7UKO5EXCX5N
X-Message-ID-Hash: AZH5BYFIU6STXDDLLKWZY7UKO5EXCX5N
X-Mailman-Approved-At: Tue, 28 Mar 2023 13:01:08 +0000
CC: Chun-Kuang Hu <chunkuang.hu@kernel.org>, CK Hu <ck.hu@mediatek.com>, Philipp Zabel <p.zabel@pengutronix.de>, Daniel Vetter <daniel@ffwll.ch>, Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Sumit Semwal <sumit.semwal@linaro.org>, Maxime Ripard <maxime@cerno.tech>, Thomas Zimmermann <tzimmermann@suse.de>, dri-devel@lists.freedesktop.org, linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Project_Global_Chrome_Upstream_Group@mediatek.com, Hsin-Yi Wang <hsinyi@chromium.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [v3, PATCH] drm/mediatek: add dma buffer control for drm plane disable
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/AZH5BYFIU6STXDDLLKWZY7UKO5EXCX5N/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGksIFlvbmdxaWFuZzoNCg0KWW9uZ3FpYW5nIE5pdSA8eW9uZ3FpYW5nLm5pdUBtZWRpYXRlay5j
b20+IOaWvCAyMDIz5bm0M+aciDIw5pelIOmAseS4gCDkuIrljYgxMTowNeWvq+mBk++8mg0KPg0K
PiBGaXhlczogNDEwMTZmZTEwMjhlNCAoZHJtOiBSZW5hbWUgcGxhbmUtPnN0YXRlIHZhcmlhYmxl
cyBpbiBhdG9taWMgdXBkYXRlIGFuZCBkaXNhYmxlKQ0KDQpbMV0gaGFzIGludHJvZHVjdGlvbiBo
b3cgdG8gYWRkIEZpeGVzIHRhZywgb25lIGluZm9ybWF0aW9uIGlzOg0KDQpwbGVhc2UgdXNlIHRo
ZSDigJhGaXhlczrigJkgdGFnIHdpdGggdGhlIGZpcnN0IDEyIGNoYXJhY3RlcnMgb2YgdGhlIFNI
QS0xDQpJRCwgYW5kIHRoZSBvbmUgbGluZSBzdW1tYXJ5LiBEbyBub3Qgc3BsaXQgdGhlIHRhZyBh
Y3Jvc3MgbXVsdGlwbGUNCmxpbmVzLCB0YWdzIGFyZSBleGVtcHQgZnJvbSB0aGUg4oCcd3JhcCBh
dCA3NSBjb2x1bW5z4oCdIHJ1bGUgaW4gb3JkZXIgdG8NCnNpbXBsaWZ5IHBhcnNpbmcgc2NyaXB0
cy4NCg0KQW5kIG1vdmUgdGhpcyB0YWcgdG8gdGhlIGxpbmUgYmVmb3JlIHlvdXIgc2lnbi1vZmYg
dGFnLg0KDQpbMV0gaHR0cHM6Ly93d3cua2VybmVsLm9yZy9kb2MvaHRtbC92Ni4yL3Byb2Nlc3Mv
c3VibWl0dGluZy1wYXRjaGVzLmh0bWwNCg0KDQo+IGRtYSBidWZmZXIgcmVsZWFzZSBiZWZvcmUg
b3ZlcmxheSBkaXNhYmxlLCB0aGF0IHdpbGwgY2F1c2UNCj4gbTR1IHRyYW5zbGF0aW9uIGZhdWx0
IHdhcm5pbmcuDQo+DQo+IGFkZCBkbWEgYnVmZmVyIGNvbnRyb2wgZmxvdyBpbiBtZWRpYXRlayBk
cml2ZXI6DQo+IGdldCBkbWEgYnVmZmVyIHdoZW4gZHJtIHBsYW5lIGRpc2FibGUNCj4gcHV0IGRt
YSBidWZmZXIgd2hlbiBvdmVybGF5IHJlYWxseSBkaXNhYmxlDQo+DQo+IFNpZ25lZC1vZmYtYnk6
IFlvbmdxaWFuZyBOaXUgPHlvbmdxaWFuZy5uaXVAbWVkaWF0ZWsuY29tPg0KPiAtLS0NCj4gIGRy
aXZlcnMvZ3B1L2RybS9tZWRpYXRlay9tdGtfZHJtX2NydGMuYyAgfCAyNSArKysrKysrKysrKysr
KysrKysrKysrKysNCj4gIGRyaXZlcnMvZ3B1L2RybS9tZWRpYXRlay9tdGtfZHJtX3BsYW5lLmMg
fCAxNyArKysrKysrKysrKysrKysrDQo+ICBkcml2ZXJzL2dwdS9kcm0vbWVkaWF0ZWsvbXRrX2Ry
bV9wbGFuZS5oIHwgIDEgKw0KPiAgMyBmaWxlcyBjaGFuZ2VkLCA0MyBpbnNlcnRpb25zKCspDQo+
DQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vbWVkaWF0ZWsvbXRrX2RybV9jcnRjLmMg
Yi9kcml2ZXJzL2dwdS9kcm0vbWVkaWF0ZWsvbXRrX2RybV9jcnRjLmMNCj4gaW5kZXggNTA3MWYx
MjYzMjE2Li45Y2YxYzE3Nzg4NjggMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9tZWRp
YXRlay9tdGtfZHJtX2NydGMuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vbWVkaWF0ZWsvbXRr
X2RybV9jcnRjLmMNCj4gQEAgLTQsNiArNCw3IEBADQo+ICAgKi8NCj4NCj4gICNpbmNsdWRlIDxs
aW51eC9jbGsuaD4NCj4gKyNpbmNsdWRlIDxsaW51eC9kbWEtYnVmLmg+DQo+ICAjaW5jbHVkZSA8
bGludXgvZG1hLW1hcHBpbmcuaD4NCj4gICNpbmNsdWRlIDxsaW51eC9tYWlsYm94X2NvbnRyb2xs
ZXIuaD4NCj4gICNpbmNsdWRlIDxsaW51eC9wbV9ydW50aW1lLmg+DQo+IEBAIC0yODIsNiArMjgz
LDIzIEBAIHN0cnVjdCBtdGtfZGRwX2NvbXAgKm10a19kcm1fZGRwX2NvbXBfZm9yX3BsYW5lKHN0
cnVjdCBkcm1fY3J0YyAqY3J0YywNCj4gICAgICAgICByZXR1cm4gTlVMTDsNCj4gIH0NCj4NCj4g
K3N0YXRpYyB2b2lkIG10a19kcm1fZG1hX2J1Zl9wdXQoc3RydWN0IG10a19kcm1fY3J0YyAqbXRr
X2NydGMpDQo+ICt7DQo+ICsgICAgICAgdW5zaWduZWQgaW50IGk7DQo+ICsNCj4gKyAgICAgICBm
b3IgKGkgPSAwOyBpIDwgbXRrX2NydGMtPmxheWVyX25yOyBpKyspIHsNCj4gKyAgICAgICAgICAg
ICAgIHN0cnVjdCBkcm1fcGxhbmUgKnBsYW5lID0gJm10a19jcnRjLT5wbGFuZXNbaV07DQo+ICsg
ICAgICAgICAgICAgICBzdHJ1Y3QgbXRrX3BsYW5lX3N0YXRlICpwbGFuZV9zdGF0ZTsNCj4gKw0K
PiArICAgICAgICAgICAgICAgcGxhbmVfc3RhdGUgPSB0b19tdGtfcGxhbmVfc3RhdGUocGxhbmUt
PnN0YXRlKTsNCj4gKw0KPiArICAgICAgICAgICAgICAgaWYgKHBsYW5lX3N0YXRlICYmIHBsYW5l
X3N0YXRlLT5wZW5kaW5nLmRtYV9idWYpIHsNCj4gKyAgICAgICAgICAgICAgICAgICAgICAgZG1h
X2J1Zl9wdXQocGxhbmVfc3RhdGUtPnBlbmRpbmcuZG1hX2J1Zik7DQo+ICsgICAgICAgICAgICAg
ICAgICAgICAgIHBsYW5lX3N0YXRlLT5wZW5kaW5nLmRtYV9idWYgPSBOVUxMOw0KPiArICAgICAg
ICAgICAgICAgfQ0KPiArICAgICAgIH0NCj4gK30NCj4gKw0KPiAgI2lmIElTX1JFQUNIQUJMRShD
T05GSUdfTVRLX0NNRFEpDQo+ICBzdGF0aWMgdm9pZCBkZHBfY21kcV9jYihzdHJ1Y3QgbWJveF9j
bGllbnQgKmNsLCB2b2lkICptc3NnKQ0KPiAgew0KPiBAQCAtMzIyLDYgKzM0MCw4IEBAIHN0YXRp
YyB2b2lkIGRkcF9jbWRxX2NiKHN0cnVjdCBtYm94X2NsaWVudCAqY2wsIHZvaWQgKm1zc2cpDQo+
ICAgICAgICAgICAgICAgICBtdGtfY3J0Yy0+cGVuZGluZ19hc3luY19wbGFuZXMgPSBmYWxzZTsN
Cj4gICAgICAgICB9DQo+DQo+ICsgICAgICAgbXRrX2RybV9kbWFfYnVmX3B1dChtdGtfY3J0Yyk7
DQo+ICsNCj4gICAgICAgICBtdGtfY3J0Yy0+Y21kcV92YmxhbmtfY250ID0gMDsNCj4gICAgICAg
ICB3YWtlX3VwKCZtdGtfY3J0Yy0+Y2JfYmxvY2tpbmdfcXVldWUpOw0KPiAgfQ0KPiBAQCAtNjE0
LDkgKzYzNCwxNCBAQCBzdGF0aWMgdm9pZCBtdGtfY3J0Y19kZHBfaXJxKHZvaWQgKmRhdGEpDQo+
ICAgICAgICAgZWxzZSBpZiAobXRrX2NydGMtPmNtZHFfdmJsYW5rX2NudCA+IDAgJiYgLS1tdGtf
Y3J0Yy0+Y21kcV92YmxhbmtfY250ID09IDApDQo+ICAgICAgICAgICAgICAgICBEUk1fRVJST1Io
Im10a19jcnRjICVkIENNRFEgZXhlY3V0ZSBjb21tYW5kIHRpbWVvdXQhXG4iLA0KPiAgICAgICAg
ICAgICAgICAgICAgICAgICAgIGRybV9jcnRjX2luZGV4KCZtdGtfY3J0Yy0+YmFzZSkpOw0KPiAr
DQo+ICsgICAgICAgaWYgKCFtdGtfY3J0Yy0+Y21kcV9jbGllbnQuY2hhbikNCj4gKyAgICAgICAg
ICAgICAgIG10a19kcm1fZG1hX2J1Zl9wdXQobXRrX2NydGMpOw0KPiAgI2Vsc2UNCj4gICAgICAg
ICBpZiAoIXByaXYtPmRhdGEtPnNoYWRvd19yZWdpc3RlcikNCj4gICAgICAgICAgICAgICAgIG10
a19jcnRjX2RkcF9jb25maWcoY3J0YywgTlVMTCk7DQo+ICsNCj4gKyAgICAgICBtdGtfZHJtX2Rt
YV9idWZfcHV0KG10a19jcnRjKTsNCj4gICNlbmRpZg0KPiAgICAgICAgIG10a19kcm1fZmluaXNo
X3BhZ2VfZmxpcChtdGtfY3J0Yyk7DQo+ICB9DQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vbWVkaWF0ZWsvbXRrX2RybV9wbGFuZS5jIGIvZHJpdmVycy9ncHUvZHJtL21lZGlhdGVrL210
a19kcm1fcGxhbmUuYw0KPiBpbmRleCBkNTRmYmYzNGIwMDAuLmMxNjljYTQ5MTI5YyAxMDA2NDQN
Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL21lZGlhdGVrL210a19kcm1fcGxhbmUuYw0KPiArKysg
Yi9kcml2ZXJzL2dwdS9kcm0vbWVkaWF0ZWsvbXRrX2RybV9wbGFuZS5jDQo+IEBAIC0xMiw2ICsx
Miw3IEBADQo+ICAjaW5jbHVkZSA8ZHJtL2RybV9mcmFtZWJ1ZmZlci5oPg0KPiAgI2luY2x1ZGUg
PGRybS9kcm1fZ2VtX2F0b21pY19oZWxwZXIuaD4NCj4gICNpbmNsdWRlIDxsaW51eC9hbGlnbi5o
Pg0KPiArI2luY2x1ZGUgPGxpbnV4L2RtYS1idWYuaD4NCj4NCj4gICNpbmNsdWRlICJtdGtfZHJt
X2NydGMuaCINCj4gICNpbmNsdWRlICJtdGtfZHJtX2RkcF9jb21wLmgiDQo+IEBAIC0yODAsNiAr
MjgxLDIyIEBAIHN0YXRpYyB2b2lkIG10a19wbGFuZV9hdG9taWNfZGlzYWJsZShzdHJ1Y3QgZHJt
X3BsYW5lICpwbGFuZSwNCj4gICAgICAgICBzdHJ1Y3QgZHJtX3BsYW5lX3N0YXRlICpuZXdfc3Rh
dGUgPSBkcm1fYXRvbWljX2dldF9uZXdfcGxhbmVfc3RhdGUoc3RhdGUsDQo+ICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgIHBsYW5lKTsNCj4gICAgICAgICBzdHJ1Y3QgbXRrX3BsYW5lX3N0YXRlICptdGtfcGxh
bmVfc3RhdGUgPSB0b19tdGtfcGxhbmVfc3RhdGUobmV3X3N0YXRlKTsNCj4gKyAgICAgICBzdHJ1
Y3QgZHJtX3BsYW5lX3N0YXRlICpvbGRfc3RhdGUgPSBkcm1fYXRvbWljX2dldF9vbGRfcGxhbmVf
c3RhdGUoc3RhdGUsDQo+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHBsYW5lKTsNCj4gKw0KPiArICAgICAg
IGlmIChvbGRfc3RhdGUgJiYgb2xkX3N0YXRlLT5mYikgew0KPiArICAgICAgICAgICAgICAgc3Ry
dWN0IGRybV9nZW1fb2JqZWN0ICpnZW0gPSBvbGRfc3RhdGUtPmZiLT5vYmpbMF07DQo+ICsNCj4g
KyAgICAgICAgICAgICAgIGlmIChtdGtfcGxhbmVfc3RhdGUtPnBlbmRpbmcuZG1hX2J1Zikgew0K
DQpXaGVuIHRoaXMgaGFwcGVuLCB0aGUgcGVuZGluZy5kbWFfYnVmIGlzIHN0aWxsIGFjY2Vzc2Vk
IGJ5IE9WTCwgcmlnaHQ/DQpTbyB5b3UgZnJlZSB0aGlzIGJ1ZmZlciBhbmQgbTR1IHRyYW5zbGF0
aW9uIGZhdWx0IG9jY3VyLg0KDQpSZWdhcmRzLA0KQ2h1bi1LdWFuZy4NCg0KPiArICAgICAgICAg
ICAgICAgICAgICAgICBkbWFfYnVmX3B1dChtdGtfcGxhbmVfc3RhdGUtPnBlbmRpbmcuZG1hX2J1
Zik7DQo+ICsgICAgICAgICAgICAgICAgICAgICAgIG10a19wbGFuZV9zdGF0ZS0+cGVuZGluZy5k
bWFfYnVmID0gTlVMTDsNCj4gKyAgICAgICAgICAgICAgIH0NCj4gKw0KPiArICAgICAgICAgICAg
ICAgaWYgKGdlbSAmJiBnZW0tPmRtYV9idWYpIHsNCj4gKyAgICAgICAgICAgICAgICAgICAgICAg
Z2V0X2RtYV9idWYoZ2VtLT5kbWFfYnVmKTsNCj4gKyAgICAgICAgICAgICAgICAgICAgICAgbXRr
X3BsYW5lX3N0YXRlLT5wZW5kaW5nLmRtYV9idWYgPSBnZW0tPmRtYV9idWY7DQo+ICsgICAgICAg
ICAgICAgICB9DQo+ICsgICAgICAgfQ0KPiAgICAgICAgIG10a19wbGFuZV9zdGF0ZS0+cGVuZGlu
Zy5lbmFibGUgPSBmYWxzZTsNCj4gICAgICAgICB3bWIoKTsgLyogTWFrZSBzdXJlIHRoZSBhYm92
ZSBwYXJhbWV0ZXIgaXMgc2V0IGJlZm9yZSB1cGRhdGUgKi8NCj4gICAgICAgICBtdGtfcGxhbmVf
c3RhdGUtPnBlbmRpbmcuZGlydHkgPSB0cnVlOw0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL21lZGlhdGVrL210a19kcm1fcGxhbmUuaCBiL2RyaXZlcnMvZ3B1L2RybS9tZWRpYXRlay9t
dGtfZHJtX3BsYW5lLmgNCj4gaW5kZXggOGYzOTAxMWNkYmZjLi5iNzI0ZTU2YjcyODMgMTAwNjQ0
DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9tZWRpYXRlay9tdGtfZHJtX3BsYW5lLmgNCj4gKysr
IGIvZHJpdmVycy9ncHUvZHJtL21lZGlhdGVrL210a19kcm1fcGxhbmUuaA0KPiBAQCAtMzMsNiAr
MzMsNyBAQCBzdHJ1Y3QgbXRrX3BsYW5lX3BlbmRpbmdfc3RhdGUgew0KPiAgICAgICAgIGJvb2wg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgYXN5bmNfZGlydHk7DQo+ICAgICAgICAgYm9vbCAg
ICAgICAgICAgICAgICAgICAgICAgICAgICBhc3luY19jb25maWc7DQo+ICAgICAgICAgZW51bSBk
cm1fY29sb3JfZW5jb2RpbmcgICAgICAgICBjb2xvcl9lbmNvZGluZzsNCj4gKyAgICAgICBzdHJ1
Y3QgZG1hX2J1ZiAgICAgICAgICAgICAgICAgICpkbWFfYnVmOw0KPiAgfTsNCj4NCj4gIHN0cnVj
dCBtdGtfcGxhbmVfc3RhdGUgew0KPiAtLQ0KPiAyLjI1LjENCj4NCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0
IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFu
IGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
