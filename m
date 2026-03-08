Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8GMPCzVe5mnPvQEAu9opvQ:T2
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:11:18 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id E3591430B12
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:11:17 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id DDEC64050B
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 17:05:19 +0000 (UTC)
Received: from mail-yx1-f44.google.com (mail-yx1-f44.google.com [74.125.224.44])
	by lists.linaro.org (Postfix) with ESMTPS id 5508B3F795
	for <linaro-mm-sig@lists.linaro.org>; Sun,  8 Mar 2026 18:41:59 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=XZ6c85Zx;
	arc=pass ("google.com:s=arc-20240605:i=1");
	spf=pass (lists.linaro.org: domain of ju.orth@gmail.com designates 74.125.224.44 as permitted sender) smtp.mailfrom=ju.orth@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-yx1-f44.google.com with SMTP id 956f58d0204a3-64ae222d978so10466355d50.1
        for <linaro-mm-sig@lists.linaro.org>; Sun, 08 Mar 2026 11:41:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1772995319; cv=none;
        d=google.com; s=arc-20240605;
        b=glrwpVzeOkfCfJM4VhjMqkvZVfFe0mDi45L+6jd6pu7sQYDyhh7jwIPuiRtVuqScnd
         JRVvsGkBfoHFPlHU2xmMkrxAan7i3muL3oYXlo4zO9o+WgXh1usx3VrGJDI/MXdFZcz4
         ypNZ95r3Q7xLJp8PJgAMXk50LtYbawOqafOK01cLq6RUMh8/bKUJHpUdVw9m6yhbzU4O
         xaYBSRoUZZcP4GpIjTmNr8U0E4AMbi3IpyhjxKLxrBS43+DM/GbPrOhug+ZW0Dm5+0JY
         OhjWD7TUj2++8FpugbHeqi0Fw4EBXKkmyttjSdNDKUbmAiYmCsvQTlHs2dvRLc6E9COa
         R8RQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=ZpzDnHDe78iWEUGuOKrGYfeMK0pcHHei4ODQ9kclWaI=;
        fh=nU2aGw9kLlIywRRR/d/L2av++8PtITpuBNA7CMR/D+4=;
        b=OTf0VC0EVsesiakG7LWJgp7TGG2b1mv2rhDHPS9QZbNPx/j7L1m+kV5A1+jD7xA55l
         FRgHJemL8GpEzyD3cJr3Kaj9yrGpvvo4C+8H4xBkExOLzju1AZOFDPIUlDs9YZtRIzpp
         1Wa7RdwBzXmYHugGuwNdZHwAs/4AR52MHdkcgRV7P78iTtBnKYGofgUX9tcly3RYwXUo
         z9jzqOZJtf6nSK+CHOLRaAvwl9b/uOHkrl8ezjbw9xfWzSvu5+fjiqcp/wFTXLJEMQAS
         1l3SW7JQLcVNVKvOq9MNLvrizv/btkM8WqBsGS8dnBiuLPBWJ9ouvB75n/DCZGYGwU82
         nCjQ==;
        darn=lists.linaro.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772995319; x=1773600119; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZpzDnHDe78iWEUGuOKrGYfeMK0pcHHei4ODQ9kclWaI=;
        b=XZ6c85ZxAf8sOdzjH/ZB65SnZG5YDRFAPDz8JHdy1+/u/ST5f5VT+oBWFa2M9PSIpa
         GmsstwUyDOqc3PR7uip2B+6w1HVrwrxy2MmPqdZjmd8SOnzvJvtaUQRU6QmXg6zSfM4g
         U1ERgX3pex42jO1YP+1UClga7pnLSOcT62KiZZoFsonKr4ALo54hTAhYvWdpl/BwkFpA
         rPyoHlSztkCONzZs7eeV8AUnbC0JGDekhRZreLap7wXv6E5AwXZuR5J/7oTWd4XcaQN7
         /TadM5wknq3JRfyit5yAiT518kYULTKEc/zMyJ4Gi8JXOycIPAMyX9mn+IW5J2T0J/gj
         T8vA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772995319; x=1773600119;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=ZpzDnHDe78iWEUGuOKrGYfeMK0pcHHei4ODQ9kclWaI=;
        b=saKxKXDr/LGqGxJVVJbj9ddfg2g0Nfcu7uA2nmjMdXksf4tpIPV6CpP/wEBxHoeMYW
         UR8zx2QnTvWIzusPg5cn5nSNR0cMVsyEolpLjDxokXyufkpJ6L383Z/qxji0HpyQ++q9
         4Ewv/KQTqXQWxIwXFCXNZ8smuvITdDC0kI4CGiGyxmmwwMiQiIQMBIswp7LEzVYShj5a
         ycwzLpVxfIT5QqeCKezvXSSEZkbdhBUIXPES9zFzCpDk3occUSs+05szx5jKkfyEQ6dU
         +Ian65L1BN7nQGrwgwL5lkAXuO6Beoff6nDxEEbiUERTStP5W80b9txBd9JAv94Z0Cmp
         gnKQ==
