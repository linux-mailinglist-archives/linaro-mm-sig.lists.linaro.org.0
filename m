Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GII2FvMAC2oH/QQAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 18 May 2026 14:07:15 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id D00DA56C406
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 18 May 2026 14:07:14 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C49F7406B3
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 18 May 2026 12:07:13 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by lists.linaro.org (Postfix) with ESMTPS id 23E204051A
	for <linaro-mm-sig@lists.linaro.org>; Mon, 18 May 2026 12:07:03 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=redhat.com header.s=mimecast20190719 header.b="JwtJPFs/";
	spf=pass (lists.linaro.org: domain of aesteve@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=aesteve@redhat.com;
	dmarc=pass (policy=quarantine) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1779106022;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=EAOhdahq1wTYoi+v3Sd0YHLgR6nzuu2wluSY7LEs20o=;
	b=JwtJPFs/XPuiQkAV03vLxnOqtTVSuNoKXzIWvrW/xzDriRMdJD+s7lqwvQmtzHMOQmozni
	vD0y09jAoiKNIsvysIE1bVeQUCq24EoPM5xBNmVZZWlbY9Yy3b53eKyghUV27AeRi6bwi7
	bqLNAvCvuvaRPe6+/lQEN7f3LZHjJLo=
Received: from mail-yw1-f197.google.com (mail-yw1-f197.google.com
 [209.85.128.197]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-180-BEw0UALCOVy4G6sOK5omOA-1; Mon, 18 May 2026 08:06:59 -0400
X-MC-Unique: BEw0UALCOVy4G6sOK5omOA-1
X-Mimecast-MFC-AGG-ID: BEw0UALCOVy4G6sOK5omOA_1779106018
Received: by mail-yw1-f197.google.com with SMTP id 00721157ae682-7c027fb7a62so30025187b3.1
        for <linaro-mm-sig@lists.linaro.org>; Mon, 18 May 2026 05:06:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779106018; x=1779710818;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=EAOhdahq1wTYoi+v3Sd0YHLgR6nzuu2wluSY7LEs20o=;
        b=JDBi8VgZddYyprNDN65rbCU9SbTYjFvcR/u3cewVMGhXCg7GwTK+UaFLUkOYeoGg21
         MrlutrMMoog/0zotMPL/MIN6psPYgCdt20SLECTAU6Miif+k46x5FEonb7OmRR3o02sz
         8lPZLa3wNGD8uhKat2lPqbdKp2FPgTl4klUWN6kYpVCX8zsxNsqYMOl3kFZkOT1O2oX8
         S9MI28wkz2e4wCHuOTEza8Wgkl9vDjRLvRScie4KyNUsKOtfMR40RuWtWaokaP/YoG7l
         CU+XIcu3ZJ0ZKY1b0BP4BpX0ocabadzz6JGQF9mSWkhd9YFpWpGL9FXRSRbis+bMIIlD
         NKeQ==
X-Forwarded-Encrypted: i=1; AFNElJ/U3vMVFeor58fhXlERyo0LJ88nHWua+SLSuLgJYOTlNB2uD/P4jD8bGXrP/9zIMqbv7qSlIeNz3EMD9rmM@lists.linaro.org
X-Gm-Message-State: AOJu0YyexiAkQdD5GnK38Lb/VpTI7WsaWT875zTEWDBDJkF8+Uw3HIlO
	4aXqegtBinZRl9FgXKl9Uovd6+tHeZbPNo9aR16mPDTj0WNVJMTxv+luUC+Ox3+Xy/UyAlCBiqR
	W6TjwnqiRECD9U+31P3TwkPVFRlCNvE1an5u1/HqU++3StMD3B9oG3JpkZijvf5m4yzPrFNuAI3
	41qCDeSq5r8j0DfkT47lWyOYBdPERsmzWSyBugIkY2GOY=
X-Gm-Gg: Acq92OFAYyLIQUIUqFn3Dl59vXPK73heqEkti0YxaJw8iByEthY6rQg6JxLd1K+ZulL
	RaMLH76Ih5lwSZJMEaQL1XsvRJ1PJP5w8Pf7iVpmhNPjg7eCjbcRRR3YRtGqnt1unzXH1WWFh86
	9ERgciSe9sZE1gDQe1ooV6v79TjsiVlZnN5yfLX7Ktz8RB/t5gnhYRETjIh8lJQWz8bhjMq9UEt
	xu98g==
X-Received: by 2002:a05:690c:e3e1:b0:7c0:56f:5b59 with SMTP id 00721157ae682-7c9599a36ddmr149907337b3.15.1779106018445;
        Mon, 18 May 2026 05:06:58 -0700 (PDT)
X-Received: by 2002:a05:690c:e3e1:b0:7c0:56f:5b59 with SMTP id
 00721157ae682-7c9599a36ddmr149906897b3.15.1779106017837; Mon, 18 May 2026
 05:06:57 -0700 (PDT)
MIME-Version: 1.0
References: <20260512-v2_20230123_tjmercier_google_com-v1-0-6326701c3691@redhat.com>
 <20260512-v2_20230123_tjmercier_google_com-v1-2-6326701c3691@redhat.com>
 <8ef38815-6ae9-4359-86d4-042554357639@amd.com> <CABdmKX2uwZ12kYJYPJGfWxuMBOJS=64b1GRj72tfB5D=NKM22w@mail.gmail.com>
 <CADSE00Jq_uvNgvxgPze0mEdUd+hF4-DPZkHy0KroWHZzygf4WA@mail.gmail.com>
 <CABdmKX3DhejYBis9htLDnzPrG7vuF3R3URLVNEbnyd61SSsx=g@mail.gmail.com>
 <CAGsJ_4zyecY6E-=Tm4_couT7uoM9LMcFdTMUPkZAjj4zUKE-dQ@mail.gmail.com> <cb84c2ee-9de1-4565-b2e0-60984721228f@amd.com>
In-Reply-To: <cb84c2ee-9de1-4565-b2e0-60984721228f@amd.com>
From: Albert Esteve <aesteve@redhat.com>
Date: Mon, 18 May 2026 14:06:45 +0200
X-Gm-Features: AVHnY4K8qpVqb_W68zu-wX_-3BWWvVrVAC2CPBMHXBkSI4OOVylnoTOI9cwLMps
Message-ID: <CADSE00Lc42s2bzXzV5D7t1Enf56u4BVj-yXLp3Yxhm0=qMPvuw@mail.gmail.com>
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: C3WB85p0kj341ahYkKIZLyWt-4n-nHf-5IJ28KCx9Gc_1779106018
X-Mimecast-Originator: redhat.com
X-Spamd-Bar: ----
Message-ID-Hash: NDYIIYPMJNAB22SOJRS6G6BOEMKU3HSO
X-Message-ID-Hash: NDYIIYPMJNAB22SOJRS6G6BOEMKU3HSO
X-MailFrom: aesteve@redhat.com
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
CC: Barry Song <baohua@kernel.org>, "T.J. Mercier" <tjmercier@google.com>, Tejun Heo <tj@kernel.org>, Johannes Weiner <hannes@cmpxchg.org>, =?UTF-8?Q?Michal_Koutn=C3=BD?= <mkoutny@suse.com>, Jonathan Corbet <corbet@lwn.net>, Shuah Khan <skhan@linuxfoundation.org>, Sumit Semwal <sumit.semwal@linaro.org>, Michal Hocko <mhocko@kernel.org>, Roman Gushchin <roman.gushchin@linux.dev>, Shakeel Butt <shakeel.butt@linux.dev>, Muchun Song <muchun.song@linux.dev>, Andrew Morton <akpm@linux-foundation.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, Christian Brauner <brauner@kernel.org>, Paul Moore <paul@paul-moore.com>, James Morris <jmorris@namei.org>, "Serge E. Hallyn" <serge@hallyn.com>, Stephen Smalley <stephen.smalley.work@gmail.com>, Ondrej Mosnacek <omosnace@redhat.com>, Shuah Khan <shuah@kernel.org>, cgroups@vger.kernel.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel
 .org, dri- <devel@lists.freedesktop.org>, linaro-mm-sig@lists.linaro.org, linux-mm@kvack.org, linux-security-module@vger.kernel.org, selinux@vger.kernel.org, linux-kselftest@vger.kernel.org, mripard@kernel.org, echanude@redhat.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH RFC 2/5] dma-heap: charge dma-buf memory via explicit memcg
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/NDYIIYPMJNAB22SOJRS6G6BOEMKU3HSO/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Rspamd-Queue-Id: D00DA56C406
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [3.59 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_QUARANTINE(1.50)[redhat.com : SPF not aligned (relaxed),quarantine];
	R_DKIM_REJECT(1.00)[redhat.com:s=mimecast20190719];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[36];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[redhat.com:-];
	NEURAL_HAM(-0.00)[-0.643];
	FROM_NEQ_ENVFROM(0.00)[aesteve@redhat.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,google.com,cmpxchg.org,suse.com,lwn.net,linuxfoundation.org,linaro.org,linux.dev,linux-foundation.org,collabora.com,arm.com,paul-moore.com,namei.org,hallyn.com,gmail.com,redhat.com,vger.kernel.org,vger.kernel,lists.freedesktop.org,lists.linaro.org,kvack.org];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email,mail.gmail.com:mid,amd.com:email]
X-Rspamd-Action: no action

T24gTW9uLCBNYXkgMTgsIDIwMjYgYXQgOTozNOKAr0FNIENocmlzdGlhbiBLw7ZuaWcNCjxjaHJp
c3RpYW4ua29lbmlnQGFtZC5jb20+IHdyb3RlOg0KPg0KPiBPbiA1LzE2LzI2IDExOjE5LCBCYXJy
eSBTb25nIHdyb3RlOg0KPiA+IE9uIFRodSwgTWF5IDE0LCAyMDI2IGF0IDEyOjM14oCvQU0gVC5K
LiBNZXJjaWVyIDx0am1lcmNpZXJAZ29vZ2xlLmNvbT4gd3JvdGU6DQo+ID4gWy4uLl0NCj4gPj4+
PiBJIGhhdmUgYSBxdWVzdGlvbiBhYm91dCB0aGlzIHBhcnQuIEFsYmVydCBJIGd1ZXNzIHlvdSBh
cmUgaW50ZXJlc3RlZA0KPiA+Pj4+IG9ubHkgaW4gYWNjb3VudGluZyBkbWFidWYtaGVhcCBhbGxv
Y2F0aW9ucywgb3IgZG8geW91IGV4cGVjdCB0byBhZGQNCj4gPj4+PiBfX0dGUF9BQ0NPVU5UIG9y
IG1lbV9jZ3JvdXBfY2hhcmdlX2RtYWJ1ZiBjYWxscyB0byBvdGhlcg0KPiA+Pj4+IG5vbi1kbWFi
dWYtaGVhcCBleHBvcnRlcnM/DQo+ID4+Pg0KPiA+Pj4gV2UncmUgc2NvcGluZyB0aGlzIHRvIGRt
YS1idWYgaGVhcHMgZm9yIG5vdy4gQ01BIGhlYXBzIGFuZCB0aGUgZG1lbQ0KPiA+Pj4gY29udHJv
bGxlciBhcmUgb24gdGhlIHJhZGFyIGZvciBmb2xsb3ctdXAvcGFyYWxsZWwgd29yayAodGhlcmUg
d2lsbCBiZQ0KPiA+Pj4gZHJhZ29ucyBhbmQgd2lsbCBzdXJlbHkgbmVlZCBkaXNjdXNzaW9uKS4g
Rm9yIERSTSBhbmQgVjRMMiB0aGUNCj4gPj4+IGxvbmctdGVybSBpbnRlbnQgaXMgbWlncmF0aW9u
IHRvIGhlYXBzLCB3aGljaCB3b3VsZCBtYWtlIGRpcmVjdA0KPiA+Pj4gYWNjb3VudGluZyBvbiB0
aG9zZSBwYXRocyB1bm5lY2Vzc2FyeS4NCj4gPj4NCj4gPj4gQWggSSBzZWUuIEdFTSBidWZmZXJz
IGV4cG9ydGVkIHRvIGRtYWJ1ZnMgYXJlIHdoYXQgSSBoYWQgaW4gbWluZC4gSQ0KPiA+PiBndWVz
cyB0aGlzIHdvdWxkIG9ubHkgbGVhdmUgdGhlIG9kZCBub24tRFJNIGRyaXZlciB3aXRoIHRoZSBu
ZWVkIHRvDQo+ID4+IGFkZCB0aGVpciBvd24gYWNjb3VudGluZyBjYWxscywgd2hpY2ggSSBkb24n
dCBleHBlY3Qgd291bGQgYmUgYSBiaWcNCj4gPj4gcHJvYmxlbS4NCj4gPj4NCj4gPg0KPiA+IHNv
dW5kcyBsaWtlIHdlIHN0aWxsIGhhdmUgYSBsb25nIHdheSB0byBnbyB0byBjb3JyZWN0bHkgYWNj
b3VudCBmb3INCj4gPiB2YXJpb3VzIHY0bDIsIGRybSwgR0VNLCBDTUEsIGV0Yy4gSW4gcGF0Y2gg
MSwgdGhlIGNoYXJnaW5nIGlzIGRvbmUgaW4NCj4gPiBkbWFfYnVmX2V4cG9ydCgpLCBzbyBJIGd1
ZXNzIGl0IGNvdmVycyBhbGwgZG1hLWJ1ZiB0eXBlcyBleGNlcHQNCj4gPiBkbWFfaGVhcCwgYnV0
IHRoZSBwcm9ibGVtIGlzIHRoYXQgaXQgaGFzIG5vIHJlbW90ZSBjaGFyZ2luZyBzdXBwb3J0IGF0
DQo+ID4gYWxsPw0KPg0KPiBObywganVzdCB0aGUgb3RoZXIgd2F5IGFyb3VuZA0KPg0KPiBETUEt
YnVmIGhlYXBzIGNhbiBiZSBoYW5kbGVkIGhlcmUgYmVjYXVzZSB3ZSBrbm93IHRoYXQgaXQgaXMg
cHVyZSBzeXN0ZW0gbWVtb3J5IGFuZCBub3RoaW5nIHNwZWNpYWwgc28gbWVtY2cgYWx3YXlzIGFw
cGxpZXMuDQo+DQo+IGRtYV9idWZfZXhwb3J0KCkgb24gdGhlIG90aGVyIGhhbmQgaGFuZGxlcyB0
b25zIG9mIGRpZmZlcmVudCB1c2UgY2FzZXMsIHJhbmdpbmcgZnJvbSBidWZmZXIgYWNjb3VudGVk
IHRvIGRtZW0sIG92ZXIgc3BlY2lhbCByZXNvdXJjZXMgd2hpY2ggYXJlbid0IGV2ZW4gbWVtb3J5
IGFsbCB0aGUgd2F5IHRvIGJ1ZmZlcnMgd2hpY2ggY2FuIG1pZ3JhdGUgZnJvbSBkbWVtIHRvIG1l
bWNnIGFuZCBiYWNrIGR1cmluZyB0aGVpciBsaWZldGltZS4NCj4NCj4gPj4+IHVkbWFidWZzIGFy
ZSBhbHJlYWR5DQo+ID4+PiBtZW1jZy1jaGFyZ2VkLCBzbyBhZGRpbmcgYSBzZXBhcmF0ZSBNRU1D
R19ETUFCVUYgd291bGQgZG91YmxlIGNvdW50Lg0KPiA+Pj4gQXJlIHRoZXJlIGFueSBvdGhlciBl
eHBvcnRlcnMgeW91IGhhZCBpbiBtaW5kIHRoYXQgd291bGQgYmVuZWZpdCBmcm9tDQo+ID4+PiB0
aGlzIGFwcHJvYWNoPw0KPg0KPiBXZWxsIGFwYXJ0IGZyb20gRE1BLWJ1ZiBtZW1mZF9jcmVhdGUo
KSBpcyBvbmUgb2YgdGhlIHRoaW5ncyB3aGljaCBhcyBicm9rZW4gb3VyIG5lY2sgaW4gdGhlIHBh
c3QgYSBjb3VwbGUgb2YgdGltZXMuDQo+DQo+IEJ1dCB0aGlua2luZyBtb3JlIGFib3V0IGl0IHdo
YXQgaWYgaW5zdGVhZCBvZiBtYWtpbmcgdGhpcyBETUEtYnVmIGhlYXBzIHNwZWNpZmljIHdoYXQg
aWYgd2UgaGF2ZSBhIGdlbmVyYWwgY2dyb3VwcyBmdW5jdGlvbiB3aGljaCBhbGxvd3MgdG8gY2hh
bmdlIGFjY291bnRpbmcgb2YgYSBidWZmZXIgcmVmZXJlbmNlZCBieSBhIGZpbGUgZGVzY3JpcHRv
ciB0byBhIGRpZmZlcmVudCBwcm9jZXNzPw0KPg0KPiBUaGF0IHdvdWxkIGNvdmVyIG5vdCBvbmx5
IHRoZSBETUEtYnVmIGhlYXBzIHVzZSBjYXNlLCBidXQgYWxzbyBhbGwgb3RoZXIgRE1BLWJ1ZiB3
aXRoIGRtZW0gYW5kIHdoYXRldmVyIHdlIGNvbWUgdXAgaW4gdGhlIGZ1dHVyZSBhcyB3ZWxsLg0K
DQpJIHJlbW92ZWQgYSBkcmFmdCBhZGRpbmcgYW4gaW9jdGwgZm9yIGNoYXJnZSB0cmFuc2ZlciBm
cm9tIHRoZSBzZXJpZXMNCmJlZm9yZSBzZW5kaW5nIGJlY2F1c2UgSSB3YW50ZWQgdG8gZm9jdXMg
b24gdGhlIGNoYXJnZV9waWRfZmQgYXBwcm9hY2gNCmFuZCBrZWVwIHRoaW5ncyBzaW1wbGUsIGRl
ZmVycmluZyB0aGUgcmVjaGFyZ2UgcGF0aCB0byBhIGZvbGxvdy11cA0KZGVwZW5kaW5nIG9uIGZl
ZWRiYWNrLg0KDQpUaGUgbWFpbiBkaWZmZXJlbmNlIGJldHdlZW4gbXkgcmVtb3ZlZCBkcmFmdCBh
bmQgd2hhdCB5b3UncmUNCmRlc2NyaWJpbmcsIGlpdWMsIGlzIHNjb3BlIGFuZCBsYXllcjogbXkg
ZHJhZnQgd2FzIGFuIGV4cGxpY2l0IGlvY3RsDQpvbiB0aGUgZG1hLWJ1ZiBmZCB0aGF0IHRoZSBj
b25zdW1lciBjYWxscyB0byBjbGFpbSB0aGUgY2hhcmdlIChzZWUNCmJlbG93KSwgd2hpbGUgeW91
IHNlZW0gdG8gYmUgc3VnZ2VzdGluZyBhIG1vcmUgZ2VuZXJhbCBrZXJuZWwtaW50ZXJuYWwNCmZ1
bmN0aW9uIHRoYXQgY291bGQgd29yayBhY3Jvc3MgYnVmZmVyIHR5cGVzIGFuZCBjZ3JvdXAgY29u
dHJvbGxlcnMsDQpzbyBub3QgbmVjZXNzYXJpbHkgdXNlcnNwYWNlLWluaXRpYXRlZD8gQSBrZXJu
ZWwtaW50ZXJuYWwgZnVuY3Rpb24NCndpbGwgbmVlZCBhIHdheSB0byBpZGVudGlmeSB0aGUgdGFy
Z2V0IHByb2Nlc3MsIHdoaWNoIHNvdW5kcyBzaW1pbGFyDQp0byB0aGUgYmluZGVyLWJhY2tlZCBh
cHByb2FjaCBmcm9tIFRKIFsxXS4gRm9yIGV2ZXJ5dGhpbmcgZWxzZSwgdGhlDQpyZWNlaXZlciBz
dGlsbCBuZWVkcyB0byBkZWNsYXJlIGl0c2VsZiwgd2hpY2ggdGhlIGlvY3RsIGFjY29tcGxpc2hl
cy4NCg0KYGBgDQojIFdoZW4gYW4gYXBwIGltcG9ydHMgYSBkYWVtb24tYWxsb2NhdGVkIGJ1ZmZl
ciwgaXQgY2FuIHRyYW5zZmVyIHRoZQ0KY2hhcmdlIHRvIGl0c2VsZjoNCmludCBidWZfZmQgPSBy
ZWNlaXZlX2RtYWJ1Zl9mcm9tX2RhZW1vbigpOw0KaW9jdGwoYnVmX2ZkLCBETUFfQlVGX0lPQ1RM
X1hGRVJfQ0hBUkdFKTsgLyogY2hhcmdlIG5vdyBhdHRyaWJ1dGVkIHRvDQphcHBzJ3MgY2dyb3Vw
ICovDQpgYGANCg0KWzFdIGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2Nncm91cHMvMjAyMzAxMDky
MTM4MDkuNDE4MTM1LTEtdGptZXJjaWVyQGdvb2dsZS5jb20vDQoNCj4NCj4gVGhlIG9ubHkgZHJh
d2JhY2sgSSBjYW4gc2VlIGlzIHRoYXQgRE1BLWJ1ZiBoZWFwIGFsbG9jYXRpb25zIHdvdWxkIGJl
IHRlbXBvcmFyaWx5IGFjY291bnRlZCB0byB0aGUgbWVtb3J5IGFsbG9jYXRpb24gZGFlbW9uLCBi
dXQgSSBkb24ndCB0aGluayB0aGF0IHRoaXMgd291bGQgYmUgYSBwcm9ibGVtLg0KDQpUaGUgbWFp
biByZWFzb25zIHdlIG1vdmVkIGF3YXkgZnJvbSBUSidzIHRyYW5zZmVyLWJhc2VkIGFwcHJvYWNo
DQp0b3dhcmQgYGNoYXJnZV9waWRfZmRgIGFyZTogYXZvaWQgdGhlIHRyYW5zaWVudCBjaGFyZ2Ug
d2luZG93IG9uIHRoZQ0KZGFlbW9uJ3MgY2dyb3VwOyBhbmQgdG8gZGVjb3VwbGUgZnJvbSBCaW5k
ZXIsIGFsbG93aW5nIGFueSBhbGxvY2F0b3INCnRvIHVzZSBpdC4NCg0KVGVjaG5pY2FsbHksIGJv
dGggYXBwcm9hY2hlcyBjb3VsZCBjb2V4aXN0LCB0aG91Z2guIE9mIHRoZSB0aHJlZQ0Kc2NlbmFy
aW9zIFRKIGRlc2NyaWJlZDoNCi0gU2NlbmFyaW8gMiBpcyBkaXJlY3RseSBhZGRyZXNzZWQgYnkg
Y2hhcmdlX3BpZF9mZCBhcHByb2FjaCB3aXRob3V0DQphbnkgdHJhbnNpZW50IGNoYXJnZSBvbiB0
aGUgZGFlbW9uIGF0IHRoZSBjb3N0IG9mIG9uZSBleHRyYSBmaWVsZCBpbg0KdGhlIGhlYXAgaW9j
dGwgdUFQSSBzdHJ1Y3QuDQotIFNjZW5hcmlvIDMgY2FuIGJlIGhhbmRsZWQgYnkgdGhlIGNoYXJn
ZSB0cmFuc2ZlciBmdW5jdGlvbiB3aXRob3V0DQpjaGFuZ2VzIHRvIFN1cmZhY2VGbGluZ2VyLiBU
aGUgYXBwIG9yIGRlcXVldWVCdWZmZXIgY2xhaW1zIHRoZSBjaGFyZ2UNCmZvciBpdHNlbGYgb3Ig
dGhlIGFwcCwgcmVzcGVjdGl2ZWx5IChkZXBlbmRpbmcgb24gd2hldGhlciB3ZSBpbmNsdWRlIGEN
CnBpZF9mZCBmaWVsZCBpbiB0aGUgdHJhbnNmZXIgaW9jdGwpLiBJdCBhbHNvIGNvdmVycyBub24t
aGVhcA0KZXhwb3J0ZXJzLiBUaGUgY29uIGluIGJvdGggdmFyaWFudHMgaXMgdGhlIHRyYW5zaWVu
dCBjaGFyZ2Ugd2luZG93IG9uDQp0aGUgZGFlbW9uLg0KDQpCb3RoIGFwcHJvYWNoZXMgc2hpZnQg
dGhlIHJlc3BvbnNpYmlsaXR5IGZvciBjb3JyZWN0IGNoYXJnaW5nDQphdHRyaWJ1dGlvbiB0byB1
c2Vyc3BhY2U6IGZpcnN0LCAnY2hhcmdlX3BpZF9mZGAgb24gdGhlIGFsbG9jYXRvcidzDQpzaWRl
LCBhbmQgdGhlIHRyYW5zZmVyIGNoYXJnZSBvbiB0aGUgY29uc3VtZXIncyBzaWRlLg0KDQpEZWNp
ZGluZyBvbiBvbmUsIHRoZSBvdGhlciBvciBib3RoIGRlcGVuZHMgb24gaG93IG11Y2ggd2UgdmFs
dWUNCmF2b2lkaW5nIHRyYW5zaWVudCBhdHRyaWJ1dGlvbiwgYW5kIGhvdyBtdWNoIHdlIG5lZWQg
YSBub24taGVhcA0KZ2VuZXJpYyBzb2x1dGlvbi4gV2l0aCB0aGUgWEZFUl9DSEFSR0Ugd2UgY2Fu
IGNvdmVyIGJvdGguIFRodXMsIHRoZQ0KYGNoYXJnZV9waWRfZmRgIGFwcHJvYWNoIGluIHRoaXMg
UkZDIGNhbiBiZSBzZWVuIGFzIGENCnBlcmZvcm1hbmNlL3N0cmljdG5lc3Mgb3B0aW1pc2F0aW9u
LCBlbGltaW5hdGluZyB0cmFuc2llbnQgY2hhcmdlcyB0bw0KdGhlIGRhZW1vbiBhdCB0aGUgY29z
dCBvZiBhIHBlcm1hbmVudCB1QVBJIGFkZGl0aW9uIHRvIHRoZSBoZWFwIGlvY3RsDQpzdHJ1Y3Qs
IGJ1dCBub3Qgc3RyaWN0bHkgcmVxdWlyZWQgZm9yIGNvcnJlY3RuZXNzLiBPbiB0aGUgb3RoZXIg
aGFuZCwNCmlmIHdlIGFncmVlIG9uIHRoZSBlbmQgZ29hbCBvZiBtaWdyYXRpbmcgb3RoZXIgZXhw
b3J0ZXJzIHRvIHVzZQ0KZG1hLWJ1ZiBoZWFwcywgYW5kIHNjZW5hcmlvIDMgaXMgYWRkcmVzc2Vk
IGJ5IGFkZGluZyB0aGUgYXBwJ3MgcGlkX2ZkDQp0byBTdXJmYWNlRmxpbmdlciwgdGhlbiBgY2hh
cmdlX3BpZF9mZGAgYWxvbmUgaXMgYSBjb2hlcmVudC9zdWZmaWNpZW50DQphcHByb2FjaCBkZXNw
aXRlIHRoZSB1QVBJIGNoYW5nZS4NCg0KPg0KPiBSZWdhcmRzLA0KPiBDaHJpc3RpYW4uDQo+DQo+
ID4NCj4gPiBUaGFua3MNCj4gPiBCYXJyeQ0KPg0KDQpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5h
cm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0
byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
