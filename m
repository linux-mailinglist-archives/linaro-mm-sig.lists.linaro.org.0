Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mCGbFNmmDGrskQUAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 19 May 2026 20:07:21 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id AFD085836BF
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 19 May 2026 20:07:20 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B195140705
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 19 May 2026 18:07:19 +0000 (UTC)
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	by lists.linaro.org (Postfix) with ESMTPS id 36AC53F787
	for <linaro-mm-sig@lists.linaro.org>; Tue, 19 May 2026 18:07:08 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20251104 header.b=JFmo70aV;
	arc=pass ("google.com:s=arc-20240605:i=1");
	spf=pass (lists.linaro.org: domain of tjmercier@google.com designates 209.85.128.45 as permitted sender) smtp.mailfrom=tjmercier@google.com;
	dmarc=pass (policy=reject) header.from=google.com
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-488940ccfa6so1555e9.1
        for <linaro-mm-sig@lists.linaro.org>; Tue, 19 May 2026 11:07:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1779214027; cv=none;
        d=google.com; s=arc-20240605;
        b=Nr3qf8uDvomzvKxzuwqGsgb2ixGShKtvV7F0FnvLcFy/DBbB3QelYI7osSu5M6YDgI
         ZSMhMRfwwvnpBXN+oi3x33s2TC5L6pnoOwYNKc8VLSWiZ3z+oJuRjp4LgFb6fnD9eI71
         qYJcckvVjzJEoqbFHA8ag2qn/Brdx3jiTgUyJG3neylSVHh90/SHpYzNy64qJj0G/Pue
         5UOXaRHH05ioBH8l5CoTmiiXHzu2vfUabmeYVUgBf5UkYRGpM3GwM17KTWn1gyXFBLpZ
         G6MFOQV20cOmLMRGazHh6JWS+F+l+j0uvbtLHT0qspRhx15Hi6ygO+a9yCqkMB4I4cLg
         99fQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=xWuRtr4K/5gUdgYtvuhsDbR4Td/jrXMBs73+p4Eyg4o=;
        fh=1FR1PCiT/S9TBsVq7/wr7ZquiCzShOMjynWGiDEg3So=;
        b=HaBcMlHgE1vQm8myU4+LueHCfsJ/VoJk2FqF3ZFVpqJW9qNwluseqim08hrcTE7aNW
         xeP0wHBEyQPLMz3VWs5MLZF/3vJcyAMBvEyTU4CgvJBsicstfgAzHk+1fGb2LxQbEsTj
         i94w0hiA0lgxrM17iTGTTbWhz0HF/+zi90ZbqjjNuju+aThRrLYQargSmz+UUHw6hRzT
         1OdyfZLZUOfwoMPav8HTMQ7TGaHtFIo8cmHMsLF3O+GnZ/2G1hYKipICXK/JmjrmpOlp
         crlmzjyNSoTjYeFSiM9gowk0O6ALB3oSg61leJLmfmQqPVAb0Za/9eO37EHUhmcRkE5G
         xyMw==;
        darn=lists.linaro.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20251104; t=1779214027; x=1779818827; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xWuRtr4K/5gUdgYtvuhsDbR4Td/jrXMBs73+p4Eyg4o=;
        b=JFmo70aVUvTEAIMlxyMoYempbgpWO15qmzAyV2Moo44EK+RBJB5CbM6XIGcNLlqEcZ
         0WjferS4yky13rlaso469jDjXASvx2Kt2HEHtDpCc5BlQ1i4uztzgWAmfwFiL4Bk52gT
         0VOGP0TxiYRAGFy2PRbzjUKtD0s78PpI5ic0AuKmDiPt846Th6ksLsD8My/SlHFQOYnp
         IsWZaRSFi9n3V4y8tYUCqSnzhNEoLjwI9LAv4HL3711Ki42+0xsqa024swvlBFIg6FGI
         uIepm7gbUtuuCmFkjPOPUEq8GvqmIF4FKPaAANQgteeziGYg2zTpn1l8HWw5GYSwfHnZ
         9bLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779214027; x=1779818827;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=xWuRtr4K/5gUdgYtvuhsDbR4Td/jrXMBs73+p4Eyg4o=;
        b=sJJzxLdr49celGPnLMXIVwIw/vvLW2nx6ZDWOKinkEFDXvS7/1tnRcc/PKyABDY8uK
         lF9ka4CVKXlHQy0jsMeVBQz1vedrSwBNbz/OqlqWORGlkiJV1d2sR2c6s0PtKLUgnc3Z
         XxBxNYBeQVehXpCIe3GoONoH8Nr7qFbZbU3Uf2HW6Ex18ovWKSdWl6k65q5AFDh3WHSN
         zC1LLIRMd6n7RZ9C63Pt4x5LLjc5X+u79Tex2fk8BWJzimIiCOar7Y+FTgwOW666uR1Q
         9SZR54FtG58vlpNKWgor4ZBy5dbmdi45rZnwayejg8ODWrUm7P6DhUSWQ09Rik2DvtET
         NzFQ==