X-Forwarded-Encrypted: i=1; AJvYcCXLIRyDOFeIck5DZ5NxkA7BoTQX/zr/faU1Xnh9EuBDnE6MkR5f1NEzyBEQjdUtfmaeqmgKNQJmAN9Maqov@lists.linaro.org
X-Gm-Message-State: AOJu0Yy4XWvmQuTLWd43XyGHbSieaIyiMFcVkC/oM2IkmHNpzjG+dbce
	t7DFYCC/SDW/HpdRz+MbRXV4fgy4Tkesx3assRZwu7xnyDly8GWBnYjBMyi+F2n7BYEeVwbQZx3
	QbvntBs1seh/2eL6XrmEYL2O2Gb4jprE=
X-Gm-Gg: ATEYQzx742xxWNS/eC3DO+QqX4Zy3QcvvPoJPoWTEkDGPVJFu32qAYpTiFysUQIM5ND
	GIrqRUU1rMjU6SyfBRxzwYrd7lMZ58AlsCnhvP+7vQ3GSvtC/WYmA+Ima1aV2fBZnJYcm1zKViM
	49OOZ74VvLxGKDKkX9nkJjYWqXQIediD84qgS/ZKdWE6w21xYQEa1Q6wn+/NgmgWtc3Gs4KpHK3
	boZGARXFTcFaFKuhrtuI25XD0C5Y+sJhgkuCxALuScKIKdgEIhqxv378hmUwK+WEBeymksy6Egn
	ifbtQKATl8Ypx9I5Sz0vpuNFW8jqOUARFb/JKuBeYkEEuQjk
X-Received: by 2002:a53:b442:0:b0:64c:ed24:13da with SMTP id
 956f58d0204a3-64d142c7f83mr6741794d50.57.1772995318771; Sun, 08 Mar 2026
 11:41:58 -0700 (PDT)
