Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A50BAAB91D
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  6 May 2025 08:50:46 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 95950459A4
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  6 May 2025 06:50:45 +0000 (UTC)
Received: from mail-oa1-f53.google.com (mail-oa1-f53.google.com [209.85.160.53])
	by lists.linaro.org (Postfix) with ESMTPS id 0332E447BB
	for <linaro-mm-sig@lists.linaro.org>; Tue,  6 May 2025 06:50:32 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linaro.org header.s=google header.b=xJ9kN0rw;
	dmarc=pass (policy=none) header.from=linaro.org;
	spf=pass (lists.linaro.org: domain of jens.wiklander@linaro.org designates 209.85.160.53 as permitted sender) smtp.mailfrom=jens.wiklander@linaro.org
Received: by mail-oa1-f53.google.com with SMTP id 586e51a60fabf-2da3c572a0bso3003669fac.3
        for <linaro-mm-sig@lists.linaro.org>; Mon, 05 May 2025 23:50:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1746514231; x=1747119031; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=P+rnsBrnSg8rRMbhF6ZzJCKOKKucd9+x+mvQiH4XndI=;
        b=xJ9kN0rwT5wnyzxS5yRhcBjPvBPFwSyiji59H1tkJjfvB9Wrb/syKQyX6sHr3NMy0I
         s0nhYQVznaSyaXfIqjjsy1jHPk/qXS3iY3R1eZHKfnAXocPo5gJjPRY1zo5tlDVG4Wuq
         gG0s2tZBv3wh0bSeERgmgFE5Mkuhxs5SmJYykLKmg/W6ASk4mgr7VVV+37+ZZc8nVlcT
         ZiiXgcuFMJrklel9o69u61MBY2eXX2Et94lxrIIST7UqqxFRoMpz5NX92zldAG5fYOnD
         6n+JXDB7o/ZZxBo39OA2CpnyKiPx1pEgWpOyUtjCorKnuHsbq4SxC8iuidivgdVL29WA
         cATw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746514231; x=1747119031;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=P+rnsBrnSg8rRMbhF6ZzJCKOKKucd9+x+mvQiH4XndI=;
        b=Ei0MiRsSyx7Qo69TNwQIJOkD8oqRy3WeDKC//J66ySAXA8FnZCgESd3rgfM5Ms/YZf
         SiZHN5kUB2UROCzMZ34nZ2Wj15fiuaFBrb+RYc79MCYvdsIxHZhRhDtUGC7ahCYOP7qm
         z8k0wJ3eIz3iuj1qzYXqmcufYsiJ6fut1nqwQ+0D+Q4XcnTlWK9mjrQbY87x2RL9/ftX
         WKp8P/MxbnUB153f80LqSu9d3Yu1xlHycuoWGu48EKklQG0adzzGRflsh3HXDmMSo3Ir
         4Zhr4rCWPbbZS9AxwExqk92751ijyxEFoUJbiSL3P5Lm2IQC0grqswt72ob4DmgrIGwP
         MuQw==
X-Forwarded-Encrypted: i=1; AJvYcCVOrgZ9+jxCnzSAAtuyVRTfMfHzadRqB72lSWF3iLRlWllls48XhnahZ1RJsW64WdtVYq4ZFi4oNoYifTSu@lists.linaro.org
X-Gm-Message-State: AOJu0YyUXZtgcAY7izeYVGxMiw3ThuPdY1zv+BlKlcwWI89gpQEL2LGe
	qBjh6s8mmXYRl2bnpYeWBbCjbUHjotQyurzmSId5onkhRs0ugzD6W06blsDoeYuULDkICb71LhD
	JmXYzLTWKeyfFuQJ627fLUT5OYP/xJ93NLz0uDuTT
X-Gm-Gg: ASbGncsXwNKtfq3B4BNXknLCcne1YjupjGaqgCjonHsahLIMHvTh2hbHuzHN5zHTP+2
	M9T0Muxda106n5uJEQ29mrsixeUFfsGv507dhRmQMome/uWnPHxjLR1rM6yihRq35ZfJtLJHjLT
	QZpw+RCwPZxfwa/LdTZz/fVSQ=
X-Google-Smtp-Source: AGHT+IHNm5GVjhXN3B45lmCfKthx/G+NZUk5+CRKyT+Ba0DNEGI76r0X6+RqWLQrptXlWXRbeCBTBu5IP8WF2QNe6QA=
X-Received: by 2002:a05:6870:a1a3:b0:2d4:e8fd:7ffb with SMTP id
 586e51a60fabf-2db3ccf9c7emr900510fac.1.1746514231320; Mon, 05 May 2025
 23:50:31 -0700 (PDT)
MIME-Version: 1.0
References: <20250502100049.1746335-1-jens.wiklander@linaro.org>
 <20250502100049.1746335-7-jens.wiklander@linaro.org> <6a33e85f-6b60-4260-993d-974dd29cf8e6@arm.com>
