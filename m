Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id E156EAA9A21
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  5 May 2025 19:08:29 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E7ED844A85
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  5 May 2025 17:08:28 +0000 (UTC)
Received: from mail-qt1-f169.google.com (mail-qt1-f169.google.com [209.85.160.169])
	by lists.linaro.org (Postfix) with ESMTPS id D4D19440F6
	for <linaro-mm-sig@lists.linaro.org>; Mon,  5 May 2025 17:08:14 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20230601 header.b=thM57RUP;
	dmarc=pass (policy=reject) header.from=google.com;
	spf=pass (lists.linaro.org: domain of tjmercier@google.com designates 209.85.160.169 as permitted sender) smtp.mailfrom=tjmercier@google.com
Received: by mail-qt1-f169.google.com with SMTP id d75a77b69052e-4774611d40bso15981cf.0
        for <linaro-mm-sig@lists.linaro.org>; Mon, 05 May 2025 10:08:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1746464894; x=1747069694; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9Sl5qlzaLwkLoa7IyezxtoDVMCMI6oXTbeuYg/AGNhM=;
        b=thM57RUP7sQK/5zg1qJqBjBis+V+QzpGo7DqOk7ZNa+hNJH/6Pctvof8+YA8EctJfU
         Xyn4kv4JPm3pHP5amEuz06YWqtRhX8+zSXoEl3oHthvs4MzKj/fBgD51UqCWisYNBmf6
         zlhPeZL5LonnQsqoSz7jhk/0AaNhyOz6/e/Xh7oRHYTGQQTcdntCEn7D+i8R7DJaHsBG
         z7iFEAVllev+ZlZJmxOztU247kUge8bJ44w95ZHpkVX9mMrCHpfp2PnKXTCVPKSnDrXb
         8PanvnK6d2nWmv8ojgKc7NWH8CXttWxOLMOjBEic5vUJ8kLAbeZvmn7lMBCTzTXZz2ge
         ZLZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746464894; x=1747069694;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9Sl5qlzaLwkLoa7IyezxtoDVMCMI6oXTbeuYg/AGNhM=;
        b=Oif64/njHuzRSwKi73J5OH5ebdf3hY2BmQVBOyk+XjM9nVpwbgGjhjN1FstWhgCX6F
         l9XHnnlZs63P/xQw4KYFq4euhT8aGyRBnAXxHGDYhKqMTT6HuI09TYdinqhFfNn5Dc32
         QS99xkKubslspSsI23vXAfZT2WLA2g7HMDpgXaBGVAWTCpRnN1DDMDXGn+b5EbJE3FL/
         kaAsj07TrlJiHnuyei097STYfzcuYGBdz7DfCr5ce8ESaQ9Xi/DmCa/fa/LtmNREFEoW
         3uB8mXG751y7lE/VM+9cjuzQMstnKoHeD1GhD+tvoYONmoyxzJ49to1/bLhGjv9GWiYU
         fqNw==
X-Forwarded-Encrypted: i=1; AJvYcCXygVA4QqLPjj5kUuH1+UyFlUM2P9I9gmbNrQOAvI0zgJ6pVRFBkfZyix8CW2/sQBe4ZLb59eglMAcxhQPU@lists.linaro.org
X-Gm-Message-State: AOJu0YzTGiS9TY2WiKYyZU1y4GsIPmCKlBiwH0+yWT9l/yA+2i8zObiK
	X/6X0ul8xltDlgGnP2YIxxZC5BHp8CMmdN8tgHwa4KNt+TgFc/qY6Xf4V7o+IPTJutY6gIBKfdF
	+qAuOzmYIF1lwHMyB2mUy6qlDfzrY3tP7JFdk
X-Gm-Gg: ASbGncsaFf5PuAapsjMTpoTZewveno+ovFlCQJ9VP2EofM/qvONJK5kdRsvASIC2hrc
	tyXVCrNwPZctqRNaOazvQvVdKsaUXuMOJXQRMeX86vwcubvtbWLyISIKPtV4fD/TO1x1dW5Fv38
	1+LnWYWKocvOJbLvBnMQRH
