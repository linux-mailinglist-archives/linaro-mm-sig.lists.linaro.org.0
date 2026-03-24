Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cOC3EIxi5mmavgEAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:29:48 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 17A2A431478
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:29:48 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1BF6A3F9B3
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 17:29:47 +0000 (UTC)
Received: from mail-qt1-f171.google.com (mail-qt1-f171.google.com [209.85.160.171])
	by lists.linaro.org (Postfix) with ESMTPS id 466833F76C
	for <linaro-mm-sig@lists.linaro.org>; Tue, 24 Mar 2026 18:32:28 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20251104 header.b=ugsk6rYa;
	arc=pass ("google.com:s=arc-20240605:i=1");
	spf=pass (lists.linaro.org: domain of smostafa@google.com designates 209.85.160.171 as permitted sender) smtp.mailfrom=smostafa@google.com;
	dmarc=pass (policy=reject) header.from=google.com
Received: by mail-qt1-f171.google.com with SMTP id d75a77b69052e-50b6c45781aso87961cf.0
        for <linaro-mm-sig@lists.linaro.org>; Tue, 24 Mar 2026 11:32:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1774377148; cv=none;
        d=google.com; s=arc-20240605;
        b=lAG/kUFhDCxAYETgXK9nLQMf0VMUCVwJ9tDljHIGlzfbYDd6KVMNRA1fgoaDxNa5gl
         s2yNkgaa+ZAQ7v9jetNLgFrLTomda09oN7utup+k4Q02nMZxbCew2H9qt3UuT1RS7Yh5
         XYz48pOnu3EgxS78QeOJUCRi+EcdYzUteRVonUUpN1E7d6F1f/osuAN4RE/n+Vt9GJUl
         3ryCfh//iAuyJjCkmWKuQIuP7yF5DTe5bMmMgIrC8W0wGh3VN2CF5aGsdTE0MD+Gvt7/
         ASWS7uY3ISPyH53vjejQSBSO2VcmskY+yVx48fUnklwF5FeBrRgOvfSKT9Cc1Z1tNsi8
         M86Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=capQ/2P6O0wzFj3JGECHvmPV76dOzNCALYeUIxrihD8=;
        fh=DPSya5t+t+hMizXNURVyKdAQxo9TqcMwhc+qyjOs9d8=;
        b=GluDicWFNfodZThaJbOlZjALTDB9Oj5Ph05pwKnXsziPA+y9jH+deCffj1SBBnso3t
         CyFn3M9eJ8CkS/ddca7UAaiGzMvLGFKIFMHbsFYxOaeeS3j/4oIXBSeWW6HhA1oq2l38
         YwgIY355TxXgOSJY8ux3dI3mcrSODEXPAVBhXO2r3Btaydo0GYeGj0xwiSkyotMd0E5j
         rF0V+SreO8hl/RkfK1xc6wYGqDwBG6ono8KqrgDEX+3X8WJZLSKM1uf3PYy7aZa1DGSE
         etOdYkamZBDKothF7QA7QbRzFL56h5o91jd9s+NNW//4B55PkORhxJ3DNwsBWyj+4NJ9
         b6+g==;
        darn=lists.linaro.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20251104; t=1774377148; x=1774981948; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=capQ/2P6O0wzFj3JGECHvmPV76dOzNCALYeUIxrihD8=;
        b=ugsk6rYai88i0FoB6dqvf8DYGfIERuoZ4rnOFfA/duT4oFoU54WPRZIVO/93Xsi0LR
         z2n9ehVuufAJZTS39M/IspEzqgcTpYYuRiT2w6RBTCkpasX/7joMACEN51j0w92TJlYq
         JKoA/CXrsTSI1N3XOhSBT7ElRJ1w7+JBnw0tkfWHONQlLeHh50I884SDzS5Rjsj2vbMd
         SlrQobri0vJraya3pzDv26osAxL4V2H6h0qOjah8EptXXugV5XRFpwX28Us6hJqKh1r1
         fEXn3Ae23u4DzUFZUr5rDwSjQKofGWS/PL9XmfQJ5vYrvHAw/pJ0WMWjxwTbkyoRHEV1
         7QFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774377148; x=1774981948;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=capQ/2P6O0wzFj3JGECHvmPV76dOzNCALYeUIxrihD8=;
        b=qiyDEz+Qvo/0fv8JycyU0ajC35f+muI3sekQcOUrTs6VoNVaM54wHFnkzFSkNU4hur
         uZMX2AWRw2WUTcNPmsMikJU/qms9+wyssxvXvwys4dYUnTqhUlYjryvTdWEgYQ8+umpR
         G5NESgVjApbp7m/MfAbVaTO0OEZTi8eLcNgQe3IBoeRRNkz6UiC+loKxf2i99BPaxpRH
         pjalNE05MoE3QUvDSvtX5AjbinEdKiLbU0QBpt/ztxDlHUo/ZXrI0fGK75XaP3/CPDPE
         pbmVsfVcetX9sYY2Mb2QV5gipcpWWvfDwkSypgLGOcxLr0ocGdZZqk6S0JS9sdRtE587
         jsSg==
