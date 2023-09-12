Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FB1879D40A
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 12 Sep 2023 16:50:41 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 944363F013
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 12 Sep 2023 14:50:40 +0000 (UTC)
Received: from mail-qv1-f49.google.com (mail-qv1-f49.google.com [209.85.219.49])
	by lists.linaro.org (Postfix) with ESMTPS id 153043E925
	for <linaro-mm-sig@lists.linaro.org>; Tue, 12 Sep 2023 14:50:36 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ndufresne-ca.20230601.gappssmtp.com header.s=20230601 header.b=2NpgNRul;
	spf=none (lists.linaro.org: domain of nicolas@ndufresne.ca has no SPF policy when checking 209.85.219.49) smtp.mailfrom=nicolas@ndufresne.ca;
	dmarc=none
Received: by mail-qv1-f49.google.com with SMTP id 6a1803df08f44-655dccc9977so20023976d6.0
        for <linaro-mm-sig@lists.linaro.org>; Tue, 12 Sep 2023 07:50:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ndufresne-ca.20230601.gappssmtp.com; s=20230601; t=1694530235; x=1695135035; darn=lists.linaro.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=24gu3xnStbF9tnpQJ0WbAGs3/nJ8XhTOFkMY3d7yv8A=;
        b=2NpgNRultTnJWwxhN0x8S83+Q8QwA4fEiUI1Oi8+3N/r7ja9IfRK4IaimLTONu19Mh
         VjGW3RHGLecWYqE4zmnY72xRkHTsru9rsEi6gfWE5xFmJWW0IAPXWTYOlrLf05eIy09k
         e004w/QWmVI3Zp1gYuZEWtuFOhyDsD4wJ1PEalEoVRZewxIUZGtVTG/7vTQnXcaf8t3X
         qyqARhT0ekpj3k67ZisF5AKMk484PqEKjCzWLvPKiJ4C8reNUaUFeA1d4PPkoa7cd3r0
         7+b9pcF+5MOLw5ID1HocwWI3SJAtQlxUh8mMnf9QjjXWMpzrlzWFHuag41yZIqrlb4yF
         uCMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694530235; x=1695135035;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=24gu3xnStbF9tnpQJ0WbAGs3/nJ8XhTOFkMY3d7yv8A=;
        b=bI8m1Xs+TxsDLVqhAE+RvgFZuihNUWOcZIll+u79U5IlV4bLQWuv/aYJB+NTy5R4xr
         50pEHSKk1ZJvUaLsHHSnEj7DsoFjl3F8wkQ+yoc4b9/WMycJdah2Me7haiW0z16S6q9N
         aaN34+7HByd+2ggOKapt7ezg2otcGP20sSmqb7qzuYFnioNnUG4CB8u8H/6T2Mr8bFNm
         e0DxXoove9RUxQ/LVMoy3bK6ThmplxZgbP5WnbLNDqmGqPCY8r9IrwEKSgyNx9G15NSK
         MAkJjpBHqpBzQH1pn0jYd+HgvG9KP52GiscLNfIWq4IJywHf6VwBnXr7HuFKaORMiBHY
         XQBw==
X-Gm-Message-State: AOJu0YwaZ4eHanGGv0/9irsOXpIDJlzP1U0Y4F5o0aeAMpsFbOYGgbsm
	w43+R0oYnVaoi9W1R4ecgwwIFw==
X-Google-Smtp-Source: AGHT+IHIjqtGsqNdxfUolw+Ala7g5YjJUkbLvkQof93NfZ486WisLxIwvrHg6NzE7241vOgooQYo5w==
X-Received: by 2002:a05:622a:1811:b0:40d:1984:e231 with SMTP id t17-20020a05622a181100b0040d1984e231mr16719179qtc.43.1694530235641;
        Tue, 12 Sep 2023 07:50:35 -0700 (PDT)