MIME-Version: 1.0
References: <20260308-scatterlist-v1-1-39c4566b0bba@gmail.com> <20260308180826.GG1687929@ziepe.ca>
In-Reply-To: <20260308180826.GG1687929@ziepe.ca>
From: Julian Orth <ju.orth@gmail.com>
Date: Sun, 8 Mar 2026 19:41:48 +0100
X-Gm-Features: AaiRm51KnGt1Ocvg1JS9VA3riuFsR3OYVC6SxA9saLbhpmRB0QADzrk-wJNj6tE
Message-ID: <CAHijbEX=LN_ntp6zwsqy3sW7EB+E6cBCWnrKZb_RqdNG=Et_3g@mail.gmail.com>
To: Jason Gunthorpe <jgg@ziepe.ca>
X-Spamd-Bar: -----
X-MailFrom: ju.orth@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: YLONSRXPPF64VDSBG6YH7MRRXQJG3KSN
X-Message-ID-Hash: YLONSRXPPF64VDSBG6YH7MRRXQJG3KSN
X-Mailman-Approved-At: Mon, 20 Apr 2026 17:04:10 +0000
CC: Andrew Morton <akpm@linux-foundation.org>, Sakari Ailus <sakari.ailus@linux.intel.com>, Thomas Hellstrom <thellstrom@vmware.com>, linux-kernel@vger.kernel.org, Gerd Hoffmann <kraxel@redhat.com>, Vivek Kasireddy <vivek.kasireddy@intel.com>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] lib/scatterlist: fix sg_page_count and sg_dma_page_count
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/YLONSRXPPF64VDSBG6YH7MRRXQJG3KSN/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [1.69 / 15.00];
	DATE_IN_PAST(1.00)[1030];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_BASE64_TEXT(0.10)[];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), No valid DKIM,none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[3];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[juorth@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	NEURAL_SPAM(0.00)[0.893];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: E3591430B12
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gU3VuLCBNYXIgOCwgMjAyNiBhdCA3OjA44oCvUE0gSmFzb24gR3VudGhvcnBlIDxqZ2dAemll
cGUuY2E+IHdyb3RlOg0KPg0KPiBPbiBTdW4sIE1hciAwOCwgMjAyNiBhdCAwMjo1NToyN1BNICsw
MTAwLCBKdWxpYW4gT3J0aCB3cm90ZToNCj4gPiBBIHVzZXIgcmVwb3J0ZWQgbWVtb3J5IGNvcnJ1
cHRpb24gaW4gdGhlIEpheSB3YXlsYW5kIGNvbXBvc2l0b3IgWzFdLiBUaGUNCj4gPiBjb3JydXB0
aW9uIHN0YXJ0ZWQgd2hlbiBhcmNobGludXggZW5hYmxlZA0KPiA+IENPTkZJR19UUkFOU1BBUkVO
VF9IVUdFUEFHRV9TSE1FTV9IVUdFX1dJVEhJTl9TSVpFIGluIGtlcm5lbCA2LjE5LjUuDQo+ID4N
Cj4gPiBUaGUgY29tcG9zaXRvciB1c2VzIHVkbWFidWYgdG8gdXBsb2FkIG1lbW9yeSBmcm9tIG1l
bWZkcyB0byB0aGUgR1BVLg0KPiA+IFdoZW4gcnVubmluZyBhbiBhZmZlY3RlZCBrZXJuZWwsIHRo
ZSBmb2xsb3dpbmcgd2FybmluZ3MgYXJlIGxvZ2dlZDoNCj4gPg0KPiA+ICAgICBhIC0gYWRkcnMg
Pj0gbWF4X2VudHJpZXMNCj4gPiAgICAgV0FSTklORzogZHJpdmVycy9ncHUvZHJtL2RybV9wcmlt
ZS5jOjEwODkgYXQgZHJtX3ByaW1lX3NnX3RvX2RtYV9hZGRyX2FycmF5KzB4ODYvMHhjMCwgQ1BV
IzMxOiBqYXkvMTg2NA0KPiA+ICAgICBbLi4uXQ0KPiA+ICAgICBDYWxsIFRyYWNlOg0KPiA+ICAg
ICAgPFRBU0s+DQo+ID4gICAgICBhbWRncHVfYm9fbW92ZSsweDE4OC8weDgwMCBbYW1kZ3B1IDNi
NDUxNjQwMjM0OTQ4MDI3YzA5ZTliMzllNjUyMGJjN2U1NDcxY2ZdDQo+ID4NCj4gPiBEaXNhYmxp
bmcgdGhlIHVzZSBvZiBodWdlIHBhZ2VzIGF0IHJ1bnRpbWUgdmlhDQo+ID4gL3N5cy9rZXJuZWwv
bW0vdHJhbnNwYXJlbnRfaHVnZXBhZ2Uvc2htZW1fZW5hYmxlZCBmaXhlcyB0aGUgaXNzdWUuDQo+
ID4NCj4gPiB1ZG1hYnVmIGFsbG9jYXRlcyBhIHNjYXR0ZXJsaXN0IHdpdGggYnVmZmVyX3NpemUv
UEFHRV9TSVpFIGVudHJpZXMuIEVhY2gNCj4gPiBlbnRyeSBoYXMgYSBsZW5ndGggb2YgUEFHRV9T
SVpFLiBXaXRoIGh1Z2UgcGFnZXMgZGlzYWJsZWQsIGl0IGFwcGVhcnMNCj4gPiB0aGF0IHNnLT5v
ZmZzZXQgaXMgYWx3YXlzIDAuIFdpdGggaHVnZSBwYWdlcyBlbmFibGVkLCBzZy0+b2Zmc2V0IGlz
DQo+ID4gaW5jcmVtZW50ZWQgYnkgUEFHRV9TSVpFIHVudGlsIHRoZSBlbmQgb2YgdGhlIGh1Z2Ug
cGFnZS4NCj4NCj4gVGhpcyB3YXMgYnJva2VuIGJ5IDBjOGI5MWVmNTEwMCAoInVkbWFidWY6IGFk
ZCBiYWNrIHN1cHBvcnQgZm9yDQo+IG1hcHBpbmcgaHVnZXRsYiBwYWdlcyIpIHdoaWNoIHN3aXRj
aGVkIGZyb20gYSB3b3JraW5nDQo+IHNnX2FsbG9jX3RhYmxlX2Zyb21fcGFnZXMoKSB0byBhIG1l
c3NlZCB1cCBzZ19zZXRfcGFnZXMgbG9vcDoNCj4NCj4gKyAgICAgICBmb3JfZWFjaF9zZyhzZy0+
c2dsLCBzZ2wsIHVidWYtPnBhZ2Vjb3VudCwgaSkNCj4gKyAgICAgICAgICAgICAgIHNnX3NldF9w
YWdlKHNnbCwgdWJ1Zi0+cGFnZXNbaV0sIFBBR0VfU0laRSwgdWJ1Zi0+b2Zmc2V0c1tpXSk7DQo+
IFsuLl0NCj4gKyAgICAgICAgICAgICAgIHVidWYtPm9mZnNldHNbKnBnYnVmXSA9IHN1YnBnb2Zm
IDw8IFBBR0VfU0hJRlQ7DQo+DQo+IFdoaWNoIGlzIGp1c3QgdGhlIHdyb25nIHdheSB0byB1c2Ug
dGhlIHNjYXR0ZXJsaXN0IEFQSS4NCj4NCj4gVGhpcyB3YXMgbGF0ZXIgY2hhbmdlZCB0byBzZ19z
ZXRfZm9saW8oKSB3aGljaCBJJ20gYWxzbyBzdXNwZWN0aW5nIGhhcw0KPiBhIGJ1ZywgaXQgc2hv
dWxkIGJlIHNldHRpbmcgcGFnZV9saW5rIHRvIHRoZSBwcm9wZXIgdGFpbCBwYWdlIGJlY2F1c2UN
Cj4gYXMgeW91IG9ic2VydmUgcGFnZV9vZmZzZXQgbXVzdCBmYWxsIHdpdGhpbiAwIHRvIFBBR0Vf
U0laRS0xIHRvIG1ha2UNCj4gdGhlIGl0ZXJhdG9yIHdvcmsuDQo+DQo+IEkgdGhpbmsgdGhlIHdo
b2xlIGRlc2lnbiBoZXJlIGluIHVkbWFidWYgbWFrZXMgdmVyeSBsaXR0bGUgc2Vuc2UuIEl0DQo+
IHN0YXJ0cyBvdXQgd2l0aCBhbiBhY3R1YWwgbGlzdCBvZiBmb2xpb3MgdGhlbiBleHBhbmRzIHRo
ZW0gdG8gYSBwZXItNEsNCj4gZG91YmxlIGFycmF5IG9mIGZvbGlvL29mZnNldC4gVGhpcyBpcyBu
b25zZW5zaWNhbCwgaWYgaXQgd2FudHMgdG8NCj4gYnVpbGQgYSB3YXkgdG8gZGlyZWN0IGluZGV4
IHRoZSBtYXBwaW5nIGZvciBtbWFwIGl0IHNob3VsZCBqdXN0IGJ1aWxkDQo+IGl0c2VsZiBhIHBh
Z2UgKiBhcnJheSBsaWtlIHRoZSBjb2RlIHVzZWQgdG8gZG8gYW5kIGNvbnRpbnVlIHRvIHVzZQ0K
PiBzZ19hbGxvY190YWJsZV9mcm9tX3BhZ2VzKCkgd2hpY2ggYnVpbGRzIHByb3Blcmx5IGZvcm1l
ZCBzY2F0dGVybGlzdHMuDQo+DQo+IFRoaXMgd291bGQgc2F2ZSBtZW1vcnksIHVzZSB0aGUgQVBJ
cyBwcm9wZXJseSBhbmQgYnVpbGQgYSBjb3JyZWN0IGFuZA0KPiBvcHRpbWl6ZWQgc2NhdHRlcmxp
c3QgdG8gYm9vdC4gSXQgdXNlcyB2bWZfaW5zZXJ0X3BmbigpIGFuZA0KPiB2bV9tYXBfcmFtKCkg
YW55aG93IHNvIGl0IGRvZXNuJ3QgZXZlbiB1c2UgYSBmb2xpbyA6XA0KPg0KPiBIZXJlLCBhIGZl
dyBtaW5zIG9mIEFJIHNob3dzIHdoYXQgSSB0aGluayB1ZG1hYnVmIHNob3VsZCBsb29rIGxpa2Uu
IElmDQo+IHlvdSB3aXNoIHRvIHBlcnN1ZSB0aGlzIHBsZWFzZSBhZGQgbXkgc2lnbmVkLW9mZi1i
eSBhbmQgaGFuZGxlIHRlc3RpbmcNCj4gaXQgYW5kIGdldHRpbmcgaXQgbWVyZ2VkLiBJIHJldmll
d2VkIGl0IGVub3VnaCB0byBzZWUgaXQgd2FzIHNob3dpbmcNCj4gd2hhdCBJIHdhbnRlZC4NCg0K
SSBkb24ndCBrbm93IGVub3VnaCBhYm91dCBmb2xpb3Mgb3IgdWRtYWJ1ZiB0byBlZmZpY2llbnRs
eSB3b3JrIG9uIHRoaXMuDQoNCklmIG9mZnNldCBpcyBzdXBwb3NlZCB0byBiZSBpbiBbMCwgUEFH
RV9TSVpFLTFdLCB0aGVuIG15IHBhdGNoIGlzDQppbmNvcnJlY3QgYW5kIGl0J3MgcHJvYmFibHkg
YmV0dGVyIGlmIHNvbWUgb2YgdGhlIHVkbWFidWYgbWFpbnRhaW5lcnMNCnRha2UgYSBsb29rIGF0
IHRoaXMuIEkndmUgYWRkZWQgdGhlbSB0byBDQy4NCg0KPg0KPiBKYXNvbg0KPg0KPiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9kbWEtYnVmL3VkbWFidWYuYyBiL2RyaXZlcnMvZG1hLWJ1Zi91ZG1hYnVm
LmMNCj4gaW5kZXggOTRiOGVjYjg5MmJiMTcuLjVkNjg3ODYwNDQ1MTM3IDEwMDY0NA0KPiAtLS0g
YS9kcml2ZXJzL2RtYS1idWYvdWRtYWJ1Zi5jDQo+ICsrKyBiL2RyaXZlcnMvZG1hLWJ1Zi91ZG1h
YnVmLmMNCj4gQEAgLTI2LDEwICsyNiwxMCBAQCBNT0RVTEVfUEFSTV9ERVNDKHNpemVfbGltaXRf
bWIsICJNYXggc2l6ZSBvZiBhIGRtYWJ1ZiwgaW4gbWVnYWJ5dGVzLiBEZWZhdWx0IGlzDQo+DQo+
ICBzdHJ1Y3QgdWRtYWJ1ZiB7DQo+ICAgICAgICAgcGdvZmZfdCBwYWdlY291bnQ7DQo+IC0gICAg
ICAgc3RydWN0IGZvbGlvICoqZm9saW9zOw0KPiArICAgICAgIHN0cnVjdCBwYWdlICoqcGFnZXM7
DQo+DQo+ICAgICAgICAgLyoqDQo+IC0gICAgICAgICogVW5saWtlIGZvbGlvcywgcGlubmVkX2Zv
bGlvcyBpcyBvbmx5IHVzZWQgZm9yIHVucGluLg0KPiArICAgICAgICAqIFVubGlrZSBwYWdlcywg
cGlubmVkX2ZvbGlvcyBpcyBvbmx5IHVzZWQgZm9yIHVucGluLg0KPiAgICAgICAgICAqIFNvLCBu
cl9waW5uZWQgaXMgbm90IHRoZSBzYW1lIHRvIHBhZ2Vjb3VudCwgdGhlIHBpbm5lZF9mb2xpb3MN
Cj4gICAgICAgICAgKiBvbmx5IHNldCBlYWNoIGZvbGlvIHdoaWNoIGFscmVhZHkgcGlubmVkIHdo
ZW4gdWRtYWJ1Zl9jcmVhdGUuDQo+ICAgICAgICAgICogTm90ZSB0aGF0LCBzaW5jZSBhIGZvbGlv
IG1heSBiZSBwaW5uZWQgbXVsdGlwbGUgdGltZXMsIGVhY2ggZm9saW8NCj4gQEAgLTQxLDcgKzQx
LDYgQEAgc3RydWN0IHVkbWFidWYgew0KPg0KPiAgICAgICAgIHN0cnVjdCBzZ190YWJsZSAqc2c7
DQo+ICAgICAgICAgc3RydWN0IG1pc2NkZXZpY2UgKmRldmljZTsNCj4gLSAgICAgICBwZ29mZl90
ICpvZmZzZXRzOw0KPiAgfTsNCj4NCj4gIHN0YXRpYyB2bV9mYXVsdF90IHVkbWFidWZfdm1fZmF1
bHQoc3RydWN0IHZtX2ZhdWx0ICp2bWYpDQo+IEBAIC01NSw4ICs1NCw3IEBAIHN0YXRpYyB2bV9m
YXVsdF90IHVkbWFidWZfdm1fZmF1bHQoc3RydWN0IHZtX2ZhdWx0ICp2bWYpDQo+ICAgICAgICAg
aWYgKHBnb2ZmID49IHVidWYtPnBhZ2Vjb3VudCkNCj4gICAgICAgICAgICAgICAgIHJldHVybiBW
TV9GQVVMVF9TSUdCVVM7DQo+DQo+IC0gICAgICAgcGZuID0gZm9saW9fcGZuKHVidWYtPmZvbGlv
c1twZ29mZl0pOw0KPiAtICAgICAgIHBmbiArPSB1YnVmLT5vZmZzZXRzW3Bnb2ZmXSA+PiBQQUdF
X1NISUZUOw0KPiArICAgICAgIHBmbiA9IHBhZ2VfdG9fcGZuKHVidWYtPnBhZ2VzW3Bnb2ZmXSk7
DQo+DQo+ICAgICAgICAgcmV0ID0gdm1mX2luc2VydF9wZm4odm1hLCB2bWYtPmFkZHJlc3MsIHBm
bik7DQo+ICAgICAgICAgaWYgKHJldCAmIFZNX0ZBVUxUX0VSUk9SKQ0KPiBAQCAtNzMsOCArNzEs
NyBAQCBzdGF0aWMgdm1fZmF1bHRfdCB1ZG1hYnVmX3ZtX2ZhdWx0KHN0cnVjdCB2bV9mYXVsdCAq
dm1mKQ0KPiAgICAgICAgICAgICAgICAgaWYgKFdBUk5fT04ocGdvZmYgPj0gdWJ1Zi0+cGFnZWNv
dW50KSkNCj4gICAgICAgICAgICAgICAgICAgICAgICAgYnJlYWs7DQo+DQo+IC0gICAgICAgICAg
ICAgICBwZm4gPSBmb2xpb19wZm4odWJ1Zi0+Zm9saW9zW3Bnb2ZmXSk7DQo+IC0gICAgICAgICAg
ICAgICBwZm4gKz0gdWJ1Zi0+b2Zmc2V0c1twZ29mZl0gPj4gUEFHRV9TSElGVDsNCj4gKyAgICAg
ICAgICAgICAgIHBmbiA9IHBhZ2VfdG9fcGZuKHVidWYtPnBhZ2VzW3Bnb2ZmXSk7DQo+DQo+ICAg
ICAgICAgICAgICAgICAvKioNCj4gICAgICAgICAgICAgICAgICAqIElmIHRoZSBiZWxvdyB2bWZf
aW5zZXJ0X3BmbigpIGZhaWxzLCB3ZSBkbyBub3QgcmV0dXJuIGFuDQo+IEBAIC0xMDksMjIgKzEw
NiwxMSBAQCBzdGF0aWMgaW50IG1tYXBfdWRtYWJ1ZihzdHJ1Y3QgZG1hX2J1ZiAqYnVmLCBzdHJ1
Y3Qgdm1fYXJlYV9zdHJ1Y3QgKnZtYSkNCj4gIHN0YXRpYyBpbnQgdm1hcF91ZG1hYnVmKHN0cnVj
dCBkbWFfYnVmICpidWYsIHN0cnVjdCBpb3N5c19tYXAgKm1hcCkNCj4gIHsNCj4gICAgICAgICBz
dHJ1Y3QgdWRtYWJ1ZiAqdWJ1ZiA9IGJ1Zi0+cHJpdjsNCj4gLSAgICAgICBzdHJ1Y3QgcGFnZSAq
KnBhZ2VzOw0KPiAgICAgICAgIHZvaWQgKnZhZGRyOw0KPiAtICAgICAgIHBnb2ZmX3QgcGc7DQo+
DQo+ICAgICAgICAgZG1hX3Jlc3ZfYXNzZXJ0X2hlbGQoYnVmLT5yZXN2KTsNCj4NCj4gLSAgICAg
ICBwYWdlcyA9IGt2bWFsbG9jX29ianMoKnBhZ2VzLCB1YnVmLT5wYWdlY291bnQpOw0KPiAtICAg
ICAgIGlmICghcGFnZXMpDQo+IC0gICAgICAgICAgICAgICByZXR1cm4gLUVOT01FTTsNCj4gLQ0K
PiAtICAgICAgIGZvciAocGcgPSAwOyBwZyA8IHVidWYtPnBhZ2Vjb3VudDsgcGcrKykNCj4gLSAg
ICAgICAgICAgICAgIHBhZ2VzW3BnXSA9IGZvbGlvX3BhZ2UodWJ1Zi0+Zm9saW9zW3BnXSwNCj4g
LSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgdWJ1Zi0+b2Zmc2V0c1twZ10g
Pj4gUEFHRV9TSElGVCk7DQo+IC0NCj4gLSAgICAgICB2YWRkciA9IHZtX21hcF9yYW0ocGFnZXMs
IHVidWYtPnBhZ2Vjb3VudCwgLTEpOw0KPiAtICAgICAgIGt2ZnJlZShwYWdlcyk7DQo+ICsgICAg
ICAgdmFkZHIgPSB2bV9tYXBfcmFtKHVidWYtPnBhZ2VzLCB1YnVmLT5wYWdlY291bnQsIC0xKTsN
Cj4gICAgICAgICBpZiAoIXZhZGRyKQ0KPiAgICAgICAgICAgICAgICAgcmV0dXJuIC1FSU5WQUw7
DQo+DQo+IEBAIC0xNDYsMjIgKzEzMiwxOCBAQCBzdGF0aWMgc3RydWN0IHNnX3RhYmxlICpnZXRf
c2dfdGFibGUoc3RydWN0IGRldmljZSAqZGV2LCBzdHJ1Y3QgZG1hX2J1ZiAqYnVmLA0KPiAgew0K
PiAgICAgICAgIHN0cnVjdCB1ZG1hYnVmICp1YnVmID0gYnVmLT5wcml2Ow0KPiAgICAgICAgIHN0
cnVjdCBzZ190YWJsZSAqc2c7DQo+IC0gICAgICAgc3RydWN0IHNjYXR0ZXJsaXN0ICpzZ2w7DQo+
IC0gICAgICAgdW5zaWduZWQgaW50IGkgPSAwOw0KPiAgICAgICAgIGludCByZXQ7DQo+DQo+ICAg
ICAgICAgc2cgPSBremFsbG9jX29iaigqc2cpOw0KPiAgICAgICAgIGlmICghc2cpDQo+ICAgICAg
ICAgICAgICAgICByZXR1cm4gRVJSX1BUUigtRU5PTUVNKTsNCj4NCj4gLSAgICAgICByZXQgPSBz
Z19hbGxvY190YWJsZShzZywgdWJ1Zi0+cGFnZWNvdW50LCBHRlBfS0VSTkVMKTsNCj4gKyAgICAg
ICByZXQgPSBzZ19hbGxvY190YWJsZV9mcm9tX3BhZ2VzKHNnLCB1YnVmLT5wYWdlcywgdWJ1Zi0+
cGFnZWNvdW50LCAwLA0KPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
dWJ1Zi0+cGFnZWNvdW50IDw8IFBBR0VfU0hJRlQsDQo+ICsgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICBHRlBfS0VSTkVMKTsNCj4gICAgICAgICBpZiAocmV0IDwgMCkNCj4g
ICAgICAgICAgICAgICAgIGdvdG8gZXJyX2FsbG9jOw0KPg0KPiAtICAgICAgIGZvcl9lYWNoX3Nn
KHNnLT5zZ2wsIHNnbCwgdWJ1Zi0+cGFnZWNvdW50LCBpKQ0KPiAtICAgICAgICAgICAgICAgc2df
c2V0X2ZvbGlvKHNnbCwgdWJ1Zi0+Zm9saW9zW2ldLCBQQUdFX1NJWkUsDQo+IC0gICAgICAgICAg
ICAgICAgICAgICAgICAgICAgdWJ1Zi0+b2Zmc2V0c1tpXSk7DQo+IC0NCj4gICAgICAgICByZXQg
PSBkbWFfbWFwX3NndGFibGUoZGV2LCBzZywgZGlyZWN0aW9uLCAwKTsNCj4gICAgICAgICBpZiAo
cmV0IDwgMCkNCj4gICAgICAgICAgICAgICAgIGdvdG8gZXJyX21hcDsNCj4gQEAgLTIwNywxMiAr
MTg5LDggQEAgc3RhdGljIHZvaWQgdW5waW5fYWxsX2ZvbGlvcyhzdHJ1Y3QgdWRtYWJ1ZiAqdWJ1
ZikNCj4NCj4gIHN0YXRpYyBfX2Fsd2F5c19pbmxpbmUgaW50IGluaXRfdWRtYWJ1ZihzdHJ1Y3Qg
dWRtYWJ1ZiAqdWJ1ZiwgcGdvZmZfdCBwZ2NudCkNCj4gIHsNCj4gLSAgICAgICB1YnVmLT5mb2xp
b3MgPSBrdm1hbGxvY19vYmpzKCp1YnVmLT5mb2xpb3MsIHBnY250KTsNCj4gLSAgICAgICBpZiAo
IXVidWYtPmZvbGlvcykNCj4gLSAgICAgICAgICAgICAgIHJldHVybiAtRU5PTUVNOw0KPiAtDQo+
IC0gICAgICAgdWJ1Zi0+b2Zmc2V0cyA9IGt2emFsbG9jX29ianMoKnVidWYtPm9mZnNldHMsIHBn
Y250KTsNCj4gLSAgICAgICBpZiAoIXVidWYtPm9mZnNldHMpDQo+ICsgICAgICAgdWJ1Zi0+cGFn
ZXMgPSBrdm1hbGxvY19vYmpzKCp1YnVmLT5wYWdlcywgcGdjbnQpOw0KPiArICAgICAgIGlmICgh
dWJ1Zi0+cGFnZXMpDQo+ICAgICAgICAgICAgICAgICByZXR1cm4gLUVOT01FTTsNCj4NCj4gICAg
ICAgICB1YnVmLT5waW5uZWRfZm9saW9zID0ga3ZtYWxsb2Nfb2JqcygqdWJ1Zi0+cGlubmVkX2Zv
bGlvcywgcGdjbnQpOw0KPiBAQCAtMjI1LDggKzIwMyw3IEBAIHN0YXRpYyBfX2Fsd2F5c19pbmxp
bmUgaW50IGluaXRfdWRtYWJ1ZihzdHJ1Y3QgdWRtYWJ1ZiAqdWJ1ZiwgcGdvZmZfdCBwZ2NudCkN
Cj4gIHN0YXRpYyBfX2Fsd2F5c19pbmxpbmUgdm9pZCBkZWluaXRfdWRtYWJ1ZihzdHJ1Y3QgdWRt
YWJ1ZiAqdWJ1ZikNCj4gIHsNCj4gICAgICAgICB1bnBpbl9hbGxfZm9saW9zKHVidWYpOw0KPiAt
ICAgICAgIGt2ZnJlZSh1YnVmLT5vZmZzZXRzKTsNCj4gLSAgICAgICBrdmZyZWUodWJ1Zi0+Zm9s
aW9zKTsNCj4gKyAgICAgICBrdmZyZWUodWJ1Zi0+cGFnZXMpOw0KPiAgfQ0KPg0KPiAgc3RhdGlj
IHZvaWQgcmVsZWFzZV91ZG1hYnVmKHN0cnVjdCBkbWFfYnVmICpidWYpDQo+IEBAIC0zNDQsOCAr
MzIxLDggQEAgc3RhdGljIGxvbmcgdWRtYWJ1Zl9waW5fZm9saW9zKHN0cnVjdCB1ZG1hYnVmICp1
YnVmLCBzdHJ1Y3QgZmlsZSAqbWVtZmQsDQo+ICAgICAgICAgICAgICAgICB1YnVmLT5waW5uZWRf
Zm9saW9zW25yX3Bpbm5lZCsrXSA9IGZvbGlvc1tjdXJfZm9saW9dOw0KPg0KPiAgICAgICAgICAg
ICAgICAgZm9yICg7IHN1YnBnb2ZmIDwgZnNpemU7IHN1YnBnb2ZmICs9IFBBR0VfU0laRSkgew0K
PiAtICAgICAgICAgICAgICAgICAgICAgICB1YnVmLT5mb2xpb3NbdXBnY250XSA9IGZvbGlvc1tj
dXJfZm9saW9dOw0KPiAtICAgICAgICAgICAgICAgICAgICAgICB1YnVmLT5vZmZzZXRzW3VwZ2Nu
dF0gPSBzdWJwZ29mZjsNCj4gKyAgICAgICAgICAgICAgICAgICAgICAgdWJ1Zi0+cGFnZXNbdXBn
Y250XSA9IGZvbGlvX3BhZ2UoZm9saW9zW2N1cl9mb2xpb10sDQo+ICsgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHN1YnBnb2ZmID4+IFBBR0VfU0hJRlQpOw0K
PiAgICAgICAgICAgICAgICAgICAgICAgICArK3VwZ2NudDsNCj4NCj4gICAgICAgICAgICAgICAg
ICAgICAgICAgaWYgKCsrY3VyX3BnY250ID49IHBnY250KQ0KPg0KX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3Qg
LS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4g
ZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
