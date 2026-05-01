Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yJIrC1vO9GkDFAIAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 01 May 2026 18:01:31 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DCA94ADDD6
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 01 May 2026 18:01:30 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id EE8F4405CF
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  1 May 2026 15:54:45 +0000 (UTC)
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	by lists.linaro.org (Postfix) with ESMTPS id 449923F774
	for <linaro-mm-sig@lists.linaro.org>; Fri,  1 May 2026 15:54:43 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20251104 header.b=dk7UBD+i;
	dmarc=pass (policy=reject) header.from=google.com;
	spf=pass (lists.linaro.org: domain of tjmercier@google.com designates 209.85.128.50 as permitted sender) smtp.mailfrom=tjmercier@google.com;
	arc=pass ("google.com:s=arc-20240605:i=1")
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-4891b4934ffso117915e9.0
        for <linaro-mm-sig@lists.linaro.org>; Fri, 01 May 2026 08:54:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1777650882; cv=none;
        d=google.com; s=arc-20240605;
        b=LbvWiiB/D9Bvi7CN1xlWOHwyWGpsD2vlHKwBM+1FND0p/1ZtRcErgU7Xa3rBfeejjP
         SvCuJRvjh05i9c97+0OXzACoTg9SH8kUWzpIGzRqZa6hEqi3y71CU+GSpOAIl6MKk3ik
         DVxIjxQcA6aAhEj5JLgjJYcDeCV6sOS/c8852ZaNJpU/s8mbBSB6V6xQ1qJubfAOaMP4
         IWaDApBlXzNpeEcP2KN1b9t2FpZ5VtzTO19dWj5j8U+QgzT0GVFvlMhr4CCb8Z5sNxfn
         cDwxMAwBD8ofgV5lZFf8fGDS6AsbZsVfGRTfB1C3Y+oU/hkhvlP8HOI0rCuQQxSRYrL3
         ElLw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=jwUF0jTP/NOVRMHfd02ulbOWRiSGddGMyJftTXYHjDU=;
        fh=WeVvEPCCrqj8oBDNfmobajBLk9gotGNRJnl1jEp1fAU=;
        b=lfq+vCqqRI/KeVkW/XaTT4DxG7W8+Y/RmgbqaMZiPahdLwqNquoTsnFWWMU839tAiE
         bjKj9YPQiPj0B7xBJz0YxkncE+HBHOnATgNoCRsj3lzQ6UUFUj6QOmRJYE/dnUMqFnqB
         A/HjqvQ4aQ8uUqjOdgEf7ho82ORBa2fZycSlTDCyAbwW7OqFoS9k7Rn8JamjOzPKYjFy
         GB/ofogNbUODiSlnQF7Ewri+DA8rRlzjudXx7jYrmurkBks8Vvoi9vECLxjPDieUaagM
         09Wjpcx5jctI1EMBqg2X3xToe1Gi5b8yGtkY7B5N4Lzp3qCtFusUzY6G4U01ouUIZhRt
         oIww==;
        darn=lists.linaro.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20251104; t=1777650882; x=1778255682; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jwUF0jTP/NOVRMHfd02ulbOWRiSGddGMyJftTXYHjDU=;
        b=dk7UBD+i1cpiSKgFcv5yDmGGmA5U/urrmyPMVlTUGg7s1KM+ctpoBMGwgaa4zrjlA9
         hFiB1qM5V9a4g3y6UUqXMMc+0hHBYjSY0VUe/l0rtM0Kaj0yu5rFeC/rLzPjcTSirO/b
         i83po6Ryprb45tclpdBFN/Z5Dx4xmPt93E33r+lbNsBZKkk3rhAvNpSU54vImIJ6OQYx
         kH53pJugENg0GKeIDM+pN1d0OcuIL9HtgCQVIKhWy92Mzt7RBP/gsOzVknr4AJ07sO+5
         3+6U8EiuBzUv51PU575pMbptRLmpBOCiIkVzGsUGwczvOPv9Zl6OX+0/iwuR2CtqAy4A
         DRXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777650882; x=1778255682;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=jwUF0jTP/NOVRMHfd02ulbOWRiSGddGMyJftTXYHjDU=;
        b=Di7SdDmmpKso4NjpJUeleohv3iqXsJnQa57qIljW1hXV5N18yq27PpoUy35hnIl1rA
         0oeqVzMVIY16BvfkOb77657mx5HHcMlZ05gtsDp8FkGKjvBkKga6wQdkSdSDQ8Eks2Xt
         5Mo2jfafG7CHTX7vKGuidyXHHx1bRwwa8H/5LTHqSf8TFVTHpQP+RNAtZklelHnrLzYN
         hunKG75ziWQ17WkMxPgT//sP7y99fpQgkgRw0M4Tqp+TwMteWZBNh8CyApiq+SlV0jyz
         COUOiiEZw2VuTOH/fywjmSECRln8WupgnG7TzCnRfenBmS8/6kwi6gxjJyx7pxEceFI8
         Z2Tg==
