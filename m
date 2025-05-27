Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 28A31AC519C
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 27 May 2025 17:07:45 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 19704443DC
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 27 May 2025 15:07:44 +0000 (UTC)
Received: from mail-oo1-f46.google.com (mail-oo1-f46.google.com [209.85.161.46])
	by lists.linaro.org (Postfix) with ESMTPS id 00F8B443CA
	for <linaro-mm-sig@lists.linaro.org>; Tue, 27 May 2025 15:07:33 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linaro.org header.s=google header.b=TqPYzZmW;
	spf=pass (lists.linaro.org: domain of jens.wiklander@linaro.org designates 209.85.161.46 as permitted sender) smtp.mailfrom=jens.wiklander@linaro.org;
	dmarc=pass (policy=none) header.from=linaro.org
Received: by mail-oo1-f46.google.com with SMTP id 006d021491bc7-6065803ef35so715834eaf.1
        for <linaro-mm-sig@lists.linaro.org>; Tue, 27 May 2025 08:07:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1748358452; x=1748963252; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4HvNpqBKFOVDi+Mx9KGaepBPynHnQJMRXklI5JhKtbg=;
        b=TqPYzZmW6mxZCy6hZQTRILab+p9clRDB4PLTC0E45x6IvRXjmRHsiFdI3mbDFea13t
         ikjhSliHskC20C0lPkLQncIqoiQ4GlOJ4QGzwPQrCF67dDyhooBRbUtF1lsS0IZhxUmV
         /4x2ooGGc+Bec5xdu+0sDF3CjsmLDtorZfUo/vHUJMG/8m2SYP9zykm46eRcWD8bUTQE
         F3IQ3mzor6t2+FALz64NrnFCPuE4jSxol2vpFocPkcVN+YN2CpviADeObyLK9/RxyPwa
         hCL2RsCslWBbiZCH0IF+2PzR+8cDtB2kWgDulGVB2JgcUYUVom6uK2DcF9qaby0fUjvl
         s85w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748358452; x=1748963252;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4HvNpqBKFOVDi+Mx9KGaepBPynHnQJMRXklI5JhKtbg=;
        b=QZVhfsQp1Y3MPrkJ/CYECxBQOKl/3C7x5+MQ9o46yNhrEzX2v7+XMLmMKAB4qxe6RD
         ox+F9i9aT1Gvq2Il1JoLx9EejF1S5IrgLeqosT8OxHpQeICnYK3+stHXrRHJmjUTHhAb
         dxhZntKJj4VjygwHtZUZNNGu90xaoo5q1yHfqePJQ09KeAX+0SmEN87yG+y/znF4s9Yf
         basE8Ql0IL82PAs1zyytzzujXqcTM6v89Re2eJg6QJyTGZMuz/4mHk3MJ3WhkpnQAb9k
         BRBK7DVVo+NldHfqGvolJkYA78T2CmNDWdl5w93LR3NOxvuyQ0DcyMPl+KJhFmSWZuit
         i8Dg==
X-Forwarded-Encrypted: i=1; AJvYcCWMC0W1fuNJrLf+9EkYw6ysTFzI5bJLiXsBaJPnPBuJuTbytXL3P/D8hZ+i2OIdDXz7xVMdigAMtmREPLVq@lists.linaro.org
X-Gm-Message-State: AOJu0YyEhQVgejuy6D6GiSmGXqloj+HD7IbsnwoHvdGcPA+FQ64Bf7L1
	osfcgVG8wF45uR8v/8yGqAYlQ2vz5rG6t04QkM15IuD/Y8PKQXmZDlFKg9fxEAeriCYI4QsZ42U
	ZTvn0Ai/L2/ntIZryd89wt6pjWhfaHZS4XF7do0gKHmyS
X-Gm-Gg: ASbGncu4f9ZeUg0H04QsoSIWCp7Eq9yfbz2AqjDeWle3dxgEZ/nRKK0Kwq2aI2lLYsB
	MfIKDFgZjgbMNnM/8DtBOpT8FBx+ckisYr7Wuru9bmgUsPLMtrssjy9GUm0XjFOS2SUAB/a6OGg
	NyIMUlASMXKpifGdW7euLtez7Dx1eiLmD/fw==
X-Google-Smtp-Source: AGHT+IHcnwyoLk78Sdyqna09vDLwno8N4DKtCoMRIDEgmxMn5EJ8+I+135oFuaEbt0jukPgDX+G63PqFO04gyL6xVSo=
X-Received: by 2002:a05:6820:2610:b0:5fe:9edb:eafe with SMTP id
 006d021491bc7-60b9fba1696mr6694046eaf.5.1748358452253; Tue, 27 May 2025
 08:07:32 -0700 (PDT)