X-Forwarded-Encrypted: i=1; AFNElJ8Gl+qMIX1v/sMMsfbOR3jS6rlhTH4JpaoTVxnbj4K9UfrNLBNOLlVsdbdcx5T9jW5tuKY/fE2PkfeuUW0b@lists.linaro.org
X-Gm-Message-State: AOJu0YymDr/56rLdFVOERHpwunn25Wr9E8prm7Rry22jPNEVMtP7HQo0
	ZjOXkn01AYd97n1FZ7tNsidZ2/9FpgsGb7/vddqU9nJpMDrk4xrgobRkyZTtJbNjzTZywOvjxHm
	jD87ztWxE8BNBnt+fUMaUdsvFRY/O5XzieiG0syB8
X-Gm-Gg: Acq92OEvSiEIWRdANcgJKqtaGPsyI/k6qpWrnngwEuv4cMZzfrJtVp3pLStDUl2nj59
	xU3iKiJx0qroptqK+bDdRNUdHyWstwDn4Bw8AvmpK93Pouxbbw7ep/FJkM/2pjZIndW0ASuJMb/
	VEXJaB3STBqSGrOd/e9X/1btLleBu8KqpUsAUWbqASYvN4QZO6juKbNHs1ayNquHezfKYet6x7n
	WAp/IYbHfR/8QjtneSF/pGcF2Sp0vKEQyGlMQt3NvxIKqM6Ci1hou/bLMd8WSPWT8FHiA1yQe2v
	NGEPqkwcSuOb80vC7at7dSj6sRaGQDHPKH3ZtpYs9YPBpAIsom5fskXj92U=
X-Received: by 2002:a05:600c:828f:b0:485:1a54:9407 with SMTP id
 5b1f17b1804b1-48ffa06d607mr4555145e9.0.1779214026686; Tue, 19 May 2026
 11:07:06 -0700 (PDT)
MIME-Version: 1.0
References: <20260512-v2_20230123_tjmercier_google_com-v1-0-6326701c3691@redhat.com>
 <20260512-v2_20230123_tjmercier_google_com-v1-2-6326701c3691@redhat.com>
 <8ef38815-6ae9-4359-86d4-042554357639@amd.com> <CABdmKX2uwZ12kYJYPJGfWxuMBOJS=64b1GRj72tfB5D=NKM22w@mail.gmail.com>
 <CADSE00Jq_uvNgvxgPze0mEdUd+hF4-DPZkHy0KroWHZzygf4WA@mail.gmail.com>
 <CABdmKX3DhejYBis9htLDnzPrG7vuF3R3URLVNEbnyd61SSsx=g@mail.gmail.com>
 <CAGsJ_4zyecY6E-=Tm4_couT7uoM9LMcFdTMUPkZAjj4zUKE-dQ@mail.gmail.com>
 <cb84c2ee-9de1-4565-b2e0-60984721228f@amd.com> <CAGsJ_4z121v4tK_3+j-hkD7HH0gH3w8tWD8nk0CwRhFE5T+4Og@mail.gmail.com>
 <8a13b1ad-f1be-4ef4-905e-0d9828ae8cb5@amd.com>
