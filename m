Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id E3A61AC3C8D
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 26 May 2025 11:22:11 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D1FFE43C05
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 26 May 2025 09:22:10 +0000 (UTC)
Received: from mail-oi1-f169.google.com (mail-oi1-f169.google.com [209.85.167.169])
	by lists.linaro.org (Postfix) with ESMTPS id 4D30843C05
	for <linaro-mm-sig@lists.linaro.org>; Mon, 26 May 2025 09:22:00 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linaro.org header.s=google header.b=vl2UPwYz;
	spf=pass (lists.linaro.org: domain of jens.wiklander@linaro.org designates 209.85.167.169 as permitted sender) smtp.mailfrom=jens.wiklander@linaro.org;
	dmarc=pass (policy=none) header.from=linaro.org
Received: by mail-oi1-f169.google.com with SMTP id 5614622812f47-40656384d30so133214b6e.0
        for <linaro-mm-sig@lists.linaro.org>; Mon, 26 May 2025 02:22:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1748251319; x=1748856119; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=53ua48kPxy8ZlB5Khz3jNgjUQRcX7ad7dpgywMRYq/U=;
        b=vl2UPwYz1BMH0qDGIsVTDAOFV8f837+x4pp0gijTsEzbZ/5b+0A6DVWNHBXb9T/Icm
         YncddwaRT+3q0i2tmxZj4XCXTjarquye8XhgadrKtdSi8iOz4V2uF65sEgvnSYCMNbXl
         VJKalVlPFuGMdLCmLbpFbc4Co+kNMVAlinVNCVte3roLQ4Md8JvAJwPE7dG0N54OvYvj
         bGxeeYU/jUD7/iW9j8/kxtNYkcWmNYVfFXeuaisEgiUP8Qa6rAEFNNKWuMJeQeNTG84t
         2JVYSPM9c1J3Stn1f5tMX5x0IbcMHDLx4WLeaiMUKCXIUjpU9GHZfEIyxBVQv0jQCgK3
         ctmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748251319; x=1748856119;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=53ua48kPxy8ZlB5Khz3jNgjUQRcX7ad7dpgywMRYq/U=;
        b=d7FYbLBmZz1shT7fGC3unZDUAqEZWxToPMdeLEF/tY8NXHSo98Q/uMvD8fbQLJh7ny
         JboQ01ZV/KjbXgwckBmJkH3uPEz/iNxWSPaZv0zcMz6BZOdi1TLxHvRw+pgpIQBqgQMX
         ax2YN/9JE7bpHdrpPOIKkCxnYc4ePQjo1db4LPMa4IFIvHl0SepHOnrp1V4yKB3nMDLH
         G6pMxE3QMdC5EgFDUmNs6POnmduYGO/Z8Gtei8sMBf4ZqXoSAtRWbPOfOOHz9tE/fGN0
         7inUWTyowa4dsk+MjzOVFi83YdNVEIWDTbKV+xCPW/TPicejVjiX2/r+druS95c1SPSL
         p8zg==
X-Forwarded-Encrypted: i=1; AJvYcCV3KhrzK/nLKyQpO3LZ78XR3h+Q25SWkYMPiF+98bOdDIlUmE+W7Ws5z7Cu96qaEZGXMNNvO6ON9XYrVHjp@lists.linaro.org
X-Gm-Message-State: AOJu0YxRp8JxL5eBfyNBagpBzHKGb+TLG9l7txG+GmejQT/bPZpB8e0g
	VhRmntg+DAA8usDj3s1L+idEvtyBqscxFgOW2MFAaJnBqSN1k3vn5fH8FpC7emSZhVbAAIUFdg+
	pHWlYT1vaHnYclNfxHWKZsZNw5vVGIo/+poqF3tM9gJpe
X-Gm-Gg: ASbGncuUSWhRFXHS4fRSwMLkU1SC6OuRDZ5YN2WGueLMjcBmU1KFwx3g9gCbxXYPqQ+
	xzuE+w6F2tAkd54gaFzTRJwquX5uOIMeV731Iru7d8Fk2mTzQKVNDBMj2UZOsrv2NDRmsbu+pMW
	sa0UYjEFkGVB8vldktNSUkQ5zgxgkDFXRicA==