X-Forwarded-Encrypted: i=1; AJvYcCXMK88h/o6fe4DuqcuqK8JEcYRb5Yshkz6RULBjECZS43aC7+qs0n0De3muhs+xMINAlhOQMquqbSv4/fgl@lists.linaro.org
X-Gm-Message-State: AOJu0Yz7etq6qfJIItgRdPsMB2GGyqMnsDob1sETNQXe1HAlgQcDTayz
	swkoQGLdOM8PDTmhIdOeQhPm91LKGc7D6cnlN4/T/ncBEy883AWrl8VgbHE9cHQcZHv7sQqRLq1
	DsPuu/d5IdCkJKvQ59/sUidWnrKTF979WJUwQA6lz
X-Gm-Gg: ATEYQzwlv3MhRNpoTjIvNyxipEGM7zQNu2+S3Jz/RxvhgWr2r9OoG500dVQ7W1tm6Rs
	z9qfLQMTVOddNBpOQy81Rk+uVFulLvF97wu00QDglleQ0Q4lBA92U3MX+GvfRAV3UYbc//XIutH
	ERMerIdAOMjYKQouuZoFwB4uNEyU1fBRStSIr4Tgo/Lz0dvPBxisyaJPyFAsXUvzgR15Tm07wcV
	UbiDXsXoo42vExjpy0nd5jFU+oKuYF59pj8uVSN/aDtcCC25d3047MN939MqhMOnnsEsWFTZrmu
	GWHaHfNp3ajzCcuSHJn45/aqRpvG9DL8qXJCxhg=
X-Received: by 2002:a05:622a:a94a:20b0:509:14f0:bff2 with SMTP id
 d75a77b69052e-50b8221e273mr1541411cf.12.1774377147169; Tue, 24 Mar 2026
 11:32:27 -0700 (PDT)
MIME-Version: 1.0
References: <20260305123641.164164-1-jiri@resnulli.us> <ablV_f_l7wD2m63E@google.com>
 <20260324120057.GC8437@ziepe.ca> <CAFgf54qoFhvVR2yfROGaTJmLcjuLACswVFv=trqgJwGb_DB3zA@mail.gmail.com>
 <20260324122416.GD8437@ziepe.ca> <CAFgf54qwA2D1Xa4rnruJ4Nfp5BsB=T_pB3hzz9HBjh22TL17uA@mail.gmail.com>
 <20260324175717.GE8437@ziepe.ca>
In-Reply-To: <20260324175717.GE8437@ziepe.ca>
From: Mostafa Saleh <smostafa@google.com>
Date: Tue, 24 Mar 2026 18:32:16 +0000
X-Gm-Features: AQROBzDqJGwLGVWhhqLuGOrSUtCUROoHSgJZU7HhysiSVnX9qJjxIyI0nzG2rDw
Message-ID: <CAFgf54pB1pikjtx588khBAXDg4vHne+tJL6gBqF64buX0K93mQ@mail.gmail.com>
To: Jason Gunthorpe <jgg@ziepe.ca>
X-Spamd-Bar: ----
X-MailFrom: smostafa@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: H2542WOG2GDYA3AIEL4A23VELQF4M7E4
X-Message-ID-Hash: H2542WOG2GDYA3AIEL4A23VELQF4M7E4
X-Mailman-Approved-At: Mon, 20 Apr 2026 17:29:41 +0000
CC: Jiri Pirko <jiri@resnulli.us>, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, iommu@lists.linux.dev, linux-media@vger.kernel.org, sumit.semwal@linaro.org, benjamin.gaignard@collabora.com, Brian.Starkey@arm.com, jstultz@google.com, tjmercier@google.com, christian.koenig@amd.com, robin.murphy@arm.com, leon@kernel.org, sean.anderson@linux.dev, ptesarik@suse.com, catalin.marinas@arm.com, aneesh.kumar@kernel.org, suzuki.poulose@arm.com, steven.price@arm.com, thomas.lendacky@amd.com, john.allen@amd.com, ashish.kalra@amd.com, suravee.suthikulpanit@amd.com, linux-coco@lists.linux.dev
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH net-next v3 0/2] dma-buf: heaps: system: add an option to allocate explicitly decrypted memory
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/H2542WOG2GDYA3AIEL4A23VELQF4M7E4/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [3.59 / 15.00];
	DMARC_POLICY_REJECT(2.00)[google.com : SPF not aligned (relaxed), No valid DKIM,reject];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	DATE_IN_PAST(1.00)[646];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[25];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	NEURAL_SPAM(0.00)[0.928];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FROM_NEQ_ENVFROM(0.00)[smostafa@google.com,linaro-mm-sig-bounces@lists.linaro.org];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email,ziepe.ca:email,mail.gmail.com:mid]