In-Reply-To: <8a13b1ad-f1be-4ef4-905e-0d9828ae8cb5@amd.com>
From: "T.J. Mercier" <tjmercier@google.com>
Date: Tue, 19 May 2026 11:06:53 -0700
X-Gm-Features: AVHnY4ILqt3aAhuKzQVtfjO_TWAUc-lBkfBsfy8pZGOgOTZtrN6Xce9TENH_RxE
Message-ID: <CABdmKX1o5FeR697DGdExhSDAzdLBN=y4ijpA2SZyisC6ThYKbQ@mail.gmail.com>
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
X-Spamd-Bar: ----
Message-ID-Hash: FZYDLYRYYF6Z6T4AT2X7WEWIIUEUGUW3
X-Message-ID-Hash: FZYDLYRYYF6Z6T4AT2X7WEWIIUEUGUW3
X-MailFrom: tjmercier@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Barry Song <baohua@kernel.org>, Albert Esteve <aesteve@redhat.com>, Tejun Heo <tj@kernel.org>, Johannes Weiner <hannes@cmpxchg.org>, =?UTF-8?Q?Michal_Koutn=C3=BD?= <mkoutny@suse.com>, Jonathan Corbet <corbet@lwn.net>, Shuah Khan <skhan@linuxfoundation.org>, Sumit Semwal <sumit.semwal@linaro.org>, Michal Hocko <mhocko@kernel.org>, Roman Gushchin <roman.gushchin@linux.dev>, Shakeel Butt <shakeel.butt@linux.dev>, Muchun Song <muchun.song@linux.dev>, Andrew Morton <akpm@linux-foundation.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, Christian Brauner <brauner@kernel.org>, Paul Moore <paul@paul-moore.com>, James Morris <jmorris@namei.org>, "Serge E. Hallyn" <serge@hallyn.com>, Stephen Smalley <stephen.smalley.work@gmail.com>, Ondrej Mosnacek <omosnace@redhat.com>, Shuah Khan <shuah@kernel.org>, cgroups@vger.kernel.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.or
 g, dri- <devel@lists.freedesktop.org>, linaro-mm-sig@lists.linaro.org, linux-mm@kvack.org, linux-security-module@vger.kernel.org, selinux@vger.kernel.org, linux-kselftest@vger.kernel.org, mripard@kernel.org, echanude@redhat.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH RFC 2/5] dma-heap: charge dma-buf memory via explicit memcg
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/FZYDLYRYYF6Z6T4AT2X7WEWIIUEUGUW3/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [5.09 / 15.00];
	DMARC_POLICY_REJECT(2.00)[google.com : SPF not aligned (relaxed),reject];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_REJECT(1.00)[google.com:s=20251104];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[36];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	GREYLIST(0.00)[pass,meta];
	RCVD_COUNT_THREE(0.00)[3];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[kernel.org,redhat.com,cmpxchg.org,suse.com,lwn.net,linuxfoundation.org,linaro.org,linux.dev,linux-foundation.org,collabora.com,arm.com,google.com,paul-moore.com,namei.org,hallyn.com,gmail.com,vger.kernel.org,vger.kernel.or,lists.freedesktop.org,lists.linaro.org,kvack.org];
	DKIM_TRACE(0.00)[google.com:-];
	FROM_NEQ_ENVFROM(0.00)[tjmercier@google.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,amd.com:email,linaro.org:email,lists.linaro.org:rdns,lists.linaro.org:helo]