X-Google-Smtp-Source: AGHT+IFq5JZekHnxWc3sg2RWJXDb6uZ9CM+A22YqbDlbRKnubyEazTYamiLb0ugXmmhMYRQ6G3WVBNUuNH4AYqeD19U=
X-Received: by 2002:a05:6808:3c44:b0:404:e2fe:ee9b with SMTP id
 5614622812f47-406467f6e09mr4084598b6e.15.1748251319604; Mon, 26 May 2025
 02:21:59 -0700 (PDT)
MIME-Version: 1.0
References: <20250520152436.474778-1-jens.wiklander@linaro.org>
 <20250520152436.474778-7-jens.wiklander@linaro.org> <aDQWt5Ck1Bo01Z_4@sumit-X1>
In-Reply-To: <aDQWt5Ck1Bo01Z_4@sumit-X1>
From: Jens Wiklander <jens.wiklander@linaro.org>
Date: Mon, 26 May 2025 11:21:47 +0200
X-Gm-Features: AX0GCFvNzG6NkiJ-eN9bCOPUdD2632rQhBqnsSHNlg_n4KEoEPp6J0_ZkxvvwnI
Message-ID: <CAHUa44E4-z7-7DQjyGXYRiZDf6mRBKYZDuxWFGy+3JxtWO1ocg@mail.gmail.com>
To: Sumit Garg <sumit.garg@kernel.org>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Spamd-Result: default: False [-2.50 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	FROM_EQ_ENVFROM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_ONE(0.00)[1];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[22];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.167.169:from];
	TAGGED_RCPT(0.00)[];
	MISSING_XM_UA(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.trustedfirmware.org,lists.infradead.org,nxp.com,gmail.com,mediatek.com,linaro.org,collabora.com,arm.com,google.com,amd.com,qti.qualcomm.com,ffwll.ch,fooishbar.org];
	FROM_HAS_DN(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[linaro.org:+]
X-Rspamd-Queue-Id: 4D30843C05
X-Spamd-Bar: --
Message-ID-Hash: 5ARALX3XMGXPKL6UJX26YAYPB4SGNBEI
X-Message-ID-Hash: 5ARALX3XMGXPKL6UJX26YAYPB4SGNBEI
X-MailFrom: jens.wiklander@linaro.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, op-tee@lists.trustedfirmware.org, linux-arm-kernel@lists.infradead.org, Olivier Masse <olivier.masse@nxp.com>, Thierry Reding <thierry.reding@gmail.com>, Yong Wu <yong.wu@mediatek.com>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T . J . Mercier" <tjmercier@google.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, azarrabi@qti.qualcomm.com, Simona Vetter <simona.vetter@ffwll.ch>, Daniel Stone <daniel@fooishbar.org>, Rouven Czerwinski <rouven.czerwinski@linaro.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v9 6/9] tee: add tee_shm_alloc_dma_mem()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/5ARALX3XMGXPKL6UJX26YAYPB4SGNBEI/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gTW9uLCBNYXkgMjYsIDIwMjUgYXQgOToyMuKAr0FNIFN1bWl0IEdhcmcgPHN1bWl0LmdhcmdA
a2VybmVsLm9yZz4gd3JvdGU6DQo+DQo+IE9uIFR1ZSwgTWF5IDIwLCAyMDI1IGF0IDA1OjE2OjQ5
UE0gKzAyMDAsIEplbnMgV2lrbGFuZGVyIHdyb3RlOg0KPiA+IEFkZCB0ZWVfc2htX2FsbG9jX2Rt
YV9tZW0oKSB0byBhbGxvY2F0ZSBETUEgbWVtb3J5LiBUaGUgbWVtb3J5IGlzDQo+ID4gcmVwcmVz
ZW50ZWQgYnkgYSB0ZWVfc2htIG9iamVjdCB1c2luZyB0aGUgbmV3IGZsYWcgVEVFX1NITV9ETUFf
TUVNIHRvDQo+ID4gaWRlbnRpZnkgaXQgYXMgRE1BIG1lbW9yeS4gVGhlIGFsbG9jYXRlZCBtZW1v
cnkgd2lsbCBsYXRlciBiZSBsZW50IHRvDQo+ID4gdGhlIFRFRSB0byBiZSB1c2VkIGFzIHByb3Rl
Y3RlZCBtZW1vcnkuDQo+ID4NCj4gPiBTaWduZWQtb2ZmLWJ5OiBKZW5zIFdpa2xhbmRlciA8amVu
cy53aWtsYW5kZXJAbGluYXJvLm9yZz4NCj4gPiAtLS0NCj4gPiAgZHJpdmVycy90ZWUvdGVlX3No
bS5jICAgIHwgNzQgKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKystLQ0KPiA+
ICBpbmNsdWRlL2xpbnV4L3RlZV9jb3JlLmggfCAgNSArKysNCj4gPiAgMiBmaWxlcyBjaGFuZ2Vk
LCA3NyBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQ0KPiA+DQo+ID4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvdGVlL3RlZV9zaG0uYyBiL2RyaXZlcnMvdGVlL3RlZV9zaG0uYw0KPiA+IGluZGV4
IGUxZWQ1MmVlMGExNi4uOTJhNmEzNWUxYTFlIDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMvdGVl
L3RlZV9zaG0uYw0KPiA+ICsrKyBiL2RyaXZlcnMvdGVlL3RlZV9zaG0uYw0KPiA+IEBAIC01LDYg
KzUsOCBAQA0KPiA+ICAjaW5jbHVkZSA8bGludXgvYW5vbl9pbm9kZXMuaD4NCj4gPiAgI2luY2x1
ZGUgPGxpbnV4L2RldmljZS5oPg0KPiA+ICAjaW5jbHVkZSA8bGludXgvZG1hLWJ1Zi5oPg0KPiA+
ICsjaW5jbHVkZSA8bGludXgvZG1hLW1hcHBpbmcuaD4NCj4gPiArI2luY2x1ZGUgPGxpbnV4L2hp
Z2htZW0uaD4NCj4gPiAgI2luY2x1ZGUgPGxpbnV4L2lkci5oPg0KPiA+ICAjaW5jbHVkZSA8bGlu
dXgvaW8uaD4NCj4gPiAgI2luY2x1ZGUgPGxpbnV4L21tLmg+DQo+ID4gQEAgLTEzLDkgKzE1LDE0
IEBADQo+ID4gICNpbmNsdWRlIDxsaW51eC90ZWVfY29yZS5oPg0KPiA+ICAjaW5jbHVkZSA8bGlu
dXgvdWFjY2Vzcy5oPg0KPiA+ICAjaW5jbHVkZSA8bGludXgvdWlvLmg+DQo+ID4gLSNpbmNsdWRl
IDxsaW51eC9oaWdobWVtLmg+DQo+ID4gICNpbmNsdWRlICJ0ZWVfcHJpdmF0ZS5oIg0KPiA+DQo+
ID4gK3N0cnVjdCB0ZWVfc2htX2RtYV9tZW0gew0KPiA+ICsgICAgIHN0cnVjdCB0ZWVfc2htIHNo
bTsNCj4gPiArICAgICBkbWFfYWRkcl90IGRtYV9hZGRyOw0KPiA+ICsgICAgIHN0cnVjdCBwYWdl
ICpwYWdlOw0KPiA+ICt9Ow0KPiA+ICsNCj4gPiAgc3RhdGljIHZvaWQgc2htX3B1dF9rZXJuZWxf
cGFnZXMoc3RydWN0IHBhZ2UgKipwYWdlcywgc2l6ZV90IHBhZ2VfY291bnQpDQo+ID4gIHsNCj4g
PiAgICAgICBzaXplX3QgbjsNCj4gPiBAQCAtNDksNyArNTYsMTQgQEAgc3RhdGljIHZvaWQgdGVl
X3NobV9yZWxlYXNlKHN0cnVjdCB0ZWVfZGV2aWNlICp0ZWVkZXYsIHN0cnVjdCB0ZWVfc2htICpz
aG0pDQo+ID4gICAgICAgc3RydWN0IHRlZV9zaG0gKnBhcmVudF9zaG0gPSBOVUxMOw0KPiA+ICAg
ICAgIHZvaWQgKnAgPSBzaG07DQo+ID4NCj4gPiAtICAgICBpZiAoc2htLT5mbGFncyAmIFRFRV9T
SE1fRE1BX0JVRikgew0KPiA+ICsgICAgIGlmIChzaG0tPmZsYWdzICYgVEVFX1NITV9ETUFfTUVN
KSB7DQo+ID4gKyAgICAgICAgICAgICBzdHJ1Y3QgdGVlX3NobV9kbWFfbWVtICpkbWFfbWVtOw0K
PiA+ICsNCj4gPiArICAgICAgICAgICAgIGRtYV9tZW0gPSBjb250YWluZXJfb2Yoc2htLCBzdHJ1
Y3QgdGVlX3NobV9kbWFfbWVtLCBzaG0pOw0KPiA+ICsgICAgICAgICAgICAgcCA9IGRtYV9tZW07
DQo+ID4gKyAgICAgICAgICAgICBkbWFfZnJlZV9wYWdlcygmdGVlZGV2LT5kZXYsIHNobS0+c2l6
ZSwgZG1hX21lbS0+cGFnZSwNCj4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgIGRtYV9t
ZW0tPmRtYV9hZGRyLCBETUFfQklESVJFQ1RJT05BTCk7DQo+DQo+IEFsdGhvdWdoIHRoZSBrZXJu
ZWwgYm90IGFscmVhZHkgZm91bmQgYSByYW5kY29uZmlnIGlzc3VlLCBpdCBsb29rcyBsaWtlDQo+
IHdlIG5lZWQgdG8gYWRkIEtjb25maWcgZGVwZW5kZW5jaWVzIGxpa2UgSEFTX0RNQSwgRE1BX0NN
QSBldGMuDQo+DQo+IEFsc28sIEkgd2FzIHRoaW5raW5nIGlmIHdlIHNob3VsZCByYXRoZXIgYWRk
IGEgbmV3IFRFRSBzdWJzeXN0ZW0NCj4gc3BlY2lmaWMgS2NvbmZpZyBvcHRpb24gbGlrZTogVEVF
X0RNQUJVRl9IRUFQUyB3aGljaCBjYW4gdGhlbiBiZSB1c2VkIHRvDQo+IHNlbGVjdCB3aGF0ZXZl
ciBkZXBlbmRlbmN5IGlzIG5lZWRlZCBhcyB3ZWxsIGFzIGFjdCBhcyBhIGdhdGluZyBLY29uZmln
DQo+IGZvciByZWxldmFudCBmZWF0dXJlcy4NCg0KWW91IG1lYW4gc29tZXRoaW5nIGxpa2UgdGhp
cz8NCg0KLS0tIGEvZHJpdmVycy90ZWUvS2NvbmZpZw0KKysrIGIvZHJpdmVycy90ZWUvS2NvbmZp
Zw0KQEAgLTEzLDYgKzEzLDE0IEBAIG1lbnVjb25maWcgVEVFDQoNCiBpZiBURUUNCg0KK2NvbmZp
ZyBURUVfRE1BQlVGX0hFQVBTDQorICAgICAgIGJvb2wNCisgICAgICAgZGVwZW5kcyBvbiBIQVNf
RE1BICYmIERNQUJVRl9IRUFQUw0KKw0KK2NvbmZpZyBURUVfU1RBVElDX1BST1RNRU1fUE9PTA0K
KyAgICAgICBib29sDQorICAgICAgIGRlcGVuZHMgb24gSEFTX0lPTUVNICYmIFRFRV9ETUFCVUZf
SEVBUFMNCisNCg0KQ2hlZXJzLA0KSmVucw0KDQo+DQo+IC1TdW1pdA0KPg0KPiA+ICsgICAgIH0g
ZWxzZSBpZiAoc2htLT5mbGFncyAmIFRFRV9TSE1fRE1BX0JVRikgew0KPiA+ICAgICAgICAgICAg
ICAgc3RydWN0IHRlZV9zaG1fZG1hYnVmX3JlZiAqcmVmOw0KPiA+DQo+ID4gICAgICAgICAgICAg
ICByZWYgPSBjb250YWluZXJfb2Yoc2htLCBzdHJ1Y3QgdGVlX3NobV9kbWFidWZfcmVmLCBzaG0p
Ow0KPiA+IEBAIC0zMDYsNiArMzIwLDYyIEBAIHN0cnVjdCB0ZWVfc2htICp0ZWVfc2htX2FsbG9j
X3ByaXZfYnVmKHN0cnVjdCB0ZWVfY29udGV4dCAqY3R4LCBzaXplX3Qgc2l6ZSkNCj4gPiAgfQ0K
PiA+ICBFWFBPUlRfU1lNQk9MX0dQTCh0ZWVfc2htX2FsbG9jX3ByaXZfYnVmKTsNCj4gPg0KPiA+
ICsvKioNCj4gPiArICogdGVlX3NobV9hbGxvY19kbWFfbWVtKCkgLSBBbGxvY2F0ZSBETUEgbWVt
b3J5IGFzIHNoYXJlZCBtZW1vcnkgb2JqZWN0DQo+ID4gKyAqIEBjdHg6ICAgICBDb250ZXh0IHRo
YXQgYWxsb2NhdGVzIHRoZSBzaGFyZWQgbWVtb3J5DQo+ID4gKyAqIEBwYWdlX2NvdW50OiAgICAg
IE51bWJlciBvZiBwYWdlcw0KPiA+ICsgKg0KPiA+ICsgKiBUaGUgYWxsb2NhdGVkIG1lbW9yeSBp
cyBleHBlY3RlZCB0byBiZSBsZW50IChtYWRlIGluYWNjZXNzaWJsZSB0byB0aGUNCj4gPiArICog
a2VybmVsKSB0byB0aGUgVEVFIHdoaWxlIGl0J3MgdXNlZCBhbmQgcmV0dXJuZWQgKGFjY2Vzc2li
bGUgdG8gdGhlDQo+ID4gKyAqIGtlcm5lbCBhZ2FpbikgYmVmb3JlIGl0J3MgZnJlZWQuDQo+ID4g
KyAqDQo+ID4gKyAqIFRoaXMgZnVuY3Rpb24gc2hvdWxkIG5vcm1hbGx5IG9ubHkgYmUgdXNlZCBp
bnRlcm5hbGx5IGluIHRoZSBURUUNCj4gPiArICogZHJpdmVycy4NCj4gPiArICoNCj4gPiArICog
QHJldHVybnMgYSBwb2ludGVyIHRvICdzdHJ1Y3QgdGVlX3NobScNCj4gPiArICovDQo+ID4gK3N0
cnVjdCB0ZWVfc2htICp0ZWVfc2htX2FsbG9jX2RtYV9tZW0oc3RydWN0IHRlZV9jb250ZXh0ICpj
dHgsDQo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgc2l6ZV90IHBhZ2Vf
Y291bnQpDQo+ID4gK3sNCj4gPiArICAgICBzdHJ1Y3QgdGVlX2RldmljZSAqdGVlZGV2ID0gY3R4
LT50ZWVkZXY7DQo+ID4gKyAgICAgc3RydWN0IHRlZV9zaG1fZG1hX21lbSAqZG1hX21lbTsNCj4g
PiArICAgICBkbWFfYWRkcl90IGRtYV9hZGRyOw0KPiA+ICsgICAgIHN0cnVjdCBwYWdlICpwYWdl
Ow0KPiA+ICsNCj4gPiArICAgICBpZiAoIXRlZV9kZXZpY2VfZ2V0KHRlZWRldikpDQo+ID4gKyAg
ICAgICAgICAgICByZXR1cm4gRVJSX1BUUigtRUlOVkFMKTsNCj4gPiArDQo+ID4gKyAgICAgcGFn
ZSA9IGRtYV9hbGxvY19wYWdlcygmdGVlZGV2LT5kZXYsIHBhZ2VfY291bnQgKiBQQUdFX1NJWkUs
DQo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAmZG1hX2FkZHIsIERNQV9CSURJUkVD
VElPTkFMLCBHRlBfS0VSTkVMKTsNCj4gPiArICAgICBpZiAoIXBhZ2UpDQo+ID4gKyAgICAgICAg
ICAgICBnb3RvIGVycl9wdXRfdGVlZGV2Ow0KPiA+ICsNCj4gPiArICAgICBkbWFfbWVtID0ga3ph
bGxvYyhzaXplb2YoKmRtYV9tZW0pLCBHRlBfS0VSTkVMKTsNCj4gPiArICAgICBpZiAoIWRtYV9t
ZW0pDQo+ID4gKyAgICAgICAgICAgICBnb3RvIGVycl9mcmVlX3BhZ2VzOw0KPiA+ICsNCj4gPiAr
ICAgICByZWZjb3VudF9zZXQoJmRtYV9tZW0tPnNobS5yZWZjb3VudCwgMSk7DQo+ID4gKyAgICAg
ZG1hX21lbS0+c2htLmN0eCA9IGN0eDsNCj4gPiArICAgICBkbWFfbWVtLT5zaG0ucGFkZHIgPSBw
YWdlX3RvX3BoeXMocGFnZSk7DQo+ID4gKyAgICAgZG1hX21lbS0+ZG1hX2FkZHIgPSBkbWFfYWRk
cjsNCj4gPiArICAgICBkbWFfbWVtLT5wYWdlID0gcGFnZTsNCj4gPiArICAgICBkbWFfbWVtLT5z
aG0uc2l6ZSA9IHBhZ2VfY291bnQgKiBQQUdFX1NJWkU7DQo+ID4gKyAgICAgZG1hX21lbS0+c2ht
LmZsYWdzID0gVEVFX1NITV9ETUFfTUVNOw0KPiA+ICsNCj4gPiArICAgICB0ZWVkZXZfY3R4X2dl
dChjdHgpOw0KPiA+ICsNCj4gPiArICAgICByZXR1cm4gJmRtYV9tZW0tPnNobTsNCj4gPiArDQo+
ID4gK2Vycl9mcmVlX3BhZ2VzOg0KPiA+ICsgICAgIGRtYV9mcmVlX3BhZ2VzKCZ0ZWVkZXYtPmRl
diwgcGFnZV9jb3VudCAqIFBBR0VfU0laRSwgcGFnZSwgZG1hX2FkZHIsDQo+ID4gKyAgICAgICAg
ICAgICAgICAgICAgRE1BX0JJRElSRUNUSU9OQUwpOw0KPiA+ICtlcnJfcHV0X3RlZWRldjoNCj4g
PiArICAgICB0ZWVfZGV2aWNlX3B1dCh0ZWVkZXYpOw0KPiA+ICsNCj4gPiArICAgICByZXR1cm4g
RVJSX1BUUigtRU5PTUVNKTsNCj4gPiArfQ0KPiA+ICtFWFBPUlRfU1lNQk9MX0dQTCh0ZWVfc2ht
X2FsbG9jX2RtYV9tZW0pOw0KPiA+ICsNCj4gPiAgaW50IHRlZV9keW5fc2htX2FsbG9jX2hlbHBl
cihzdHJ1Y3QgdGVlX3NobSAqc2htLCBzaXplX3Qgc2l6ZSwgc2l6ZV90IGFsaWduLA0KPiA+ICAg
ICAgICAgICAgICAgICAgICAgICAgICAgIGludCAoKnNobV9yZWdpc3Rlcikoc3RydWN0IHRlZV9j
b250ZXh0ICpjdHgsDQo+ID4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICBzdHJ1Y3QgdGVlX3NobSAqc2htLA0KPiA+IGRpZmYgLS1naXQgYS9pbmNsdWRlL2xp
bnV4L3RlZV9jb3JlLmggYi9pbmNsdWRlL2xpbnV4L3RlZV9jb3JlLmgNCj4gPiBpbmRleCAwMmMw
N2Y2NjEzNDkuLjkyNTY5MGUxMDIwYiAxMDA2NDQNCj4gPiAtLS0gYS9pbmNsdWRlL2xpbnV4L3Rl
ZV9jb3JlLmgNCj4gPiArKysgYi9pbmNsdWRlL2xpbnV4L3RlZV9jb3JlLmgNCj4gPiBAQCAtMjks
NiArMjksOCBAQA0KPiA+ICAjZGVmaW5lIFRFRV9TSE1fUE9PTCAgICAgICAgIEJJVCgyKSAgLyog
TWVtb3J5IGFsbG9jYXRlZCBmcm9tIHBvb2wgKi8NCj4gPiAgI2RlZmluZSBURUVfU0hNX1BSSVYg
ICAgICAgICBCSVQoMykgIC8qIE1lbW9yeSBwcml2YXRlIHRvIFRFRSBkcml2ZXIgKi8NCj4gPiAg
I2RlZmluZSBURUVfU0hNX0RNQV9CVUYgICAgICAgICAgICAgIEJJVCg0KSAgLyogTWVtb3J5IHdp
dGggZG1hLWJ1ZiBoYW5kbGUgKi8NCj4gPiArI2RlZmluZSBURUVfU0hNX0RNQV9NRU0gICAgICAg
ICAgICAgIEJJVCg1KSAgLyogTWVtb3J5IGFsbG9jYXRlZCB3aXRoICovDQo+ID4gKyAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAvKiBkbWFfYWxsb2NfcGFnZXMoKSAqLw0KPiA+
DQo+ID4gICNkZWZpbmUgVEVFX0RFVklDRV9GTEFHX1JFR0lTVEVSRUQgICAweDENCj4gPiAgI2Rl
ZmluZSBURUVfTUFYX0RFVl9OQU1FX0xFTiAgICAgICAgIDMyDQo+ID4gQEAgLTMxMCw2ICszMTIs
OSBAQCB2b2lkICp0ZWVfZ2V0X2RydmRhdGEoc3RydWN0IHRlZV9kZXZpY2UgKnRlZWRldik7DQo+
ID4gICAqLw0KPiA+ICBzdHJ1Y3QgdGVlX3NobSAqdGVlX3NobV9hbGxvY19wcml2X2J1ZihzdHJ1
Y3QgdGVlX2NvbnRleHQgKmN0eCwgc2l6ZV90IHNpemUpOw0KPiA+DQo+ID4gK3N0cnVjdCB0ZWVf
c2htICp0ZWVfc2htX2FsbG9jX2RtYV9tZW0oc3RydWN0IHRlZV9jb250ZXh0ICpjdHgsDQo+ID4g
KyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgc2l6ZV90IHBhZ2VfY291bnQpOw0K
PiA+ICsNCj4gPiAgaW50IHRlZV9keW5fc2htX2FsbG9jX2hlbHBlcihzdHJ1Y3QgdGVlX3NobSAq
c2htLCBzaXplX3Qgc2l6ZSwgc2l6ZV90IGFsaWduLA0KPiA+ICAgICAgICAgICAgICAgICAgICAg
ICAgICAgIGludCAoKnNobV9yZWdpc3Rlcikoc3RydWN0IHRlZV9jb250ZXh0ICpjdHgsDQo+ID4g
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBzdHJ1Y3QgdGVl
X3NobSAqc2htLA0KPiA+IC0tDQo+ID4gMi40My4wDQo+ID4NCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0t
IGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVt
YWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