MIME-Version: 1.0
References: <20250520152436.474778-1-jens.wiklander@linaro.org>
 <20250520152436.474778-9-jens.wiklander@linaro.org> <aDQhn9_fezC42GwS@sumit-X1>
In-Reply-To: <aDQhn9_fezC42GwS@sumit-X1>
From: Jens Wiklander <jens.wiklander@linaro.org>
Date: Tue, 27 May 2025 17:07:18 +0200
X-Gm-Features: AX0GCFv4xwxS381XBNqHvZmFreXW7Y4SbgNJb3O8wPMOP2rKatTJj8xDdz14iuA
Message-ID: <CAHUa44HFPu87JCHDxu6HWAp6YaXrHFwi55JHTb9X=JvTz30XpA@mail.gmail.com>
To: Sumit Garg <sumit.garg@kernel.org>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Spamd-Result: default: False [-2.60 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.161.46:from];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_ONE(0.00)[1];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[22];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.trustedfirmware.org,lists.infradead.org,nxp.com,gmail.com,mediatek.com,linaro.org,collabora.com,arm.com,google.com,amd.com,qti.qualcomm.com,ffwll.ch,fooishbar.org];
	FROM_HAS_DN(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	TAGGED_RCPT(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[linaro.org:+]
X-Rspamd-Queue-Id: 00F8B443CA
X-Spamd-Bar: --
Message-ID-Hash: 5W4IOJL3WCIBKRQXWFLZWEMPS7P7EDRU
X-Message-ID-Hash: 5W4IOJL3WCIBKRQXWFLZWEMPS7P7EDRU
X-MailFrom: jens.wiklander@linaro.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, op-tee@lists.trustedfirmware.org, linux-arm-kernel@lists.infradead.org, Olivier Masse <olivier.masse@nxp.com>, Thierry Reding <thierry.reding@gmail.com>, Yong Wu <yong.wu@mediatek.com>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T . J . Mercier" <tjmercier@google.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, azarrabi@qti.qualcomm.com, Simona Vetter <simona.vetter@ffwll.ch>, Daniel Stone <daniel@fooishbar.org>, Rouven Czerwinski <rouven.czerwinski@linaro.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v9 8/9] optee: FF-A: dynamic protected memory allocation
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/5W4IOJL3WCIBKRQXWFLZWEMPS7P7EDRU/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gTW9uLCBNYXkgMjYsIDIwMjUgYXQgMTA6MDnigK9BTSBTdW1pdCBHYXJnIDxzdW1pdC5nYXJn
QGtlcm5lbC5vcmc+IHdyb3RlOg0KPg0KPiBPbiBUdWUsIE1heSAyMCwgMjAyNSBhdCAwNToxNjo1
MVBNICswMjAwLCBKZW5zIFdpa2xhbmRlciB3cm90ZToNCj4gPiBBZGQgc3VwcG9ydCBpbiB0aGUg
T1AtVEVFIGJhY2tlbmQgZHJpdmVyIGR5bmFtaWMgcHJvdGVjdGVkIG1lbW9yeQ0KPiA+IGFsbG9j
YXRpb24gd2l0aCBGRi1BLg0KPiA+DQo+ID4gVGhlIHByb3RlY3RlZCBtZW1vcnkgcG9vbHMgZm9y
IGR5bmFtaWNhbGx5IGFsbG9jYXRlZCBwcm90ZWN0ZWQgbWVtb3J5DQo+ID4gYXJlIGluc3RhbnRp
YXRlZCB3aGVuIHJlcXVlc3RlZCBieSB1c2VyLXNwYWNlLiBUaGlzIGluc3RhbnRpYXRpb24gY2Fu
DQo+ID4gZmFpbCBpZiBPUC1URUUgZG9lc24ndCBzdXBwb3J0IHRoZSByZXF1ZXN0ZWQgdXNlLWNh
c2Ugb2YgcHJvdGVjdGVkDQo+ID4gbWVtb3J5Lg0KPiA+DQo+ID4gUmVzdHJpY3RlZCBtZW1vcnkg
cG9vbHMgYmFzZWQgb24gYSBzdGF0aWMgY2FydmVvdXQgb3IgZHluYW1pYyBhbGxvY2F0aW9uDQo+
ID4gY2FuIGNvZXhpc3QgZm9yIGRpZmZlcmVudCB1c2UtY2FzZXMuIFdlIHVzZSBvbmx5IGR5bmFt
aWMgYWxsb2NhdGlvbiB3aXRoDQo+ID4gRkYtQS4NCj4gPg0KPiA+IFNpZ25lZC1vZmYtYnk6IEpl
bnMgV2lrbGFuZGVyIDxqZW5zLndpa2xhbmRlckBsaW5hcm8ub3JnPg0KPiA+IC0tLQ0KWy4uLl0N
Cj4gPiArc3RhdGljIGludCBvcHRlZV9mZmFfcHJvdG1lbV9wb29sX2luaXQoc3RydWN0IG9wdGVl
ICpvcHRlZSwgdTMyIHNlY19jYXBzKQ0KPiA+ICt7DQo+ID4gKyAgICAgZW51bSB0ZWVfZG1hX2hl
YXBfaWQgaWQgPSBURUVfRE1BX0hFQVBfU0VDVVJFX1ZJREVPX1BMQVk7DQo+ID4gKyAgICAgc3Ry
dWN0IHRlZV9wcm90bWVtX3Bvb2wgKnBvb2w7DQo+ID4gKyAgICAgaW50IHJjID0gMDsNCj4gPiAr
DQo+ID4gKyAgICAgaWYgKHNlY19jYXBzICYgT1BURUVfRkZBX1NFQ19DQVBfUFJPVE1FTSkgew0K
PiA+ICsgICAgICAgICAgICAgcG9vbCA9IG9wdGVlX3Byb3RtZW1fYWxsb2NfZHluX3Bvb2wob3B0
ZWUsIGlkKTsNCj4gPiArICAgICAgICAgICAgIGlmIChJU19FUlIocG9vbCkpDQo+ID4gKyAgICAg
ICAgICAgICAgICAgICAgIHJldHVybiBQVFJfRVJSKHBvb2wpOw0KPiA+ICsNCj4gPiArICAgICAg
ICAgICAgIHJjID0gdGVlX2RldmljZV9yZWdpc3Rlcl9kbWFfaGVhcChvcHRlZS0+dGVlZGV2LCBp
ZCwgcG9vbCk7DQo+ID4gKyAgICAgICAgICAgICBpZiAocmMpDQo+ID4gKyAgICAgICAgICAgICAg
ICAgICAgIHBvb2wtPm9wcy0+ZGVzdHJveV9wb29sKHBvb2wpOw0KPiA+ICsgICAgIH0NCj4gPiAr
DQo+ID4gKyAgICAgcmV0dXJuIHJjOw0KPiA+ICt9DQo+ID4gKw0KPiA+ICBzdGF0aWMgaW50IG9w
dGVlX2ZmYV9wcm9iZShzdHJ1Y3QgZmZhX2RldmljZSAqZmZhX2RldikNCj4gPiAgew0KPiA+ICAg
ICAgIGNvbnN0IHN0cnVjdCBmZmFfbm90aWZpZXJfb3BzICpub3RpZl9vcHM7DQo+ID4gQEAgLTkx
OCw3ICsxMDU3LDcgQEAgc3RhdGljIGludCBvcHRlZV9mZmFfcHJvYmUoc3RydWN0IGZmYV9kZXZp
Y2UgKmZmYV9kZXYpDQo+ID4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBvcHRlZSk7
DQo+ID4gICAgICAgaWYgKElTX0VSUih0ZWVkZXYpKSB7DQo+ID4gICAgICAgICAgICAgICByYyA9
IFBUUl9FUlIodGVlZGV2KTsNCj4gPiAtICAgICAgICAgICAgIGdvdG8gZXJyX2ZyZWVfcG9vbDsN
Cj4gPiArICAgICAgICAgICAgIGdvdG8gZXJyX2ZyZWVfc2htX3Bvb2w7DQo+ID4gICAgICAgfQ0K
PiA+ICAgICAgIG9wdGVlLT50ZWVkZXYgPSB0ZWVkZXY7DQo+ID4NCj4gPiBAQCAtOTY1LDYgKzEx
MDQsOSBAQCBzdGF0aWMgaW50IG9wdGVlX2ZmYV9wcm9iZShzdHJ1Y3QgZmZhX2RldmljZSAqZmZh
X2RldikNCj4gPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHJjKTsNCj4gPiAgICAgICB9
DQo+ID4NCj4gPiArICAgICBpZiAob3B0ZWVfZmZhX3Byb3RtZW1fcG9vbF9pbml0KG9wdGVlLCBz
ZWNfY2FwcykpDQo+DQo+IExldCdzIGFkZCBhIEtjb25maWcgY2hlY2sgZm9yIERNQUJVRiBoZWFw
cyBzdXBwb3J0IGhlcmUgYXMgd2VsbC4NCg0KSSBwcmVmZXIgY29tcGxhaW5pbmcgaW4gdGhlIGxv
ZyBpZiB0aGVyZSdzIHNvbWV0aGluZyB3cm9uZyB3aXRoIHRoZQ0KY29uZmlndXJhdGlvbi4NCg0K
Pg0KPiA+ICsgICAgICAgICAgICAgcHJfaW5mbygiUHJvdGVjdGVkIG1lbW9yeSBzZXJ2aWNlIG5v
dCBhdmFpbGFibGVcbiIpOw0KPiA+ICsNClsuLi5dDQo+ID4gK3N0YXRpYyBpbnQgaW5pdF9keW5f
cHJvdG1lbShzdHJ1Y3Qgb3B0ZWVfcHJvdG1lbV9keW5fcG9vbCAqcnApDQo+ID4gK3sNCj4gPiAr
ICAgICBpbnQgcmM7DQo+ID4gKw0KPiA+ICsgICAgIHJwLT5wcm90bWVtID0gdGVlX3NobV9hbGxv
Y19kbWFfbWVtKHJwLT5vcHRlZS0+Y3R4LCBycC0+cGFnZV9jb3VudCk7DQo+ID4gKyAgICAgaWYg
KElTX0VSUihycC0+cHJvdG1lbSkpIHsNCj4gPiArICAgICAgICAgICAgIHJjID0gUFRSX0VSUihy
cC0+cHJvdG1lbSk7DQo+ID4gKyAgICAgICAgICAgICBnb3RvIGVycl9udWxsX3Byb3RtZW07DQo+
ID4gKyAgICAgfQ0KPiA+ICsNCj4gPiArICAgICAvKg0KPiA+ICsgICAgICAqIFRPRE8gdW5tYXAg
dGhlIG1lbW9yeSByYW5nZSBzaW5jZSB0aGUgcGh5c2ljYWwgbWVtb3J5IHdpbGwNCj4gPiArICAg
ICAgKiBiZWNvbWUgaW5hY2Nlc2libGUgYWZ0ZXIgdGhlIGxlbmRfcHJvdG1lbSgpIGNhbGwuDQo+
DQo+IExldCdzIGVsbGFib3JhdGUgdGhpcyBjb21tZW50IHRvIGFsc28gc2F5IHRoYXQgdW5tYXAg
aXNuJ3Qgc3RyaWN0bHkNCj4gbmVlZGVkIGhlcmUgaW4gY2FzZSBhIHBsYXRmb3JtIHN1cHBvcnRz
IGh5cGVydmlzb3IgaW4gRUwyIHdoaWNoIGNhbg0KPiBwZXJmb3JtIHVubWFwcGluZyBhcyBwYXJ0
IGZvciBtZW1vcnkgbGVuZGluZyB0byBzZWN1cmUgd29ybGQgYXMgdGhhdA0KPiB3aWxsIGF2b2lk
IGFueSBjYWNoZSBwcmUtZmV0Y2ggb2YgbWVtb3J5IGxlbnQgdG8gc2VjdXJlIHdvcmxkLg0KPg0K
PiBXaXRoIHRoYXQgSSBjYW4gbGl2ZSB3aXRoIHRoaXMgYXMgYSBUb0RvIGluIGtlcm5lbCB3aGlj
aCBjYW4gYmUNCj4gaW1wbGVtZW50ZWQgb25jZSB3ZSBzZWUgcGxhdGZvcm1zIHJlcXVpcmluZyB0
aGlzIGNoYW5nZSB0byBoYXBwZW4uDQoNCk9LLCBJJ2xsIGFkZCBzb21ldGhpbmcuDQoNClsuLi5d
DQo+ID4gKw0KPiA+ICtzdHJ1Y3QgdGVlX3Byb3RtZW1fcG9vbCAqb3B0ZWVfcHJvdG1lbV9hbGxv
Y19keW5fcG9vbChzdHJ1Y3Qgb3B0ZWUgKm9wdGVlLA0KPiA+ICsgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBlbnVtIHRlZV9kbWFfaGVhcF9pZCBpZCkN
Cj4gPiArew0KPiA+ICsgICAgIHN0cnVjdCBvcHRlZV9wcm90bWVtX2R5bl9wb29sICpycDsNCj4g
PiArICAgICB1MzIgdXNlX2Nhc2UgPSBpZDsNCj4NCj4gSGVyZSB3ZSBjYW4gZ2V0IHJpZCBvZiBy
ZWR1bmRhbnQgZXh0cmEgdmFyaWFibGUgd2l0aCBzL2lkL3VzZV9jYXNlLy4NCg0KT0ssIEknbGwg
dXBkYXRlLg0KDQpDaGVlcnMsDQpKZW5zDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0t
c2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5h
cm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