X-Rspamd-Queue-Id: 17A2A431478
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gVHVlLCBNYXIgMjQsIDIwMjYgYXQgNTo1N+KAr1BNIEphc29uIEd1bnRob3JwZSA8amdnQHpp
ZXBlLmNhPiB3cm90ZToNCj4NCj4gT24gVHVlLCBNYXIgMjQsIDIwMjYgYXQgMDU6MzY6MjNQTSAr
MDAwMCwgTW9zdGFmYSBTYWxlaCB3cm90ZToNCj4gPiBCdXQgaXQncyBub3QgYWJvdXQgZHJpdmVy
cyBpbiB0aGF0IGNhc2UsIGl0J3MgYWJvdXQgbWFueSBwbGFjZXMNCj4gPiAoU1dJT1RMQiBhbmQg
RE1BLWRpcmVjdCkgY2FsbGluZyBzZXRfbWVtb3J5X2RlY3J5cHRlZCgpIHdpdGhvdXQgY2xlYXIN
Cj4gPiBvd25lcnNoaXAgc28gaW4gc29tZSBjYXNlcyB0aGV5IHN0ZXAgb24gZWFjaCBvdGhlcidz
IHRvZXMsIGFuZCBJIGRvbid0DQo+ID4gdGhpbmsgdGhhdCB3aWxsIGdldCBzaW1wbGVyIHdpdGgg
eWV0IGFub3RoZXIgY2FsbGVyIGluIHRoaXMgc2VyaWVzDQo+DQo+IEkgZG9uJ3QgdW5kZXJzdGFu
ZCBob3cgdGhpcyBjYW4gYmUsIG93bmVyc2hpcCBpcyBjbGVhci4gU1dJT1RMQiBvd25zDQo+IHRo
ZSBidWZmZXIsIGRtYSBhbGxvYyBjb2hlcmVudCBvd25zIHRoZSBidWZmZXIsIHVzZXIgb3ducyB0
aGUNCj4gYnVmZmVyLiBUaGVyZSBzaG91bGQgYmUgbm8gb3RoZXIgY2FzZXMsIGFuZCB0aGV5IGRv
bid0IHN0ZXAgb24gZWFjaA0KPiBvdGhlciB1bmxlc3MgdGhlIEFQSXMgYXJlIGJlaW5nIHVzZWQg
d3JvbmcuDQo+DQoNCkxvZ2ljYWxseSwgdGhhdCdzIHRoZSBjYXNlLCBidXQgdGhlIERNQS1kaXJl
Y3QgY29kZSBjdXJyZW50bHkgbG9zZXMNCnRoaXMgaW5mb3JtYXRpb24gYW5kIGFzc3VtZXMgaXQg
Y2FuIGVuY3J5cHQvZGVjcnlwdCBhbnkgbWVtb3J5IGV2ZW4NCnRoZSBTV0lPVExCIG9uZS4NClRo
YXQncyB3aGF0IEkgYW0gZml4aW5nIGluIG15IHNlcmllcy4gV2hlbiBJIHJlc3BpbiwgSSBjYW4g
dHJ5IHRvDQppbnRyb2R1Y2Ugc29tZSBtb3JlIGhlbHBlcnMgYXJvdW5kIHRoYXQgdG8gbWFrZSBp
dCBlYXNpZXIgdG8gaW50ZWdyYXRlDQpuZXcgY2FzZXMuDQoNClRoYW5rcywNCk1vc3RhZmENCg0K
PiA+IEkgYW0gZmluZSB3aXRoIHRoZSBBUEkgZGVzaWduIHlvdSBtZW50aW9uZWQsIGJ1dCBJIGJl
bGlldmUgdGhhdCBpdA0KPiA+IG5lZWRzIGNsZWFyIGRvY3VtZW50YXRpb24gc3BlY2lmeWluZyB3
aG8gaXMgcmVzcG9uc2libGUgZm9yDQo+ID4gZGVjcnlwdGlvbi4gVGhlIGNvZGUgc2hvdWxkIHBy
b3ZpZGUgd3JhcHBlcnMgY2hlY2tpbmcgZm9yIHRoZXNlIGNhc2VzDQo+ID4gaW5zdGVhZCBvZiBo
YXZpbmcgaXNfc3dpb3RsYl9mb3JfYWxsb2MoKSBhbmQgZm9yY2VfZG1hX3VuZW5jcnlwdGVkKCkN
Cj4gPiBldmVyeXdoZXJlIGluIERNQS1kaXJlY3QuDQo+DQo+IFJlZG9pbmd0IGhvdyBkbWEtYXBp
IHdvcmtzIGludGVybmFsbHkgaXMgc29tZSBvdGhlciBwcm9qZWN0Li4uIEl0DQo+IHdvdWxkIGJl
IG5pY2UgaWYgc3dpb3RsYiB3b3VsZCBzb3J0IG9mIHJlY3Vyc2l2ZWx5IERNQSBtYXAgdXNpbmcg
dGhlDQo+IG5ldyBmbGFnIGluc3RlYWQgb2Ygb3BlbiBjb2RpbmcgaXQgYnV0IHRoYXQgaXMgcHJl
dHR5IG1pbm9yLg0KPg0KPiBKYXNvbg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNp
Z0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJv
LW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