Received: from nicolas-tpx395.localdomain ([2606:6d00:15:bae9::7a9])
        by smtp.gmail.com with ESMTPSA id v12-20020ac8578c000000b0040ff6194ef3sm3352524qta.70.2023.09.12.07.50.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 Sep 2023 07:50:35 -0700 (PDT)
Message-ID: <bbb5af208d08acfb9c7b45283840be8719c4c4e2.camel@ndufresne.ca>
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: Christian =?ISO-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Yong Wu
	 <yong.wu@mediatek.com>, Rob Herring <robh+dt@kernel.org>, Sumit Semwal
	 <sumit.semwal@linaro.org>, Matthias Brugger <matthias.bgg@gmail.com>
Date: Tue, 12 Sep 2023 10:50:34 -0400
In-Reply-To: <803846bc-fd1d-d2ec-2855-456af22c82f8@amd.com>
References: <20230911023038.30649-1-yong.wu@mediatek.com>
	 <20230911023038.30649-4-yong.wu@mediatek.com>
	 <803846bc-fd1d-d2ec-2855-456af22c82f8@amd.com>
User-Agent: Evolution 3.48.4 (3.48.4-1.fc38) 
MIME-Version: 1.0
X-Rspamd-Queue-Id: 153043E925
X-Spamd-Bar: -
X-Spamd-Result: default: False [-1.80 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_ALLOW(-0.20)[ndufresne-ca.20230601.gappssmtp.com:s=20230601];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[ndufresne-ca.20230601.gappssmtp.com:+];
	R_SPF_NA(0.00)[no SPF record];
	FREEMAIL_TO(0.00)[amd.com,mediatek.com,kernel.org,linaro.org,gmail.com];
	RCPT_COUNT_TWELVE(0.00)[21];
	DMARC_NA(0.00)[ndufresne.ca];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.219.49:from];
	RCVD_COUNT_TWO(0.00)[2];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[dt];
	BLOCKLISTDE_FAIL(0.00)[209.85.219.49:server fail];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ndufresne-ca.20230601.gappssmtp.com:dkim,mediatek.com:email,mail-qv1-f49.google.com:helo,mail-qv1-f49.google.com:rdns]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: 5SF5AZGZ7WIXYMQ4SNLNMP2JY5UBLRRW
X-Message-ID-Hash: 5SF5AZGZ7WIXYMQ4SNLNMP2JY5UBLRRW
X-MailFrom: nicolas@ndufresne.ca
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, tjmercier@google.com, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, jianjiao.zeng@mediatek.com, kuohong.wang@mediatek.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 3/9] dma-heap: Provide accessors so that in-kernel drivers can allocate dmabufs from specific heaps
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/5SF5AZGZ7WIXYMQ4SNLNMP2JY5UBLRRW/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