X-Rspamd-Queue-Id: AFD085836BF
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gVHVlLCBNYXkgMTksIDIwMjYgYXQgMTI6MTDigK9BTSBDaHJpc3RpYW4gS8O2bmlnDQo8Y2hy
aXN0aWFuLmtvZW5pZ0BhbWQuY29tPiB3cm90ZToNCj4NCj4gT24gNS8xOS8yNiAwMTowMCwgQmFy
cnkgU29uZyB3cm90ZToNCj4gPiBPbiBNb24sIE1heSAxOCwgMjAyNiBhdCAzOjM04oCvUE0gQ2hy
aXN0aWFuIEvDtm5pZw0KPiA+IDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+IHdyb3RlOg0KPiA+
Pg0KPiA+PiBPbiA1LzE2LzI2IDExOjE5LCBCYXJyeSBTb25nIHdyb3RlOg0KPiA+Pj4gT24gVGh1
LCBNYXkgMTQsIDIwMjYgYXQgMTI6MzXigK9BTSBULkouIE1lcmNpZXIgPHRqbWVyY2llckBnb29n
bGUuY29tPiB3cm90ZToNCj4gPj4+IFsuLi5dDQo+ID4+Pj4+PiBJIGhhdmUgYSBxdWVzdGlvbiBh
Ym91dCB0aGlzIHBhcnQuIEFsYmVydCBJIGd1ZXNzIHlvdSBhcmUgaW50ZXJlc3RlZA0KPiA+Pj4+
Pj4gb25seSBpbiBhY2NvdW50aW5nIGRtYWJ1Zi1oZWFwIGFsbG9jYXRpb25zLCBvciBkbyB5b3Ug
ZXhwZWN0IHRvIGFkZA0KPiA+Pj4+Pj4gX19HRlBfQUNDT1VOVCBvciBtZW1fY2dyb3VwX2NoYXJn
ZV9kbWFidWYgY2FsbHMgdG8gb3RoZXINCj4gPj4+Pj4+IG5vbi1kbWFidWYtaGVhcCBleHBvcnRl
cnM/DQo+ID4+Pj4+DQo+ID4+Pj4+IFdlJ3JlIHNjb3BpbmcgdGhpcyB0byBkbWEtYnVmIGhlYXBz
IGZvciBub3cuIENNQSBoZWFwcyBhbmQgdGhlIGRtZW0NCj4gPj4+Pj4gY29udHJvbGxlciBhcmUg
b24gdGhlIHJhZGFyIGZvciBmb2xsb3ctdXAvcGFyYWxsZWwgd29yayAodGhlcmUgd2lsbCBiZQ0K
PiA+Pj4+PiBkcmFnb25zIGFuZCB3aWxsIHN1cmVseSBuZWVkIGRpc2N1c3Npb24pLiBGb3IgRFJN
IGFuZCBWNEwyIHRoZQ0KPiA+Pj4+PiBsb25nLXRlcm0gaW50ZW50IGlzIG1pZ3JhdGlvbiB0byBo
ZWFwcywgd2hpY2ggd291bGQgbWFrZSBkaXJlY3QNCj4gPj4+Pj4gYWNjb3VudGluZyBvbiB0aG9z
ZSBwYXRocyB1bm5lY2Vzc2FyeS4NCj4gPj4+Pg0KPiA+Pj4+IEFoIEkgc2VlLiBHRU0gYnVmZmVy
cyBleHBvcnRlZCB0byBkbWFidWZzIGFyZSB3aGF0IEkgaGFkIGluIG1pbmQuIEkNCj4gPj4+PiBn
dWVzcyB0aGlzIHdvdWxkIG9ubHkgbGVhdmUgdGhlIG9kZCBub24tRFJNIGRyaXZlciB3aXRoIHRo
ZSBuZWVkIHRvDQo+ID4+Pj4gYWRkIHRoZWlyIG93biBhY2NvdW50aW5nIGNhbGxzLCB3aGljaCBJ
IGRvbid0IGV4cGVjdCB3b3VsZCBiZSBhIGJpZw0KPiA+Pj4+IHByb2JsZW0uDQo+ID4+Pj4NCj4g
Pj4+DQo+ID4+PiBzb3VuZHMgbGlrZSB3ZSBzdGlsbCBoYXZlIGEgbG9uZyB3YXkgdG8gZ28gdG8g
Y29ycmVjdGx5IGFjY291bnQgZm9yDQo+ID4+PiB2YXJpb3VzIHY0bDIsIGRybSwgR0VNLCBDTUEs
IGV0Yy4gSW4gcGF0Y2ggMSwgdGhlIGNoYXJnaW5nIGlzIGRvbmUgaW4NCj4gPj4+IGRtYV9idWZf
ZXhwb3J0KCksIHNvIEkgZ3Vlc3MgaXQgY292ZXJzIGFsbCBkbWEtYnVmIHR5cGVzIGV4Y2VwdA0K
PiA+Pj4gZG1hX2hlYXAsIGJ1dCB0aGUgcHJvYmxlbSBpcyB0aGF0IGl0IGhhcyBubyByZW1vdGUg
Y2hhcmdpbmcgc3VwcG9ydCBhdA0KPiA+Pj4gYWxsPw0KPiA+Pg0KPiA+PiBObywganVzdCB0aGUg
b3RoZXIgd2F5IGFyb3VuZA0KPiA+Pg0KPiA+PiBETUEtYnVmIGhlYXBzIGNhbiBiZSBoYW5kbGVk
IGhlcmUgYmVjYXVzZSB3ZSBrbm93IHRoYXQgaXQgaXMgcHVyZSBzeXN0ZW0gbWVtb3J5IGFuZCBu
b3RoaW5nIHNwZWNpYWwgc28gbWVtY2cgYWx3YXlzIGFwcGxpZXMuDQo+ID4+DQo+ID4+IGRtYV9i
dWZfZXhwb3J0KCkgb24gdGhlIG90aGVyIGhhbmQgaGFuZGxlcyB0b25zIG9mIGRpZmZlcmVudCB1
c2UgY2FzZXMsIHJhbmdpbmcgZnJvbSBidWZmZXIgYWNjb3VudGVkIHRvIGRtZW0sIG92ZXIgc3Bl
Y2lhbCByZXNvdXJjZXMgd2hpY2ggYXJlbid0IGV2ZW4gbWVtb3J5IGFsbCB0aGUgd2F5IHRvIGJ1
ZmZlcnMgd2hpY2ggY2FuIG1pZ3JhdGUgZnJvbSBkbWVtIHRvIG1lbWNnIGFuZCBiYWNrIGR1cmlu
ZyB0aGVpciBsaWZldGltZS4NCj4gPj4NCj4gPg0KPiA+IEhpIENocmlzdGlhbiwNCj4gPg0KPiA+
IFRoYW5rcyB2ZXJ5IG11Y2ggZm9yIHlvdXIgZXhwbGFuYXRpb24uIFNvIGJhc2ljYWxseSBpdCBz
ZWVtcyB0aGF0DQo+ID4gZG1hX2J1Zl9leHBvcnQoKSBpcyBub3QgdGhlIHByb3BlciBwbGFjZSB0
byBjaGFyZ2UsIHNpbmNlIGl0IG1heSBlbmQgdXANCj4gPiBtaXhpbmcgaW4gbm9uLXN5c3RlbS1t
ZW1vcnkgYWNjb3VudGluZz8NCj4NCj4gWWVzLCBleGFjdGx5IHRoYXQuDQo+DQo+ID4gTXkgcXVl
c3Rpb24gaXMgYWxzbyBhYm91dCB0aGUgZ2xvYmFsIHZpZXcgZm9yIGJvdGggaGVhcCBhbmQgbm9u
LWhlYXAgY2FzZXMuDQo+ID4gQWZ0ZXIgcmVhZGluZyB0aGUgZGlzY3Vzc2lvbiwgSeKAmXZlIHRy
aWVkIHRvIHN1bW1hcml6ZSBpdOKAlHBsZWFzZSBsZXQgbWUga25vdw0KPiA+IGlmIG15IHVuZGVy
c3RhbmRpbmcgaXMgY29ycmVjdC4NCj4gPg0KPiA+IGZvciBkbWFfaGVhcCwgd2UgaGF2ZSB0aGUg
aW9jdGwgRE1BX0hFQVBfSU9DVExfQUxMT0MsIHdoZXJlIHVzZXJzIGNhbiBwYXNzIGENCj4gPiBy
ZW1vdGUgcGlkZmQgb3Igc2ltaWxhciBpbmZvcm1hdGlvbiB0byBpbmRpY2F0ZSB3aGVyZSB0aGUg
ZG1hLWJ1ZiBzaG91bGQgYmUNCj4gPiBjaGFyZ2VkLCBhcyBpbiBBbGJlcnQncyBwYXRjaHNldC4N
Cj4NCj4gV2VsbCB0aGF0J3MgdGhlIGN1cnJlbnQgcHJvcG9zYWwsIGJ1dCBJIHRoaW5rIHdlIG5l
ZWQgdG8gY29tZSB1cCB3aXRoIHNvbWV0aGluZyBtb3JlIGdlbmVyYWwuDQo+DQo+ID4gRm9yIG5v
bi1kbWFfaGVhcCBkbWEtYnVmcywgd2UgZG9u4oCZdCBoYXZlIGFuIG9idmlvdXMgdXNlcnNwYWNl
IGVudHJ5IHBvaW50IHRoYXQNCj4gPiB0cmlnZ2VycyB0aGUgYWxsb2NhdGlvbi4gU28gd2UgbGlr
ZWx5IG5lZWQgb3RoZXIgYXBwcm9hY2hlcy4gV2UgY291bGQgZWl0aGVyDQo+ID4gbW92ZSBtb3Jl
IGRyaXZlcnMgb3ZlciB0byBkbWEtaGVhcCwgb3IgaW50cm9kdWNlIHNvbWV0aGluZyBsaWtlDQo+
ID4gRE1BX0JVRl9JT0NUTF9YRkVSX0NIQVJHRSwgYXMgeW91IGFyZSBkaXNjdXNzaW5nLCB0byBs
ZXQgdXNlcnNwYWNlIGV4cGxpY2l0bHkNCj4gPiBkZWNsYXJlIGEgY2hhcmdlLg0KPg0KPiBZZWFo
IGJ1dCB0aGF0J3Mgbm90IG9ubHkgZm9yIERNQS1idWYsIHdlIG5lZWQgdGhhdCBmb3IgZmlsZSBk
ZXNjcmlwdG9ycyByZXR1cm5lZCBieSBtZW1mZF9jcmVhdGUoKSBhcyB3ZWxsLg0KDQptZW1mZHMg
Z2V0IGNoYXJnZWQgb24gZmF1bHQsIHNvIGFuIGFsbG9jYXRvciBzaG91bGRuJ3QgY3VycmVudGx5
IGJlDQpjaGFyZ2VkIGp1c3QgZm9yIGNyZWF0aW5nIHRoZSBmZC4gVW5saWtlIHN5c3RlbS9DTUEg
aGVhcCBidWZmZXJzLCB0aGUNCnNobWVtIGJhY2tpbmcgYSBtZW1mZCAvIHVkbWFidWYgaXMgTFJV
IG1lbW9yeSwgYW5kIHN3YXBwaW5nIHRoZSBtZW1jZw0Kb3duZXIgb2YgdGhvc2UgcGFnZXMgaXMg
YSBtb3JlLWludm9sdmVkIHByb2Nlc3Mgd2hpY2ggaXMgbm90IHN1cHBvcnRlZA0KYnkgbWVtY2cg
djIuIFRoZXJlIHVzZWQgdG8gYmUgc29tZSBzdXBwb3J0IGluIG1lbWNnIHYxLCBidXQgaXQgd2Fz
DQpyZW1vdmVkLiBDb21taXQgZTU0OGFkNGE3Y2JmICgibW06IG1lbWNnOiBtb3ZlIGNoYXJnZSBt
aWdyYXRpb24gY29kZQ0KdG8gbWVtY29udHJvbC12MS5jICIpIHNhaWQsICJJdCdzIGEgZmFpcmx5
IGxhcmdlIGFuZCBjb21wbGljYXRlZCBjb2RlDQp3aGljaCBjcmVhdGVkIGEgbnVtYmVyIG9mIHBy
b2JsZW1zIGluIHRoZSBwYXN0LiIgU28gSSdtIG5vdCBzdXJlIGhvdw0KbXVjaCBhcHBldGl0ZSB0
aGVyZSB3b3VsZCBiZSB0byBzdXBwb3J0IGl0IGluIHYyIGZvciB0aGlzLg0KX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5n
IGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNl
bmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