X-Google-Smtp-Source: AGHT+IG9RbCE3tWojEKNPQx5yfnmDPTu6+mJWO90vxaZ+aQ1eZ9nWwk/u1wfl/9Tse3jgXBFSeLavdU4iiR/L3XP6AA=
X-Received: by 2002:a05:622a:586:b0:474:b44f:bb88 with SMTP id
 d75a77b69052e-490cdae6128mr590541cf.27.1746464894049; Mon, 05 May 2025
 10:08:14 -0700 (PDT)
MIME-Version: 1.0
References: <20250504224149.1033867-1-tjmercier@google.com>
 <20250504224149.1033867-3-tjmercier@google.com> <26ca8ddf-0d78-462f-a47d-a1128b2e058f@amd.com>
 <CABdmKX2iNk22h-KxUr4yvZO80yeRRjMfoC7yjiZ-aR_f1k402g@mail.gmail.com> <ec43f447-095e-4baf-8610-8279b565f162@amd.com>
In-Reply-To: <ec43f447-095e-4baf-8610-8279b565f162@amd.com>
From: "T.J. Mercier" <tjmercier@google.com>
Date: Mon, 5 May 2025 10:07:59 -0700
X-Gm-Features: ATxdqUF0j9WeLA-MxEEKVNTEyhm3r86boN77kWA0rwIEETtFwZuRS9Ux9s2lLAY
Message-ID: <CABdmKX2Tpv8vpDDZ+wcdrWuijfC1wkNhJQxVSC9trPkzBLN4tA@mail.gmail.com>
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: D4D19440F6
X-Spamd-Bar: ------
X-Spamd-Result: default: False [-6.60 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	R_DKIM_ALLOW(-0.20)[google.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.160.169:from];
	TAGGED_RCPT(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[26];
	RCVD_COUNT_ONE(0.00)[1];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	DNSWL_BLOCKED(0.00)[209.85.160.169:from];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[linaro.org,kernel.org,iogearbox.net,linux.dev,linuxfoundation.org,gmail.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,google.com,ffwll.ch,lwn.net,fomichev.me,fb.com];
	MISSING_XM_UA(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[google.com:+]
X-Rspamd-Action: no action
Message-ID-Hash: Q3JZGKL3C7NGEQ6SE2EWZYC7FQ3EWIFD
X-Message-ID-Hash: Q3JZGKL3C7NGEQ6SE2EWZYC7FQ3EWIFD
X-MailFrom: tjmercier@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: sumit.semwal@linaro.org, ast@kernel.org, daniel@iogearbox.net, andrii@kernel.org, martin.lau@linux.dev, skhan@linuxfoundation.org, song@kernel.org, alexei.starovoitov@gmail.com, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-doc@vger.kernel.org, bpf@vger.kernel.org, linux-kselftest@vger.kernel.org, android-mm@google.com, simona@ffwll.ch, corbet@lwn.net, eddyz87@gmail.com, yonghong.song@linux.dev, john.fastabend@gmail.com, kpsingh@kernel.org, sdf@fomichev.me, jolsa@kernel.org, mykolal@fb.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 2/6] bpf: Add dmabuf iterator
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/Q3JZGKL3C7NGEQ6SE2EWZYC7FQ3EWIFD/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gTW9uLCBNYXkgNSwgMjAyNSBhdCA5OjU24oCvQU0gQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0
aWFuLmtvZW5pZ0BhbWQuY29tPiB3cm90ZToNCj4NCj4gT24gNS81LzI1IDE4OjMzLCBULkouIE1l
cmNpZXIgd3JvdGU6DQo+ID4gT24gTW9uLCBNYXkgNSwgMjAyNSBhdCA0OjE34oCvQU0gQ2hyaXN0
aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPiB3cm90ZToNCj4gPj4NCj4gPj4g
T24gNS81LzI1IDAwOjQxLCBULkouIE1lcmNpZXIgd3JvdGU6DQo+ID4+PiBUaGUgZG1hYnVmIGl0
ZXJhdG9yIHRyYXZlcnNlcyB0aGUgbGlzdCBvZiBhbGwgRE1BIGJ1ZmZlcnMuDQo+ID4+Pg0KPiA+
Pj4gRE1BIGJ1ZmZlcnMgYXJlIHJlZmNvdW50ZWQgdGhyb3VnaCB0aGVpciBhc3NvY2lhdGVkIHN0
cnVjdCBmaWxlLiBBDQo+ID4+PiByZWZlcmVuY2UgaXMgdGFrZW4gb24gZWFjaCBidWZmZXIgYXMg
dGhlIGxpc3QgaXMgaXRlcmF0ZWQgdG8gZW5zdXJlIGVhY2gNCj4gPj4+IGJ1ZmZlciBwZXJzaXN0
cyBmb3IgdGhlIGR1cmF0aW9uIG9mIHRoZSBicGYgcHJvZ3JhbSBleGVjdXRpb24gd2l0aG91dA0K
PiA+Pj4gaG9sZGluZyB0aGUgbGlzdCBtdXRleC4NCj4gPj4+DQo+ID4+PiBTaWduZWQtb2ZmLWJ5
OiBULkouIE1lcmNpZXIgPHRqbWVyY2llckBnb29nbGUuY29tPg0KPiA+Pj4gLS0tDQo+ID4+PiAg
a2VybmVsL2JwZi9NYWtlZmlsZSAgICAgIHwgICAzICsNCj4gPj4+ICBrZXJuZWwvYnBmL2RtYWJ1
Zl9pdGVyLmMgfCAxMzQgKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrDQo+
ID4+PiAgMiBmaWxlcyBjaGFuZ2VkLCAxMzcgaW5zZXJ0aW9ucygrKQ0KPiA+Pj4gIGNyZWF0ZSBt
b2RlIDEwMDY0NCBrZXJuZWwvYnBmL2RtYWJ1Zl9pdGVyLmMNCj4gPj4+DQo+ID4+PiBkaWZmIC0t
Z2l0IGEva2VybmVsL2JwZi9NYWtlZmlsZSBiL2tlcm5lbC9icGYvTWFrZWZpbGUNCj4gPj4+IGlu
ZGV4IDcwNTAyZjAzOGI5Mi4uM2EzMzVjNTBlNmUzIDEwMDY0NA0KPiA+Pj4gLS0tIGEva2VybmVs
L2JwZi9NYWtlZmlsZQ0KPiA+Pj4gKysrIGIva2VybmVsL2JwZi9NYWtlZmlsZQ0KPiA+Pj4gQEAg
LTUzLDYgKzUzLDkgQEAgb2JqLSQoQ09ORklHX0JQRl9TWVNDQUxMKSArPSByZWxvX2NvcmUubw0K
PiA+Pj4gIG9iai0kKENPTkZJR19CUEZfU1lTQ0FMTCkgKz0gYnRmX2l0ZXIubw0KPiA+Pj4gIG9i
ai0kKENPTkZJR19CUEZfU1lTQ0FMTCkgKz0gYnRmX3JlbG9jYXRlLm8NCj4gPj4+ICBvYmotJChD
T05GSUdfQlBGX1NZU0NBTEwpICs9IGttZW1fY2FjaGVfaXRlci5vDQo+ID4+PiAraWZlcSAoJChD
T05GSUdfRE1BX1NIQVJFRF9CVUZGRVIpLHkpDQo+ID4+PiArb2JqLSQoQ09ORklHX0JQRl9TWVND
QUxMKSArPSBkbWFidWZfaXRlci5vDQo+ID4+PiArZW5kaWYNCj4gPj4+DQo+ID4+PiAgQ0ZMQUdT
X1JFTU9WRV9wZXJjcHVfZnJlZWxpc3QubyA9ICQoQ0NfRkxBR1NfRlRSQUNFKQ0KPiA+Pj4gIENG
TEFHU19SRU1PVkVfYnBmX2xydV9saXN0Lm8gPSAkKENDX0ZMQUdTX0ZUUkFDRSkNCj4gPj4+IGRp
ZmYgLS1naXQgYS9rZXJuZWwvYnBmL2RtYWJ1Zl9pdGVyLmMgYi9rZXJuZWwvYnBmL2RtYWJ1Zl9p
dGVyLmMNCj4gPj4+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0DQo+ID4+PiBpbmRleCAwMDAwMDAwMDAw
MDAuLjk2ODc2MmUxMWY3Mw0KPiA+Pj4gLS0tIC9kZXYvbnVsbA0KPiA+Pj4gKysrIGIva2VybmVs
L2JwZi9kbWFidWZfaXRlci5jDQo+ID4+PiBAQCAtMCwwICsxLDEzNCBAQA0KPiA+Pj4gKy8vIFNQ
RFgtTGljZW5zZS1JZGVudGlmaWVyOiBHUEwtMi4wLW9ubHkNCj4gPj4+ICsvKiBDb3B5cmlnaHQg
KGMpIDIwMjUgR29vZ2xlIExMQyAqLw0KPiA+Pj4gKyNpbmNsdWRlIDxsaW51eC9icGYuaD4NCj4g
Pj4+ICsjaW5jbHVkZSA8bGludXgvYnRmX2lkcy5oPg0KPiA+Pj4gKyNpbmNsdWRlIDxsaW51eC9k
bWEtYnVmLmg+DQo+ID4+PiArI2luY2x1ZGUgPGxpbnV4L2tlcm5lbC5oPg0KPiA+Pj4gKyNpbmNs
dWRlIDxsaW51eC9zZXFfZmlsZS5oPg0KPiA+Pj4gKw0KPiA+Pj4gK0JURl9JRF9MSVNUX1NJTkdM
RShicGZfZG1hYnVmX2J0Zl9pZCwgc3RydWN0LCBkbWFfYnVmKQ0KPiA+Pj4gK0RFRklORV9CUEZf
SVRFUl9GVU5DKGRtYWJ1Ziwgc3RydWN0IGJwZl9pdGVyX21ldGEgKm1ldGEsIHN0cnVjdCBkbWFf
YnVmICpkbWFidWYpDQo+ID4+PiArDQo+ID4+PiArc3RhdGljIHN0cnVjdCBkbWFfYnVmICpnZXRf
bmV4dF9kbWFidWYoc3RydWN0IGRtYV9idWYgKmRtYWJ1ZikNCj4gPj4+ICt7DQo+ID4+PiArICAg
ICBzdHJ1Y3QgZG1hX2J1ZiAqcmV0ID0gTlVMTDsNCj4gPj4+ICsNCj4gPj4+ICsgICAgIC8qDQo+
ID4+PiArICAgICAgKiBMb29rIGZvciB0aGUgZmlyc3QvbmV4dCBidWZmZXIgd2UgY2FuIG9idGFp
biBhIHJlZmVyZW5jZSB0by4NCj4gPj4+ICsgICAgICAqDQo+ID4+PiArICAgICAgKiBUaGUgbGlz
dCBtdXRleCBkb2VzIG5vdCBwcm90ZWN0IGEgZG1hYnVmJ3MgcmVmY291bnQsIHNvIGl0IGNhbiBi
ZQ0KPiA+Pj4gKyAgICAgICogemVyb2VkIHdoaWxlIHdlIGFyZSBpdGVyYXRpbmcuIFdlIGNhbm5v
dCBjYWxsIGdldF9kbWFfYnVmKCkgc2luY2UgdGhlDQo+ID4+PiArICAgICAgKiBjYWxsZXIgb2Yg
dGhpcyBwcm9ncmFtIG1heSBub3QgYWxyZWFkeSBvd24gYSByZWZlcmVuY2UgdG8gdGhlIGJ1ZmZl
ci4NCj4gPj4+ICsgICAgICAqLw0KPiA+Pj4gKyAgICAgbXV0ZXhfbG9jaygmZG1hYnVmX2xpc3Rf
bXV0ZXgpOw0KPiA+Pj4gKyAgICAgaWYgKGRtYWJ1Zikgew0KPiA+Pg0KPiA+PiBUaGF0IGxvb2tz
IGxpa2UgeW91IHRyeSB0byBtYW5nbGUgdGhlIHN0YXJ0IGFuZCBuZXh0IGZ1bmN0aW9uYWxpdHkg
aW4ganVzdCBvbmUgZnVuY3Rpb24uDQo+ID4+DQo+ID4+IEkgd291bGQganVzdCBpbmxpbmUgdGhh
dCBpbnRvIHRoZSBkbWFidWZfaXRlcl9zZXFfc3RhcnQoKSBhbmQgZG1hYnVmX2l0ZXJfc2VxX25l
eHQoKSBmdW5jdGlvbnMuDQo+ID4NCj4gPiBQcmltYXJpbHkgdGhpcyBpcyB0byBzaGFyZSBiZXR3
ZWVuIHRoZSBvcGVuIGNvZGVkIGl0ZXJhdG9yIChuZXh0DQo+ID4gcGF0Y2gpIGFuZCB0aGlzIG5v
cm1hbCBpdGVyYXRvciBzaW5jZSBJIGRpZG4ndCB3YW50IHRvIGR1cGxpY2F0ZSB0aGUNCj4gPiBz
YW1lIGxpc3QgdHJhdmVyc2FsIGNvZGUgYWNyb3NzIGJvdGggb2YgdGhlbS4NCj4NCj4gQWgsIG9r
IHRoYXQgbWFrZXMgYSBiaXQgbW9yZSBzZW5zZS4gSXQgd291bGQgc3RpbGwgYmUgbmljZXIgaWYg
aXQncyBpbiB0d28gZnVuY3Rpb25zIHNpbmNlIHRoZSBsb2dpYyBkb2Vzbid0IHNoYXJlIGFueXRo
aW5nIGNvbW1vbiBleGNlcHQgZm9yIHRha2luZyB0aGUgbG9jayBhcyBmYXIgYXMgSSBjYW4gc2Vl
ZS4NCj4NCj4gPj4NCj4gPj4NCj4gPj4+ICsgICAgICAgICAgICAgZG1hX2J1Zl9wdXQoZG1hYnVm
KTsNCj4gPj4+ICsgICAgICAgICAgICAgbGlzdF9mb3JfZWFjaF9lbnRyeV9jb250aW51ZShkbWFi
dWYsICZkbWFidWZfbGlzdCwgbGlzdF9ub2RlKSB7DQo+ID4+DQo+ID4+IFRoYXQgeW91IGNhbiBw
dXQgdGhlIERNQS1idWYgYW5kIHRoZW4gc3RpbGwgdXNlcyBpdCBpbiBsaXN0X2Zvcl9lYWNoX2Vu
dHJ5X2NvbnRpbnVlKCkgb25seSB3b3JrcyBiZWNhdXNlIHRoZSBtdXRleCBpcyBsb2NrZWQgaW4g
dGhlIGRlc3Ryb3kgcGF0aC4NCj4gPg0KPiA+IFl1cCwgdGhpcyB3YXMgZGVsaWJlcmF0ZS4NCj4g
Pj4NCj4gPj4NCj4gPj4gSSBzdHJvbmdseSBzdWdnZXN0IHRvIGp1c3QgcHV0IHRob3NlIHR3byBm
dW5jdGlvbnMgaW50byBkcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jIHJpZ2h0IG5leHQgdG8gdGhl
IF9fZG1hX2J1Zl9kZWJ1Z2ZzX2xpc3RfYWRkKCkgYW5kIF9fZG1hX2J1Zl9kZWJ1Z2ZzX2xpc3Rf
ZGVsKCkgZnVuY3Rpb25zLg0KPiA+DQo+ID4gQnkgdHdvIGZ1bmN0aW9ucywgeW91IG1lYW4gYSBn
ZXRfZmlyc3RfZG1hYnVmKHZvaWQpIGFuZCBhDQo+ID4gZ2V0X25leHRfZG1hYnVmKHN0cnVjdCBk
bWFfYnVmKik/IFRvIG1ha2UgdGhlIGRtYV9idWZfcHV0KCkgY2FsbCBhDQo+ID4gbGl0dGxlIGxl
c3Mgc2Nhcnkgc2luY2UgYWxsIHRoZSBtdXRleCBvcHMgYXJlIHJpZ2h0IHRoZXJlPw0KPg0KPiBZ
ZXMsIGV4YWN0bHkgdGhhdCdzIHRoZSBpZGVhLiBUaGUgY29tbWVudCBhYm92ZSBpcyBnb29kIHRv
IGhhdmUgYXMgd2VsbCwgYnV0IGl0IG9ubHkgd29ya3Mgb25lIHdheS4NCj4NCj4gSWYgc29tZWJv
ZHkgY2hhbmdlcyB0aGUgRE1BLWJ1ZiBjb2RlIHdpdGhvdXQgbG9va2luZyBhdCB0aGlzIGhlcmUg
d2UgYXJlIGJ1c3RlZC4NCg0KU291bmRzIGdvb2QsIHdpbGwgZG8uIFRoYW5rcy4NCg0KPg0KPiBS
ZWdhcmRzLA0KPiBDaHJpc3RpYW4uDQo+DQo+ID4+DQo+ID4+DQo+ID4+IEFwYXJ0IGZyb20gdGhv
c2Ugc3R5bGUgc3VnZ2VzdGlvbnMgbG9va3MgZ29vZCB0byBtZSBmcm9tIHRoZSB0ZWNobmljYWwg
c2lkZSwgYnV0IEknbSBub3QgYW4gZXhwZXJ0IGZvciB0aGUgQlBGIHN0dWZmLg0KPiA+Pg0KPiA+
PiBSZWdhcmRzLA0KPiA+PiBDaHJpc3RpYW4uDQo+ID4NCj4gPiBUaGFua3MgZm9yIHlvdXIgY29t
bWVudHMgYW5kIHJldmlld3MhDQo+ID4NCj4gPj4+ICsgICAgICAgICAgICAgICAgICAgICBpZiAo
ZmlsZV9yZWZfZ2V0KCZkbWFidWYtPmZpbGUtPmZfcmVmKSkgew0KPiA+Pj4gKyAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgcmV0ID0gZG1hYnVmOw0KPiA+Pj4gKyAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgYnJlYWs7DQo+ID4+PiArICAgICAgICAgICAgICAgICAgICAgfQ0KPiA+Pj4g
KyAgICAgICAgICAgICB9DQo+ID4+PiArICAgICB9IGVsc2Ugew0KPiA+Pj4gKyAgICAgICAgICAg
ICBsaXN0X2Zvcl9lYWNoX2VudHJ5KGRtYWJ1ZiwgJmRtYWJ1Zl9saXN0LCBsaXN0X25vZGUpIHsN
Cj4gPj4+ICsgICAgICAgICAgICAgICAgICAgICBpZiAoZmlsZV9yZWZfZ2V0KCZkbWFidWYtPmZp
bGUtPmZfcmVmKSkgew0KPiA+Pj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgcmV0ID0g
ZG1hYnVmOw0KPiA+Pj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgYnJlYWs7DQo+ID4+
PiArICAgICAgICAgICAgICAgICAgICAgfQ0KPiA+Pj4gKyAgICAgICAgICAgICB9DQo+ID4+PiAr
ICAgICB9DQo+ID4+PiArICAgICBtdXRleF91bmxvY2soJmRtYWJ1Zl9saXN0X211dGV4KTsNCj4g
Pj4+ICsgICAgIHJldHVybiByZXQ7DQo+ID4+PiArfQ0KPiA+Pj4gKw0KPiA+Pj4gK3N0YXRpYyB2
b2lkICpkbWFidWZfaXRlcl9zZXFfc3RhcnQoc3RydWN0IHNlcV9maWxlICpzZXEsIGxvZmZfdCAq
cG9zKQ0KPiA+Pj4gK3sNCj4gPj4+ICsgICAgIGlmICgqcG9zKQ0KPiA+Pj4gKyAgICAgICAgICAg
ICByZXR1cm4gTlVMTDsNCj4gPj4+ICsNCj4gPj4+ICsgICAgIHJldHVybiBnZXRfbmV4dF9kbWFi
dWYoTlVMTCk7DQo+ID4+PiArfQ0KPiA+Pj4gKw0KPiA+Pj4gK3N0YXRpYyB2b2lkICpkbWFidWZf
aXRlcl9zZXFfbmV4dChzdHJ1Y3Qgc2VxX2ZpbGUgKnNlcSwgdm9pZCAqdiwgbG9mZl90ICpwb3Mp
DQo+ID4+PiArew0KPiA+Pj4gKyAgICAgc3RydWN0IGRtYV9idWYgKmRtYWJ1ZiA9IHY7DQo+ID4+
PiArDQo+ID4+PiArICAgICArKypwb3M7DQo+ID4+PiArDQo+ID4+PiArICAgICByZXR1cm4gZ2V0
X25leHRfZG1hYnVmKGRtYWJ1Zik7DQo+ID4+PiArfQ0KPiA+Pj4gKw0KPiA+Pj4gK3N0cnVjdCBi
cGZfaXRlcl9fZG1hYnVmIHsNCj4gPj4+ICsgICAgIF9fYnBmX21kX3B0cihzdHJ1Y3QgYnBmX2l0
ZXJfbWV0YSAqLCBtZXRhKTsNCj4gPj4+ICsgICAgIF9fYnBmX21kX3B0cihzdHJ1Y3QgZG1hX2J1
ZiAqLCBkbWFidWYpOw0KPiA+Pj4gK307DQo+ID4+PiArDQo+ID4+PiArc3RhdGljIGludCBfX2Rt
YWJ1Zl9zZXFfc2hvdyhzdHJ1Y3Qgc2VxX2ZpbGUgKnNlcSwgdm9pZCAqdiwgYm9vbCBpbl9zdG9w
KQ0KPiA+Pj4gK3sNCj4gPj4+ICsgICAgIHN0cnVjdCBicGZfaXRlcl9tZXRhIG1ldGEgPSB7DQo+
ID4+PiArICAgICAgICAgICAgIC5zZXEgPSBzZXEsDQo+ID4+PiArICAgICB9Ow0KPiA+Pj4gKyAg
ICAgc3RydWN0IGJwZl9pdGVyX19kbWFidWYgY3R4ID0gew0KPiA+Pj4gKyAgICAgICAgICAgICAu
bWV0YSA9ICZtZXRhLA0KPiA+Pj4gKyAgICAgICAgICAgICAuZG1hYnVmID0gdiwNCj4gPj4+ICsg
ICAgIH07DQo+ID4+PiArICAgICBzdHJ1Y3QgYnBmX3Byb2cgKnByb2cgPSBicGZfaXRlcl9nZXRf
aW5mbygmbWV0YSwgaW5fc3RvcCk7DQo+ID4+PiArDQo+ID4+PiArICAgICBpZiAocHJvZykNCj4g
Pj4+ICsgICAgICAgICAgICAgcmV0dXJuIGJwZl9pdGVyX3J1bl9wcm9nKHByb2csICZjdHgpOw0K
PiA+Pj4gKw0KPiA+Pj4gKyAgICAgcmV0dXJuIDA7DQo+ID4+PiArfQ0KPiA+Pj4gKw0KPiA+Pj4g
K3N0YXRpYyBpbnQgZG1hYnVmX2l0ZXJfc2VxX3Nob3coc3RydWN0IHNlcV9maWxlICpzZXEsIHZv
aWQgKnYpDQo+ID4+PiArew0KPiA+Pj4gKyAgICAgcmV0dXJuIF9fZG1hYnVmX3NlcV9zaG93KHNl
cSwgdiwgZmFsc2UpOw0KPiA+Pj4gK30NCj4gPj4+ICsNCj4gPj4+ICtzdGF0aWMgdm9pZCBkbWFi
dWZfaXRlcl9zZXFfc3RvcChzdHJ1Y3Qgc2VxX2ZpbGUgKnNlcSwgdm9pZCAqdikNCj4gPj4+ICt7
DQo+ID4+PiArICAgICBzdHJ1Y3QgZG1hX2J1ZiAqZG1hYnVmID0gdjsNCj4gPj4+ICsNCj4gPj4+
ICsgICAgIGlmIChkbWFidWYpDQo+ID4+PiArICAgICAgICAgICAgIGRtYV9idWZfcHV0KGRtYWJ1
Zik7DQo+ID4+PiArfQ0KPiA+Pj4gKw0KPiA+Pj4gK3N0YXRpYyBjb25zdCBzdHJ1Y3Qgc2VxX29w
ZXJhdGlvbnMgZG1hYnVmX2l0ZXJfc2VxX29wcyA9IHsNCj4gPj4+ICsgICAgIC5zdGFydCAgPSBk
bWFidWZfaXRlcl9zZXFfc3RhcnQsDQo+ID4+PiArICAgICAubmV4dCAgID0gZG1hYnVmX2l0ZXJf
c2VxX25leHQsDQo+ID4+PiArICAgICAuc3RvcCAgID0gZG1hYnVmX2l0ZXJfc2VxX3N0b3AsDQo+
ID4+PiArICAgICAuc2hvdyAgID0gZG1hYnVmX2l0ZXJfc2VxX3Nob3csDQo+ID4+PiArfTsNCj4g
Pj4+ICsNCj4gPj4+ICtzdGF0aWMgdm9pZCBicGZfaXRlcl9kbWFidWZfc2hvd19mZGluZm8oY29u
c3Qgc3RydWN0IGJwZl9pdGVyX2F1eF9pbmZvICphdXgsDQo+ID4+PiArICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgIHN0cnVjdCBzZXFfZmlsZSAqc2VxKQ0KPiA+Pj4gK3sNCj4g
Pj4+ICsgICAgIHNlcV9wdXRzKHNlcSwgImRtYWJ1ZiBpdGVyXG4iKTsNCj4gPj4+ICt9DQo+ID4+
PiArDQo+ID4+PiArc3RhdGljIGNvbnN0IHN0cnVjdCBicGZfaXRlcl9zZXFfaW5mbyBkbWFidWZf
aXRlcl9zZXFfaW5mbyA9IHsNCj4gPj4+ICsgICAgIC5zZXFfb3BzICAgICAgICAgICAgICAgID0g
JmRtYWJ1Zl9pdGVyX3NlcV9vcHMsDQo+ID4+PiArICAgICAuaW5pdF9zZXFfcHJpdmF0ZSAgICAg
ICA9IE5VTEwsDQo+ID4+PiArICAgICAuZmluaV9zZXFfcHJpdmF0ZSAgICAgICA9IE5VTEwsDQo+
ID4+PiArICAgICAuc2VxX3ByaXZfc2l6ZSAgICAgICAgICA9IDAsDQo+ID4+PiArfTsNCj4gPj4+
ICsNCj4gPj4+ICtzdGF0aWMgc3RydWN0IGJwZl9pdGVyX3JlZyBicGZfZG1hYnVmX3JlZ19pbmZv
ID0gew0KPiA+Pj4gKyAgICAgLnRhcmdldCAgICAgICAgICAgICAgICAgPSAiZG1hYnVmIiwNCj4g
Pj4+ICsgICAgIC5mZWF0dXJlICAgICAgICAgICAgICAgID0gQlBGX0lURVJfUkVTQ0hFRCwNCj4g
Pj4+ICsgICAgIC5zaG93X2ZkaW5mbyAgICAgICAgICAgID0gYnBmX2l0ZXJfZG1hYnVmX3Nob3df
ZmRpbmZvLA0KPiA+Pj4gKyAgICAgLmN0eF9hcmdfaW5mb19zaXplICAgICAgPSAxLA0KPiA+Pj4g
KyAgICAgLmN0eF9hcmdfaW5mbyAgICAgICAgICAgPSB7DQo+ID4+PiArICAgICAgICAgICAgIHsg
b2Zmc2V0b2Yoc3RydWN0IGJwZl9pdGVyX19kbWFidWYsIGRtYWJ1ZiksDQo+ID4+PiArICAgICAg
ICAgICAgICAgUFRSX1RPX0JURl9JRF9PUl9OVUxMIH0sDQo+ID4+PiArICAgICB9LA0KPiA+Pj4g
KyAgICAgLnNlcV9pbmZvICAgICAgICAgICAgICAgPSAmZG1hYnVmX2l0ZXJfc2VxX2luZm8sDQo+
ID4+PiArfTsNCj4gPj4+ICsNCj4gPj4+ICtzdGF0aWMgaW50IF9faW5pdCBkbWFidWZfaXRlcl9p
bml0KHZvaWQpDQo+ID4+PiArew0KPiA+Pj4gKyAgICAgYnBmX2RtYWJ1Zl9yZWdfaW5mby5jdHhf
YXJnX2luZm9bMF0uYnRmX2lkID0gYnBmX2RtYWJ1Zl9idGZfaWRbMF07DQo+ID4+PiArICAgICBy
ZXR1cm4gYnBmX2l0ZXJfcmVnX3RhcmdldCgmYnBmX2RtYWJ1Zl9yZWdfaW5mbyk7DQo+ID4+PiAr
fQ0KPiA+Pj4gKw0KPiA+Pj4gK2xhdGVfaW5pdGNhbGwoZG1hYnVmX2l0ZXJfaW5pdCk7DQo+ID4+
DQo+DQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5h
cm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcK
VG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3Rz
LmxpbmFyby5vcmcK