TGUgbHVuZGkgMTEgc2VwdGVtYnJlIDIwMjMgw6AgMTI6MTMgKzAyMDAsIENocmlzdGlhbiBLw7Zu
aWcgYSDDqWNyaXTCoDoNCj4gQW0gMTEuMDkuMjMgdW0gMDQ6MzAgc2NocmllYiBZb25nIFd1Og0K
PiA+IEZyb206IEpvaG4gU3R1bHR6IDxqc3R1bHR6QGdvb2dsZS5jb20+DQo+ID4gDQo+ID4gVGhp
cyBhbGxvd3MgZHJpdmVycyB3aG8gZG9uJ3Qgd2FudCB0byBjcmVhdGUgdGhlaXIgb3duDQo+ID4g
RE1BLUJVRiBleHBvcnRlciB0byBiZSBhYmxlIHRvIGFsbG9jYXRlIERNQS1CVUZzIGRpcmVjdGx5
DQo+ID4gZnJvbSBleGlzdGluZyBETUEtQlVGIEhlYXBzLg0KPiA+IA0KPiA+IFRoZXJlIGlzIHNv
bWUgY29uY2VybiB0aGF0IHRoZSBwcmVtaXNlIG9mIERNQS1CVUYgaGVhcHMgaXMNCj4gPiB0aGF0
IHVzZXJsYW5kIGtub3dzIGJldHRlciBhYm91dCB3aGF0IHR5cGUgb2YgaGVhcCBtZW1vcnkNCj4g
PiBpcyBuZWVkZWQgZm9yIGEgcGlwZWxpbmUsIHNvIGl0IHdvdWxkIGxpa2VseSBiZSBiZXN0IGZv
cg0KPiA+IGRyaXZlcnMgdG8gaW1wb3J0IGFuZCBmaWxsIERNQS1CVUZzIGFsbG9jYXRlZCBieSB1
c2VybGFuZA0KPiA+IGluc3RlYWQgb2YgYWxsb2NhdGluZyBvbmUgdGhlbXNlbHZlcywgYnV0IHRo
aXMgaXMgc3RpbGwNCj4gPiB1cCBmb3IgZGViYXRlLg0KPiANCj4gVGhlIG1haW4gZGVzaWduIGdv
YWwgb2YgaGF2aW5nIERNQS1oZWFwcyBpbiB0aGUgZmlyc3QgcGxhY2UgaXMgdG8gYXZvaWQgDQo+
IHBlciBkcml2ZXIgYWxsb2NhdGlvbiBhbmQgdGhpcyBpcyBub3QgbmVjZXNzYXJ5IGJlY2F1c2Ug
dXNlcmxhbmQga25vdyANCj4gYmV0dGVyIHdoYXQgdHlwZSBvZiBtZW1vcnkgaXQgd2FudHMuDQoN
CklmIHRoZSBtZW1vcnkgaXMgdXNlciB2aXNpYmxlLCB5ZXMuIFdoZW4gSSBsb29rIGF0IHRoZSBN
VEsgVkNPREVDIGNoYW5nZXMsIHRoaXMNCnNlZW1zIHRvIGJlIHVzZWQgZm9yIGludGVybmFsIGNv
ZGVjIHN0YXRlIGFuZCBTSE0gYnVmZmVycyB1c2VkIHRvIGNvbW11bmljYXRlDQp3aXRoIGZpcm13
YXJlLg0KDQo+IA0KPiBUaGUgYmFja2dyb3VuZCBpcyByYXRoZXIgdGhhdCB3ZSBnZW5lcmFsbHkg
d2FudCB0byBkZWNvdXBsZSBhbGxvY2F0aW9uIA0KPiBmcm9tIGhhdmluZyBhIGRldmljZSBkcml2
ZXIgY29ubmVjdGlvbiBzbyB0aGF0IHdlIGhhdmUgYmV0dGVyIGNoYW5jZSANCj4gdGhhdCBtdWx0
aXBsZSBkZXZpY2VzIGNhbiB3b3JrIHdpdGggdGhlIHNhbWUgbWVtb3J5Lg0KPiANCj4gSSBvbmNl
IGNyZWF0ZSBhIHByb3RvdHlwZSB3aGljaCBnaXZlcyB1c2Vyc3BhY2UgYSBoaW50IHdoaWNoIERN
QS1oZWFwIHRvIA0KPiB1c2VyIGZvciB3aGljaCBkZXZpY2U6IA0KPiBodHRwczovL3BhdGNod29y
ay5rZXJuZWwub3JnL3Byb2plY3QvbGludXgtbWVkaWEvcGF0Y2gvMjAyMzAxMjMxMjM3NTYuNDAx
NjkyLTItY2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tLw0KPiANCj4gUHJvYmxlbSBpcyB0aGF0IEkg
ZG9uJ3QgcmVhbGx5IGhhdmUgdGltZSB0byBsb29rIGludG8gaXQgYW5kIG1haW50YWluIA0KPiB0
aGF0IHN0dWZmLCBidXQgSSB0aGluayBmcm9tIHRoZSBoaWdoIGxldmVsIGRlc2lnbiB0aGF0IGlz
IHJhdGhlciB0aGUgDQo+IGdlbmVyYWwgZGlyZWN0aW9uIHdlIHNob3VsZCBwdXNoIGF0Lg0KPiAN
Cj4gUmVnYXJkcywNCj4gQ2hyaXN0aWFuLg0KPiANCj4gPiANCj4gPiBTaWduZWQtb2ZmLWJ5OiBK
b2huIFN0dWx0eiA8anN0dWx0ekBnb29nbGUuY29tPg0KPiA+IFNpZ25lZC1vZmYtYnk6IFQuSi4g
TWVyY2llciA8dGptZXJjaWVyQGdvb2dsZS5jb20+DQo+ID4gU2lnbmVkLW9mZi1ieTogWW9uZyBX
dSA8eW9uZy53dUBtZWRpYXRlay5jb20+DQo+ID4gW1lvbmc6IEZpeCB0aGUgY2hlY2twYXRjaCBh
bGlnbm1lbnQgd2FybmluZ10NCj4gPiAtLS0NCj4gPiAgIGRyaXZlcnMvZG1hLWJ1Zi9kbWEtaGVh
cC5jIHwgNjAgKysrKysrKysrKysrKysrKysrKysrKysrKysrKy0tLS0tLS0tLS0NCj4gPiAgIGlu
Y2x1ZGUvbGludXgvZG1hLWhlYXAuaCAgIHwgMjUgKysrKysrKysrKysrKysrKw0KPiA+ICAgMiBm
aWxlcyBjaGFuZ2VkLCA2OSBpbnNlcnRpb25zKCspLCAxNiBkZWxldGlvbnMoLSkNCj4gPiANCj4g
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9kbWEtYnVmL2RtYS1oZWFwLmMgYi9kcml2ZXJzL2RtYS1i
dWYvZG1hLWhlYXAuYw0KPiA+IGluZGV4IGRjYzBlMzhjNjFmYS4uOTA4YmIzMGRjODY0IDEwMDY0
NA0KPiA+IC0tLSBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtaGVhcC5jDQo+ID4gKysrIGIvZHJpdmVy
cy9kbWEtYnVmL2RtYS1oZWFwLmMNCj4gPiBAQCAtNTMsMTIgKzUzLDE1IEBAIHN0YXRpYyBkZXZf
dCBkbWFfaGVhcF9kZXZ0Ow0KPiA+ICAgc3RhdGljIHN0cnVjdCBjbGFzcyAqZG1hX2hlYXBfY2xh
c3M7DQo+ID4gICBzdGF0aWMgREVGSU5FX1hBUlJBWV9BTExPQyhkbWFfaGVhcF9taW5vcnMpOw0K
PiA+ICAgDQo+ID4gLXN0YXRpYyBpbnQgZG1hX2hlYXBfYnVmZmVyX2FsbG9jKHN0cnVjdCBkbWFf
aGVhcCAqaGVhcCwgc2l6ZV90IGxlbiwNCj4gPiAtCQkJCSB1bnNpZ25lZCBpbnQgZmRfZmxhZ3Ms
DQo+ID4gLQkJCQkgdW5zaWduZWQgaW50IGhlYXBfZmxhZ3MpDQo+ID4gK3N0cnVjdCBkbWFfYnVm
ICpkbWFfaGVhcF9idWZmZXJfYWxsb2Moc3RydWN0IGRtYV9oZWFwICpoZWFwLCBzaXplX3QgbGVu
LA0KPiA+ICsJCQkJICAgICAgdW5zaWduZWQgaW50IGZkX2ZsYWdzLA0KPiA+ICsJCQkJICAgICAg
dW5zaWduZWQgaW50IGhlYXBfZmxhZ3MpDQo+ID4gICB7DQo+ID4gLQlzdHJ1Y3QgZG1hX2J1ZiAq
ZG1hYnVmOw0KPiA+IC0JaW50IGZkOw0KPiA+ICsJaWYgKGZkX2ZsYWdzICYgfkRNQV9IRUFQX1ZB
TElEX0ZEX0ZMQUdTKQ0KPiA+ICsJCXJldHVybiBFUlJfUFRSKC1FSU5WQUwpOw0KPiA+ICsNCj4g
PiArCWlmIChoZWFwX2ZsYWdzICYgfkRNQV9IRUFQX1ZBTElEX0hFQVBfRkxBR1MpDQo+ID4gKwkJ
cmV0dXJuIEVSUl9QVFIoLUVJTlZBTCk7DQo+ID4gICANCj4gPiAgIAkvKg0KPiA+ICAgCSAqIEFs
bG9jYXRpb25zIGZyb20gYWxsIGhlYXBzIGhhdmUgdG8gYmVnaW4NCj4gPiBAQCAtNjYsOSArNjks
MjAgQEAgc3RhdGljIGludCBkbWFfaGVhcF9idWZmZXJfYWxsb2Moc3RydWN0IGRtYV9oZWFwICpo
ZWFwLCBzaXplX3QgbGVuLA0KPiA+ICAgCSAqLw0KPiA+ICAgCWxlbiA9IFBBR0VfQUxJR04obGVu
KTsNCj4gPiAgIAlpZiAoIWxlbikNCj4gPiAtCQlyZXR1cm4gLUVJTlZBTDsNCj4gPiArCQlyZXR1
cm4gRVJSX1BUUigtRUlOVkFMKTsNCj4gPiAgIA0KPiA+IC0JZG1hYnVmID0gaGVhcC0+b3BzLT5h
bGxvY2F0ZShoZWFwLCBsZW4sIGZkX2ZsYWdzLCBoZWFwX2ZsYWdzKTsNCj4gPiArCXJldHVybiBo
ZWFwLT5vcHMtPmFsbG9jYXRlKGhlYXAsIGxlbiwgZmRfZmxhZ3MsIGhlYXBfZmxhZ3MpOw0KPiA+
ICt9DQo+ID4gK0VYUE9SVF9TWU1CT0xfR1BMKGRtYV9oZWFwX2J1ZmZlcl9hbGxvYyk7DQo+ID4g
Kw0KPiA+ICtzdGF0aWMgaW50IGRtYV9oZWFwX2J1ZmZlcmZkX2FsbG9jKHN0cnVjdCBkbWFfaGVh
cCAqaGVhcCwgc2l6ZV90IGxlbiwNCj4gPiArCQkJCSAgIHVuc2lnbmVkIGludCBmZF9mbGFncywN
Cj4gPiArCQkJCSAgIHVuc2lnbmVkIGludCBoZWFwX2ZsYWdzKQ0KPiA+ICt7DQo+ID4gKwlzdHJ1
Y3QgZG1hX2J1ZiAqZG1hYnVmOw0KPiA+ICsJaW50IGZkOw0KPiA+ICsNCj4gPiArCWRtYWJ1ZiA9
IGRtYV9oZWFwX2J1ZmZlcl9hbGxvYyhoZWFwLCBsZW4sIGZkX2ZsYWdzLCBoZWFwX2ZsYWdzKTsN
Cj4gPiAgIAlpZiAoSVNfRVJSKGRtYWJ1ZikpDQo+ID4gICAJCXJldHVybiBQVFJfRVJSKGRtYWJ1
Zik7DQo+ID4gICANCj4gPiBAQCAtMTA2LDE1ICsxMjAsOSBAQCBzdGF0aWMgbG9uZyBkbWFfaGVh
cF9pb2N0bF9hbGxvY2F0ZShzdHJ1Y3QgZmlsZSAqZmlsZSwgdm9pZCAqZGF0YSkNCj4gPiAgIAlp
ZiAoaGVhcF9hbGxvY2F0aW9uLT5mZCkNCj4gPiAgIAkJcmV0dXJuIC1FSU5WQUw7DQo+ID4gICAN
Cj4gPiAtCWlmIChoZWFwX2FsbG9jYXRpb24tPmZkX2ZsYWdzICYgfkRNQV9IRUFQX1ZBTElEX0ZE
X0ZMQUdTKQ0KPiA+IC0JCXJldHVybiAtRUlOVkFMOw0KPiA+IC0NCj4gPiAtCWlmIChoZWFwX2Fs
bG9jYXRpb24tPmhlYXBfZmxhZ3MgJiB+RE1BX0hFQVBfVkFMSURfSEVBUF9GTEFHUykNCj4gPiAt
CQlyZXR1cm4gLUVJTlZBTDsNCj4gPiAtDQo+ID4gLQlmZCA9IGRtYV9oZWFwX2J1ZmZlcl9hbGxv
YyhoZWFwLCBoZWFwX2FsbG9jYXRpb24tPmxlbiwNCj4gPiAtCQkJCSAgIGhlYXBfYWxsb2NhdGlv
bi0+ZmRfZmxhZ3MsDQo+ID4gLQkJCQkgICBoZWFwX2FsbG9jYXRpb24tPmhlYXBfZmxhZ3MpOw0K
PiA+ICsJZmQgPSBkbWFfaGVhcF9idWZmZXJmZF9hbGxvYyhoZWFwLCBoZWFwX2FsbG9jYXRpb24t
PmxlbiwNCj4gPiArCQkJCSAgICAgaGVhcF9hbGxvY2F0aW9uLT5mZF9mbGFncywNCj4gPiArCQkJ
CSAgICAgaGVhcF9hbGxvY2F0aW9uLT5oZWFwX2ZsYWdzKTsNCj4gPiAgIAlpZiAoZmQgPCAwKQ0K
PiA+ICAgCQlyZXR1cm4gZmQ7DQo+ID4gICANCj4gPiBAQCAtMjA1LDYgKzIxMyw3IEBAIGNvbnN0
IGNoYXIgKmRtYV9oZWFwX2dldF9uYW1lKHN0cnVjdCBkbWFfaGVhcCAqaGVhcCkNCj4gPiAgIHsN
Cj4gPiAgIAlyZXR1cm4gaGVhcC0+bmFtZTsNCj4gPiAgIH0NCj4gPiArRVhQT1JUX1NZTUJPTF9H
UEwoZG1hX2hlYXBfZ2V0X25hbWUpOw0KPiA+ICAgDQo+ID4gICBzdHJ1Y3QgZG1hX2hlYXAgKmRt
YV9oZWFwX2FkZChjb25zdCBzdHJ1Y3QgZG1hX2hlYXBfZXhwb3J0X2luZm8gKmV4cF9pbmZvKQ0K
PiA+ICAgew0KPiA+IEBAIC0yOTAsNiArMjk5LDI0IEBAIHN0cnVjdCBkbWFfaGVhcCAqZG1hX2hl
YXBfYWRkKGNvbnN0IHN0cnVjdCBkbWFfaGVhcF9leHBvcnRfaW5mbyAqZXhwX2luZm8pDQo+ID4g
ICAJa2ZyZWUoaGVhcCk7DQo+ID4gICAJcmV0dXJuIGVycl9yZXQ7DQo+ID4gICB9DQo+ID4gK0VY
UE9SVF9TWU1CT0xfR1BMKGRtYV9oZWFwX2FkZCk7DQo+ID4gKw0KPiA+ICtzdHJ1Y3QgZG1hX2hl
YXAgKmRtYV9oZWFwX2ZpbmQoY29uc3QgY2hhciAqbmFtZSkNCj4gPiArew0KPiA+ICsJc3RydWN0
IGRtYV9oZWFwICpoOw0KPiA+ICsNCj4gPiArCW11dGV4X2xvY2soJmhlYXBfbGlzdF9sb2NrKTsN
Cj4gPiArCWxpc3RfZm9yX2VhY2hfZW50cnkoaCwgJmhlYXBfbGlzdCwgbGlzdCkgew0KPiA+ICsJ
CWlmICghc3RyY21wKGgtPm5hbWUsIG5hbWUpKSB7DQo+ID4gKwkJCWtyZWZfZ2V0KCZoLT5yZWZj
b3VudCk7DQo+ID4gKwkJCW11dGV4X3VubG9jaygmaGVhcF9saXN0X2xvY2spOw0KPiA+ICsJCQly
ZXR1cm4gaDsNCj4gPiArCQl9DQo+ID4gKwl9DQo+ID4gKwltdXRleF91bmxvY2soJmhlYXBfbGlz
dF9sb2NrKTsNCj4gPiArCXJldHVybiBOVUxMOw0KPiA+ICt9DQo+ID4gK0VYUE9SVF9TWU1CT0xf
R1BMKGRtYV9oZWFwX2ZpbmQpOw0KPiA+ICAgDQo+ID4gICBzdGF0aWMgdm9pZCBkbWFfaGVhcF9y
ZWxlYXNlKHN0cnVjdCBrcmVmICpyZWYpDQo+ID4gICB7DQo+ID4gQEAgLTMxNSw2ICszNDIsNyBA
QCB2b2lkIGRtYV9oZWFwX3B1dChzdHJ1Y3QgZG1hX2hlYXAgKmgpDQo+ID4gICAJa3JlZl9wdXQo
JmgtPnJlZmNvdW50LCBkbWFfaGVhcF9yZWxlYXNlKTsNCj4gPiAgIAltdXRleF91bmxvY2soJmhl
YXBfbGlzdF9sb2NrKTsNCj4gPiAgIH0NCj4gPiArRVhQT1JUX1NZTUJPTF9HUEwoZG1hX2hlYXBf
cHV0KTsNCj4gPiAgIA0KPiA+ICAgc3RhdGljIGNoYXIgKmRtYV9oZWFwX2Rldm5vZGUoY29uc3Qg
c3RydWN0IGRldmljZSAqZGV2LCB1bW9kZV90ICptb2RlKQ0KPiA+ICAgew0KPiA+IGRpZmYgLS1n
aXQgYS9pbmNsdWRlL2xpbnV4L2RtYS1oZWFwLmggYi9pbmNsdWRlL2xpbnV4L2RtYS1oZWFwLmgN
Cj4gPiBpbmRleCBmM2M2Nzg4OTJjNWMuLjU5ZTcwZjZjN2E2MCAxMDA2NDQNCj4gPiAtLS0gYS9p
bmNsdWRlL2xpbnV4L2RtYS1oZWFwLmgNCj4gPiArKysgYi9pbmNsdWRlL2xpbnV4L2RtYS1oZWFw
LmgNCj4gPiBAQCAtNjQsMTAgKzY0LDM1IEBAIGNvbnN0IGNoYXIgKmRtYV9oZWFwX2dldF9uYW1l
KHN0cnVjdCBkbWFfaGVhcCAqaGVhcCk7DQo+ID4gICAgKi8NCj4gPiAgIHN0cnVjdCBkbWFfaGVh
cCAqZG1hX2hlYXBfYWRkKGNvbnN0IHN0cnVjdCBkbWFfaGVhcF9leHBvcnRfaW5mbyAqZXhwX2lu
Zm8pOw0KPiA+ICAgDQo+ID4gKy8qKg0KPiA+ICsgKiBkbWFfaGVhcF9maW5kIC0gZ2V0IHRoZSBo
ZWFwIHJlZ2lzdGVyZWQgd2l0aCB0aGUgc3BlY2lmaWVkIG5hbWUNCj4gPiArICogQG5hbWU6IE5h
bWUgb2YgdGhlIERNQS1IZWFwIHRvIGZpbmQNCj4gPiArICoNCj4gPiArICogUmV0dXJuczoNCj4g
PiArICogVGhlIERNQS1IZWFwIHdpdGggdGhlIHByb3ZpZGVkIG5hbWUuDQo+ID4gKyAqDQo+ID4g
KyAqIE5PVEU6IERNQS1IZWFwcyByZXR1cm5lZCBmcm9tIHRoaXMgZnVuY3Rpb24gTVVTVCBiZSBy
ZWxlYXNlZCB1c2luZw0KPiA+ICsgKiBkbWFfaGVhcF9wdXQoKSB3aGVuIHRoZSB1c2VyIGlzIGRv
bmUgdG8gZW5hYmxlIHRoZSBoZWFwIHRvIGJlIHVubG9hZGVkLg0KPiA+ICsgKi8NCj4gPiArc3Ry
dWN0IGRtYV9oZWFwICpkbWFfaGVhcF9maW5kKGNvbnN0IGNoYXIgKm5hbWUpOw0KPiA+ICsNCj4g
PiAgIC8qKg0KPiA+ICAgICogZG1hX2hlYXBfcHV0IC0gZHJvcHMgYSByZWZlcmVuY2UgdG8gYSBk
bWFidWYgaGVhcCwgcG90ZW50aWFsbHkgZnJlZWluZyBpdA0KPiA+ICAgICogQGhlYXA6IHRoZSBo
ZWFwIHdob3NlIHJlZmVyZW5jZSBjb3VudCB0byBkZWNyZW1lbnQNCj4gPiAgICAqLw0KPiA+ICAg
dm9pZCBkbWFfaGVhcF9wdXQoc3RydWN0IGRtYV9oZWFwICpoZWFwKTsNCj4gPiAgIA0KPiA+ICsv
KioNCj4gPiArICogZG1hX2hlYXBfYnVmZmVyX2FsbG9jIC0gQWxsb2NhdGUgZG1hLWJ1ZiBmcm9t
IGEgZG1hX2hlYXANCj4gPiArICogQGhlYXA6CURNQS1IZWFwIHRvIGFsbG9jYXRlIGZyb20NCj4g
PiArICogQGxlbjoJc2l6ZSB0byBhbGxvY2F0ZSBpbiBieXRlcw0KPiA+ICsgKiBAZmRfZmxhZ3M6
CWZsYWdzIHRvIHNldCBvbiByZXR1cm5lZCBkbWEtYnVmIGZkDQo+ID4gKyAqIEBoZWFwX2ZsYWdz
OiBmbGFncyB0byBwYXNzIHRvIHRoZSBkbWEgaGVhcA0KPiA+ICsgKg0KPiA+ICsgKiBUaGlzIGlz
IGZvciBpbnRlcm5hbCBkbWEtYnVmIGFsbG9jYXRpb25zIG9ubHkuIEZyZWUgcmV0dXJuZWQgYnVm
ZmVycyB3aXRoIGRtYV9idWZfcHV0KCkuDQo+ID4gKyAqLw0KPiA+ICtzdHJ1Y3QgZG1hX2J1ZiAq
ZG1hX2hlYXBfYnVmZmVyX2FsbG9jKHN0cnVjdCBkbWFfaGVhcCAqaGVhcCwgc2l6ZV90IGxlbiwN
Cj4gPiArCQkJCSAgICAgIHVuc2lnbmVkIGludCBmZF9mbGFncywNCj4gPiArCQkJCSAgICAgIHVu
c2lnbmVkIGludCBoZWFwX2ZsYWdzKTsNCj4gPiArDQo+ID4gICAjZW5kaWYgLyogX0RNQV9IRUFQ
U19IICovDQo+IA0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxp
bmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxl
YXZlQGxpc3RzLmxpbmFyby5vcmcK