X-Forwarded-Encrypted: i=1; AFNElJ9I//V8Pk9uTD4d15JqtWTzLWnoCxIqOwADedIAOPgXQuVL/zLXBjjjR2hxNYtDuQ4ujGxQYJOss8dw+/Y9@lists.linaro.org
X-Gm-Message-State: AOJu0YyG4yNYnF+XlL3iz+t5CDgmnHKZhHJxnrIxmJGwuBloSE1bNhIH
	TFR27osqsEgeD7Za01dMPEmWcMbo92xMoT3AHfDnmCfaey0kwuXrsRR+xB9bXE3312zzrfKRgYz
	9hoz+2CkC4glEd20P3/pVpbg6NOQpeOjjdDb4eyAU
X-Gm-Gg: AeBDievIzX5j3F0rnpb4xxZN1G1+SxgxiZLNswsykRsw2mWFIPNCbxRb8hmLd+D8xCh
	Dncv1m88vB6+CTQWHLEYYKGvGRPJhDQNDrhmT+Bl8xrY3Cb85SgFo3vom4Aksmst2dazqQmJrdO
	f+Eh3tGo9jZN4sRkvMgo9NVb0j/FMOonbB6tzXsJ3z9H7GRltwxEBynxux5f7/LTvaPoFK4YX7R
	LarT9h831T9OEydkuCdvIbUX5AnNrbZfgvt/Y6vwQ/bArIYIF7d3EcYZfQWiGERUO9s3oBIENgW
	3ytvUddonmlfKtMtw5tuXrRdHKTDjLAtvit4sNfhApOdesz49IH0KYcQKts=
X-Received: by 2002:a05:600c:588a:b0:48a:55dc:9c1e with SMTP id
 5b1f17b1804b1-48a8dbd8581mr1073235e9.10.1777650881744; Fri, 01 May 2026
 08:54:41 -0700 (PDT)
MIME-Version: 1.0
References: <20260406214938.24142-1-baohua@kernel.org> <a6d1c89a-3c71-4e06-adcb-56595071dcc2@amd.com>
 <CAGsJ_4xquCzQLbvpkC8arAN=9KhrAkdPdxnB=v85GvvQu23Xyg@mail.gmail.com>
 <9034246e-3971-4fad-94b7-80f4ad0e29db@amd.com> <CAGsJ_4z5EZoNMBVnu6sCkThyi9VTCeCH29buVecuySuv_Ry8fw@mail.gmail.com>