In-Reply-To: <6a33e85f-6b60-4260-993d-974dd29cf8e6@arm.com>
From: Jens Wiklander <jens.wiklander@linaro.org>
Date: Tue, 6 May 2025 08:50:20 +0200
X-Gm-Features: ATxdqUHZrVfop0JU0rG-vcdbXQsIPujzLICkuywbLk5p8m1md7a0mES_eJcPprM
Message-ID: <CAHUa44EQV5O+KZbE19-d-Z6Wu=HAQuGQmZe+mXZRpmdvRDbmSA@mail.gmail.com>
To: Robin Murphy <robin.murphy@arm.com>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 0332E447BB
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.60 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.160.53:from];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[23];
	RCVD_COUNT_ONE(0.00)[1];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	DWL_DNSWL_BLOCKED(0.00)[linaro.org:dkim];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.trustedfirmware.org,lists.infradead.org,nxp.com,gmail.com,mediatek.com,linaro.org,collabora.com,arm.com,google.com,amd.com,kernel.org,qti.qualcomm.com,ffwll.ch,fooishbar.org];
	MISSING_XM_UA(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	URIBL_BLOCKED(0.00)[linaro.org:dkim,arm.com:email];
	DKIM_TRACE(0.00)[linaro.org:+]
X-Rspamd-Action: no action
Message-ID-Hash: OQYT2ZEGF4WR6NCA2CNZSSE6RSGR4WFW
X-Message-ID-Hash: OQYT2ZEGF4WR6NCA2CNZSSE6RSGR4WFW
X-MailFrom: jens.wiklander@linaro.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, op-tee@lists.trustedfirmware.org, linux-arm-kernel@lists.infradead.org, Olivier Masse <olivier.masse@nxp.com>, Thierry Reding <thierry.reding@gmail.com>, Yong Wu <yong.wu@mediatek.com>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T . J . Mercier" <tjmercier@google.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Sumit Garg <sumit.garg@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, azarrabi@qti.qualcomm.com, Simona Vetter <simona.vetter@ffwll.ch>, Daniel Stone <daniel@fooishbar.org>, Rouven Czerwinski <rouven.czerwinski@linaro.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v8 06/14] tee: implement protected DMA-heap
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/OQYT2ZEGF4WR6NCA2CNZSSE6RSGR4WFW/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGksDQoNCk9uIEZyaSwgTWF5IDIsIDIwMjUgYXQgMzo1OeKAr1BNIFJvYmluIE11cnBoeSA8cm9i
aW4ubXVycGh5QGFybS5jb20+IHdyb3RlOg0KPg0KPiBPbiAwMi8wNS8yMDI1IDEwOjU5IGFtLCBK
ZW5zIFdpa2xhbmRlciB3cm90ZToNCj4gPiBJbXBsZW1lbnQgRE1BIGhlYXAgZm9yIHByb3RlY3Rl
ZCBETUEtYnVmIGFsbG9jYXRpb24gaW4gdGhlIFRFRQ0KPiA+IHN1YnN5c3RlbS4NCj4gPg0KPiA+
IFJlc3RyaWN0ZWQgbWVtb3J5IHJlZmVycyB0byBtZW1vcnkgYnVmZmVycyBiZWhpbmQgYSBoYXJk
d2FyZSBlbmZvcmNlZA0KPiA+IGZpcmV3YWxsLiBJdCBpcyBub3QgYWNjZXNzaWJsZSB0byB0aGUg
a2VybmVsIGR1cmluZyBub3JtYWwgY2lyY3Vtc3RhbmNlcw0KPiA+IGJ1dCByYXRoZXIgb25seSBh
Y2Nlc3NpYmxlIHRvIGNlcnRhaW4gaGFyZHdhcmUgSVBzIG9yIENQVXMgZXhlY3V0aW5nIGluDQo+
ID4gaGlnaGVyIG9yIGRpZmZlcmVudGx5IHByaXZpbGVnZWQgbW9kZSB0aGFuIHRoZSBrZXJuZWwg
aXRzZWxmLiBUaGlzDQo+ID4gaW50ZXJmYWNlIGFsbG93cyB0byBhbGxvY2F0ZSBhbmQgbWFuYWdl
IHN1Y2ggcHJvdGVjdGVkIG1lbW9yeSBidWZmZXJzDQo+ID4gdmlhIGludGVyYWN0aW9uIHdpdGgg
YSBURUUgaW1wbGVtZW50YXRpb24uDQo+ID4NCj4gPiBUaGUgcHJvdGVjdGVkIG1lbW9yeSBpcyBh
bGxvY2F0ZWQgZm9yIGEgc3BlY2lmaWMgdXNlLWNhc2UsIGxpa2UgU2VjdXJlDQo+ID4gVmlkZW8g
UGxheWJhY2ssIFRydXN0ZWQgVUksIG9yIFNlY3VyZSBWaWRlbyBSZWNvcmRpbmcgd2hlcmUgY2Vy
dGFpbg0KPiA+IGhhcmR3YXJlIGRldmljZXMgY2FuIGFjY2VzcyB0aGUgbWVtb3J5Lg0KPiA+DQo+
ID4gVGhlIERNQS1oZWFwcyBhcmUgZW5hYmxlZCBleHBsaWNpdGx5IGJ5IHRoZSBURUUgYmFja2Vu
ZCBkcml2ZXIuIFRoZSBURUUNCj4gPiBiYWNrZW5kIGRyaXZlcnMgbmVlZHMgdG8gaW1wbGVtZW50
IHByb3RlY3RlZCBtZW1vcnkgcG9vbCB0byBtYW5hZ2UgdGhlDQo+ID4gcHJvdGVjdGVkIG1lbW9y
eS4NCj4NCj4gWy4uLl0+ICtzdGF0aWMgc3RydWN0IHNnX3RhYmxlICoNCj4gPiArdGVlX2hlYXBf
bWFwX2RtYV9idWYoc3RydWN0IGRtYV9idWZfYXR0YWNobWVudCAqYXR0YWNobWVudCwNCj4gPiAr
ICAgICAgICAgICAgICAgICAgZW51bSBkbWFfZGF0YV9kaXJlY3Rpb24gZGlyZWN0aW9uKQ0KPiA+
ICt7DQo+ID4gKyAgICAgc3RydWN0IHRlZV9oZWFwX2F0dGFjaG1lbnQgKmEgPSBhdHRhY2htZW50
LT5wcml2Ow0KPiA+ICsgICAgIGludCByZXQ7DQo+ID4gKw0KPiA+ICsgICAgIHJldCA9IGRtYV9t
YXBfc2d0YWJsZShhdHRhY2htZW50LT5kZXYsICZhLT50YWJsZSwgZGlyZWN0aW9uLA0KPiA+ICsg
ICAgICAgICAgICAgICAgICAgICAgICAgICBETUFfQVRUUl9TS0lQX0NQVV9TWU5DKTsNCj4NCj4g
SWYgdGhlIG1lbW9yeSBpcyBpbmFjY2Vzc2libGUgdG8gdGhlIGtlcm5lbCwgd2hhdCBkb2VzIHRo
aXMgRE1BIG1hcHBpbmcNCj4gZXZlbiBtZWFuPyBXaGF0IGhhcHBlbnMgd2hlbiBpdCB0cmllcyB0
byBwZXJmb3JtIGNhY2hlIG1haW50ZW5hbmNlIG9yDQo+IGJvdW5jZS1idWZmZXJpbmcgb24gaW5h
Y2Nlc3NpYmxlIG1lbW9yeSAod2hpY2ggcHJlc3VtYWJseSBkb2Vzbid0IGV2ZW4NCj4gaGF2ZSBh
IFZBIGlmIGl0J3Mgbm90IHVzYWJsZSBhcyBub3JtYWwga2VybmVsIG1lbW9yeSk/DQoNCkRvZXNu
J3QgRE1BX0FUVFJfU0tJUF9DUFVfU1lOQyBzYXkgdGhhdCB0aGUga2VybmVsIHNob3VsZG4ndCBw
ZXJmb3JtDQpjYWNoZSBtYWludGVuYW5jZSBvbiB0aGUgYnVmZmVyIHNpbmNlIGl0J3MgYWxyZWFk
eSBpbiB0aGUgZGV2aWNlDQpkb21haW4/IFRoZSBkZXZpY2UgaXMgZXhwZWN0ZWQgdG8gYmUgcGVy
bWl0dGVkIHRvIGFjY2VzcyB0aGUgbWVtb3J5Lg0KDQo+DQo+IElmIHdlJ3JlIHNpbXBseSBob3Vz
ZWtlZXBpbmcgdGhlIFRFRSdzIHJlc291cmNlcyBvbiBpdHMgYmVoYWxmLCBhbmQNCj4gZ2l2aW5n
IGl0IGJhY2sgc29tZSB0b2tlbiB0byB0ZWxsIGl0IHdoaWNoIHJlc291cmNlIHRvIGdvIGRvIGl0
cyB0aGluZw0KPiB3aXRoLCB0aGVuIHRoYXQncyByZWFsbHkgbm90ICJETUEiIGFzIGZhciBhcyB0
aGUga2VybmVsIGlzIGNvbmNlcm5lZC4NCg0KVGhlc2UgYnVmZmVycyBhcmUgc3VwcG9zZWQgdG8g
YmUgcGFzc2VkIHRvIGRldmljZXMgdGhhdCBtaWdodCBiZSB1bmRlcg0Kb25seSBwYXJ0aWFsIGNv
bnRyb2wgb2YgdGhlIGtlcm5lbC4NCg0KPg0KPiBbLi4uXQ0KPiA+ICtzdGF0aWMgaW50IHByb3Rt
ZW1fcG9vbF9vcF9zdGF0aWNfYWxsb2Moc3RydWN0IHRlZV9wcm90bWVtX3Bvb2wgKnBvb2wsDQo+
ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBzdHJ1Y3Qgc2dfdGFibGUg
KnNndCwgc2l6ZV90IHNpemUsDQo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICBzaXplX3QgKm9mZnMpDQo+ID4gK3sNCj4gPiArICAgICBzdHJ1Y3QgdGVlX3Byb3RtZW1f
c3RhdGljX3Bvb2wgKnN0cCA9IHRvX3Byb3RtZW1fc3RhdGljX3Bvb2wocG9vbCk7DQo+ID4gKyAg
ICAgcGh5c19hZGRyX3QgcGE7DQo+ID4gKyAgICAgaW50IHJldDsNCj4gPiArDQo+ID4gKyAgICAg
cGEgPSBnZW5fcG9vbF9hbGxvYyhzdHAtPmdlbl9wb29sLCBzaXplKTsNCj4gPiArICAgICBpZiAo
IXBhKQ0KPiA+ICsgICAgICAgICAgICAgcmV0dXJuIC1FTk9NRU07DQo+ID4gKw0KPiA+ICsgICAg
IHJldCA9IHNnX2FsbG9jX3RhYmxlKHNndCwgMSwgR0ZQX0tFUk5FTCk7DQo+ID4gKyAgICAgaWYg
KHJldCkgew0KPiA+ICsgICAgICAgICAgICAgZ2VuX3Bvb2xfZnJlZShzdHAtPmdlbl9wb29sLCBw
YSwgc2l6ZSk7DQo+ID4gKyAgICAgICAgICAgICByZXR1cm4gcmV0Ow0KPiA+ICsgICAgIH0NCj4g
PiArDQo+ID4gKyAgICAgc2dfc2V0X3BhZ2Uoc2d0LT5zZ2wsIHBoeXNfdG9fcGFnZShwYSksIHNp
emUsIDApOw0KPg0KPiBXaGVyZSBkb2VzICJwYSIgY29tZSBmcm9tIGhlcmUgKGkuZS4gd2hhdCdz
IHRoZSBwcm92ZW5hbmNlIG9mIHRoZQ0KPiBpbml0aWFsICJwYWRkciIgcGFzc2VkIHRvIHRlZV9w
cm90bWVtX3N0YXRpY19wb29sX2FsbG9jKCkpPyBJbiBnZW5lcmFsDQo+IHdlIGNhbid0IGNhbGwg
e3BoeXMscGZufV90b19wYWdlKCkgYW4gYXJiaXRyYXJ5IGFkZHJlc3NlcyB3aXRob3V0DQo+IGNo
ZWNraW5nIHBmbl92YWxpZCgpIGZpcnN0LiBBIGJvZ3VzIGFkZHJlc3MgbWlnaHQgZXZlbiBjcmFz
aA0KPiBfX3Bmbl90b19wYWdlKCkgaXRzZWxmIHVuZGVyIENPTkZJR19TUEFSU0VNRU0uDQoNClRo
YXQncyBhIGdvb2QgcG9pbnQuIFdvdWxkIGl0IGJlIGVub3VnaCB0byBjaGVjayB0aGUgYWRkcmVz
cyB3aXRoDQpwZm5fdmFsaWQoKSBpbiB0ZWVfcHJvdG1lbV9zdGF0aWNfcG9vbF9hbGxvYygpPw0K
DQpJIGV4cGVjdCB0aGF0IHRoZSBtZW1vcnkgaXMgbm9ybWFsbHkgY2FydmVkIG91dCBvZiBERFIg
YW5kIG1hZGUgc2VjdXJlDQpvciBwcm90ZWN0ZWQgaW4gYSBwbGF0Zm9ybS1zcGVjaWZpYyB3YXks
IGVpdGhlciBhdCBib290IHdpdGggYSBzdGF0aWMNCmNhcnZlb3V0IG9yIGR5bmFtaWNhbGx5IGFm
dGVyIGJvb3QuDQoNClRoYW5rcywNCkplbnMNCg0KDQo+DQo+IFRoYW5rcywNCj4gUm9iaW4uDQo+
DQo+ID4gKyAgICAgKm9mZnMgPSBwYSAtIHN0cC0+cGFfYmFzZTsNCj4gPiArDQo+ID4gKyAgICAg
cmV0dXJuIDA7DQo+ID4gK30NCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlz
dHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1z
aWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