In-Reply-To: <CAGsJ_4z5EZoNMBVnu6sCkThyi9VTCeCH29buVecuySuv_Ry8fw@mail.gmail.com>
From: "T.J. Mercier" <tjmercier@google.com>
Date: Fri, 1 May 2026 08:54:29 -0700
X-Gm-Features: AVHnY4K9IQcLD4rvVzmAGkjSkrXkB2IVyJxFSBLPqAnQQvgeGWt-GzWKe8Eu21c
Message-ID: <CABdmKX3baqmBkZxMB6PTG6Sj5S9qi+RwVvwpmkLqKkqvfeZAUw@mail.gmail.com>
To: Barry Song <baohua@kernel.org>
X-Spamd-Bar: ----
Message-ID-Hash: NIY2KYOFSLZVZCBYONCRQRG4XKSDNQUH
X-Message-ID-Hash: NIY2KYOFSLZVZCBYONCRQRG4XKSDNQUH
X-MailFrom: tjmercier@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, Xueyuan Chen <Xueyuan.chen21@gmail.com>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf: system_heap: Optimize sg_table-to-pages conversion in vmap
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/NIY2KYOFSLZVZCBYONCRQRG4XKSDNQUH/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Rspamd-Queue-Id: 8DCA94ADDD6
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [5.09 / 15.00];
	DMARC_POLICY_REJECT(2.00)[google.com : SPF not aligned (relaxed),reject];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	R_DKIM_REJECT(1.00)[google.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	GREYLIST(0.00)[pass,body];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	DKIM_TRACE(0.00)[google.com:-];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[tjmercier@google.com,linaro-mm-sig-bounces@lists.linaro.org];
	FREEMAIL_CC(0.00)[amd.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,gmail.com,linaro.org,collabora.com,arm.com,google.com];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_SPAM(0.00)[0.040];
	DBL_BLOCKED_OPENRESOLVER(0.00)[amd.com:email,mail.gmail.com:mid,lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email]

T24gVGh1LCBBcHIgMzAsIDIwMjYgYXQgOToxNeKAr1BNIEJhcnJ5IFNvbmcgPGJhb2h1YUBrZXJu
ZWwub3JnPiB3cm90ZToNCj4NCj4gT24gV2VkLCBBcHIgMjIsIDIwMjYgYXQgMzoxMOKAr1BNIENo
cmlzdGlhbiBLw7ZuaWcNCj4gPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4gd3JvdGU6DQo+ID4N
Cj4gPiBPbiA0LzcvMjYgMTM6MjksIEJhcnJ5IFNvbmcgd3JvdGU6DQo+ID4gPiBPbiBUdWUsIEFw
ciA3LCAyMDI2IGF0IDM6NTjigK9QTSBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmln
QGFtZC5jb20+IHdyb3RlOg0KPiA+ID4+DQo+ID4gPj4gT24gNC82LzI2IDIzOjQ5LCBCYXJyeSBT
b25nIChYaWFvbWkpIHdyb3RlOg0KPiA+ID4+PiBGcm9tOiBYdWV5dWFuIENoZW4gPFh1ZXl1YW4u
Y2hlbjIxQGdtYWlsLmNvbT4NCj4gPiA+Pj4NCj4gPiA+Pj4gUmVwbGFjZSB0aGUgaGVhdnkgZm9y
X2VhY2hfc2d0YWJsZV9wYWdlKCkgaXRlcmF0b3IgaW4gc3lzdGVtX2hlYXBfZG9fdm1hcCgpDQo+
ID4gPj4+IHdpdGggYSBtb3JlIGVmZmljaWVudCBuZXN0ZWQgbG9vcCBhcHByb2FjaC4NCj4gPiA+
Pj4NCj4gPiA+Pj4gSW5zdGVhZCBvZiBpdGVyYXRpbmcgcGFnZSBieSBwYWdlLCB3ZSBub3cgaXRl
cmF0ZSB0aHJvdWdoIHRoZSBzY2F0dGVybGlzdA0KPiA+ID4+PiBlbnRyaWVzIHZpYSBmb3JfZWFj
aF9zZ3RhYmxlX3NnKCkuIEJlY2F1c2UgcGFnZXMgd2l0aGluIGEgc2luZ2xlIHNnIGVudHJ5DQo+
ID4gPj4+IGFyZSBwaHlzaWNhbGx5IGNvbnRpZ3VvdXMsIHdlIGNhbiBwb3B1bGF0ZSB0aGUgcGFn
ZSBhcnJheSB3aXRoIGEgaW4gYW4NCj4gPiA+Pj4gaW5uZXIgbG9vcCB1c2luZyBzaW1wbGUgcG9p
bnRlciBtYXRoLiBUaGlzIHNhdmUgYSBsb3Qgb2YgdGltZS4NCj4gPiA+Pj4NCj4gPiA+Pj4gVGhl
IFdBUk5fT04gY2hlY2sgaXMgYWxzbyBwdWxsZWQgb3V0IG9mIHRoZSBsb29wIHRvIHNhdmUgYnJh
bmNoDQo+ID4gPj4+IGluc3RydWN0aW9ucy4NCj4gPiA+Pj4NCj4gPiA+Pj4gUGVyZm9ybWFuY2Ug
cmVzdWx0cyBtYXBwaW5nIGEgMkdCIGJ1ZmZlciBvbiBSYWR4YSBPNjoNCj4gPiA+Pj4gLSBCZWZv
cmU6IH4xNDQwMDAwIG5zDQo+ID4gPj4+IC0gQWZ0ZXI6ICB+MjMyMDAwIG5zDQo+ID4gPj4+ICh+
ODQlIHJlZHVjdGlvbiBpbiBpdGVyYXRpb24gdGltZSwgb3IgfjYuMnggZmFzdGVyKQ0KPiA+ID4+
DQo+ID4gPj4gV2VsbCByZWFsIHF1ZXN0aW9uIGlzIHdoeSBkbyB5b3UgY2FyZSBhYm91dCB0aGUg
dm1hcCBwZXJmb3JtYW5jZT8NCj4gPiA+Pg0KPiA+ID4+IFRoYXQgc2hvdWxkIGJhc2ljYWxseSBv
bmx5IGJlIHVzZWQgZm9yIGZiZGV2IGVtdWxhdGlvbiAoZXhjZXB0IGZvciBWTUdGWCkgYW5kIHdl
IGFic29sdXRlbHkgZG9uJ3QgY2FyZSBhYm91dCBwZXJmb3JtYW5jZSB0aGVyZS4NCj4gPiA+DQo+
ID4gPiBJIGFncmVlIHRoYXQgaW4gbWFpbmxpbmUsIGRtYV9idWZfdm1hcCBpcyBub3QgdXNlZCB2
ZXJ5IG9mdGVuLg0KPiA+ID4gSGVyZeKAmXMgd2hhdCBJIHdhcyBhYmxlIHRvIGZpbmQ6DQo+ID4g
Pg0KPiA+ID4gICAxICAgMTYzOCAgZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYyA8PGRtYV9idWZf
dm1hcF91bmxvY2tlZD4+DQo+ID4gPiAgICAgICAgICAgICAgcmV0ID0gZG1hX2J1Zl92bWFwKGRt
YWJ1ZiwgbWFwKTsNCj4gPiA+ICAgIDIgICAgMzc2ICBkcml2ZXJzL2dwdS9kcm0vZHJtX2dlbV9z
aG1lbV9oZWxwZXIuYw0KPiA+ID4gPDxkcm1fZ2VtX3NobWVtX3ZtYXBfbG9ja2VkPj4NCj4gPiA+
ICAgICAgICAgICAgICByZXQgPSBkbWFfYnVmX3ZtYXAob2JqLT5pbXBvcnRfYXR0YWNoLT5kbWFi
dWYsIG1hcCk7DQo+ID4gPiAgICAzICAgICA4NSAgZHJpdmVycy9ncHUvZHJtL2V0bmF2aXYvZXRu
YXZpdl9nZW1fcHJpbWUuYw0KPiA+ID4gPDxldG5hdml2X2dlbV9wcmltZV92bWFwX2ltcGw+Pg0K
PiA+ID4gICAgICAgICAgICAgIHJldCA9IGRtYV9idWZfdm1hcChldG5hdml2X29iai0+YmFzZS5p
bXBvcnRfYXR0YWNoLT5kbWFidWYsICZtYXApOw0KPiA+ID4gICAgNCAgICA0MzMgIGRyaXZlcnMv
Z3B1L2RybS92bXdnZngvdm13Z2Z4X2JsaXQuYyA8PG1hcF9leHRlcm5hbD4+DQo+ID4gPiAgICAg
ICAgICAgICAgcmV0ID0gZG1hX2J1Zl92bWFwKGJvLT50Ym8uYmFzZS5kbWFfYnVmLCBtYXApOw0K
PiA+ID4gICAgNSAgICAgODggIGRyaXZlcnMvZ3B1L2RybS92bXdnZngvdm13Z2Z4X2dlbS5jIDw8
dm13X2dlbV92bWFwPj4NCj4gPiA+ICAgICAgICAgICAgICByZXQgPSBkbWFfYnVmX3ZtYXAob2Jq
LT5pbXBvcnRfYXR0YWNoLT5kbWFidWYsIG1hcCk7DQo+ID4gPg0KPiA+ID4gSG93ZXZlciwgaW4g
dGhlIEFuZHJvaWQgZWNvc3lzdGVtLCBzeXN0ZW1faGVhcCBhbmQgc2ltaWxhciBoZWFwcw0KPiA+
ID4gYXJlIHdpZGVseSB1c2VkIGFjcm9zcyBjYW1lcmEsIE5QVSwgYW5kIG1lZGlhIGRyaXZlcnMu
IE1hbnkgb2YgdGhlc2UNCj4gPiA+IGRyaXZlcnMgYXJlIG5vdCBpbiBtYWlubGluZSBidXQgZG8g
dXNlIHZtYXAoKSBpbiByZWFsIGNvZGUgcGF0aHMuDQo+ID4NCj4gPiBXZWxsIG91dCBvZiB0cmVl
IGRyaXZlcnMgYXJlIG5vdCBhIGp1c3RpZmljYXRpb24gdG8gbWFrZSBhbiB1cHN0cmVhbSBjaGFu
Z2VzLg0KPiA+DQo+ID4gQXBhcnQgZnJvbSBhIGhhbmRmdWwgb2Ygd29ya2Fyb3VuZHMgd2hpY2gg
bmVlZCB0byBDUFUgYWNjZXNzIGFzIGZhbGxiYWNrIERNQS1idWYgdm1hcCBpcyBvbmx5IHVzZWQg
dG8gcHJvdmlkZSBmYiBkZXYgZW11bGF0aW9uLg0KPiA+DQo+ID4gVGhlIHZtYXAgaW50ZXJmYWNl
IGhhcyBhbHJlYWR5IGdpdmVuIHVzIHF1aXRlIGEgaGVhZGFjaGUgaW4gdGhlIGZpcnN0IHBsYWNl
IGFuZCB0aGVyZSBhcmUgYSBjb3VwbGUgb2YgdW5yZXNvbHZlZCBwcm9ibGVtcyByZWdhcmRpbmcg
c3luY2hyb25pemF0aW9uIGFuZCBjb2hlcmVuY3kuDQo+ID4NCj4gPiBXaGVuIGEgZHJpdmVyIHdv
dWxkIGJlIHB1c2hlZCB1cHN0cmVhbSB3aGljaCBtYWtlcyBzbyBmcmVxdWVudCB1c2Ugb2YgdGhl
IGRtYV9idWZfdm1hcCBmdW5jdGlvbiB0aGF0IGl0IG1hdHRlcnMgZm9yIHRoZSBwZXJmb3JtYW5j
ZSBJIHRoaW5rIHRoZXJlIHdvdWxkIGJlIHB1c2ggYmFjayBvbiB0aGF0IGFuZCB0aGUgZHJpdmVy
IGRldmVsb3BlciB3b3VsZCByZXF1aXJlIGEgdmVyeSBnb29kIGV4cGxhbmF0aW9uIHdoeSB0aGF0
IGlzIG5lY2Vzc2FyeS4NCj4gPg0KPiA+IFNvIGZvciBub3cgSSBoYXZlIHRvIHJlamVjdCB0aGF0
IHBhdGNoLg0KPg0KPiBXZWxsLCBpdCBkb2VzbuKAmXQgc2VlbSB0byBpbmNyZWFzZSBjb21wbGV4
aXR5LCBhbmQgdGhlIGNvZGUgaXMgcXVpdGUgZWFzeQ0KPiB0byB1bmRlcnN0YW5kLg0KDQpJIGFn
cmVlIHdpdGggdGhpcy4gVGhpcyBjaGFuZ2UgaW50cm9kdWNlcyBiYXNpY2FsbHkgbm8gZG93bnNp
ZGVzIGZvcg0KdXBzdHJlYW0sIGV2ZW4gaWYgaXQgcHJpbWFyaWx5IGJlbmVmaXRzIGEgcmFyZSB1
c2UgY2FzZS4gU2luY2UNCmRtYV9idWZfdm1hcCBpcyBleHBvcnRlZCBmb3IgZHJpdmVyIHVzZSwg
d2h5IG5vdCBlbmhhbmNlIHRoZQ0KcGVyZm9ybWFuY2UgZm9yIGFsbCBjYWxsZXJzPw0KDQotVC5K
Lg0KDQo+IEl0IHdvdWxkIGJlIGdyZWF0IGlmIHRoZSBjb21tdW5pdHkgY291bGQgYmUgbW9yZSB3
ZWxjb21pbmcNCj4gdG8gZGV2ZWxvcGVycyB3aG8gYXJlIGp1c3QgZ2V0dGluZyBpbnZvbHZlZCwg
cmF0aGVyIHRoYW4gZGlzY291cmFnaW5nIHRoZW0uDQo+DQo+IEFwcGFyZW50bHksIG5vIG9uZSBj
YW4gY29udHJvbCB3aGV0aGVyIHRoZSBzb3VyY2UgY29kZSBvZiB0aG9zZSBrZXJuZWwNCj4gbW9k
dWxlcyB3aWxsIGJlIHVwc3RyZWFtZWQgZXhjZXB0IHRoZSB2ZW5kb3JzIHRoZW1zZWx2ZXMsIGJ1
dCBwcm9kdWN0cw0KPiBjYW4gc3RpbGwgYmVuZWZpdCBmcm9tIHRoZSBjb21tb24ga2VybmVsLg0K
Pg0KPiBCZXN0IFJlZ2FyZHMNCj4gQmFycnkNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1t
bS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxp
bmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
