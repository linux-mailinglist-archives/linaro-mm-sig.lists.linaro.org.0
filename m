Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uNK+AcUwDGpuZAUAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 19 May 2026 11:43:33 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E49457B80D
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 19 May 2026 11:43:32 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 86E1C40952
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 19 May 2026 09:43:31 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by lists.linaro.org (Postfix) with ESMTPS id 27C514069A
	for <linaro-mm-sig@lists.linaro.org>; Tue, 19 May 2026 09:43:22 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=redhat.com header.s=mimecast20190719 header.b=TtLgIlST;
	spf=pass (lists.linaro.org: domain of aesteve@redhat.com designates 170.10.129.124 as permitted sender) smtp.mailfrom=aesteve@redhat.com;
	dmarc=pass (policy=quarantine) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1779183801;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=5x571feKyCrxAyf039bp6xhn3Td73dplWB4PHAo5Mng=;
	b=TtLgIlSTk0kRO9ZPvkrLDs9bgs97tSEGLHjqELywBE1r1nxKee7tyjOPXl+NA1uniPtiD2
	4n4OEGVnU3vAUFTvOKNO/5yAU3aUkfLHlQsMYidVeWmo7s8vS+gNudIRuY14GHNXKGmwL3
	NXmtRi3LU5+Fy0wTn6VTMlQMNF1t7Pg=
Received: from mail-yw1-f197.google.com (mail-yw1-f197.google.com
 [209.85.128.197]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-53-H0czeUcVPO-Iv11la5tSnA-1; Tue, 19 May 2026 05:43:20 -0400
X-MC-Unique: H0czeUcVPO-Iv11la5tSnA-1
X-Mimecast-MFC-AGG-ID: H0czeUcVPO-Iv11la5tSnA_1779183799
Received: by mail-yw1-f197.google.com with SMTP id 00721157ae682-7bd795b6288so47080617b3.0
        for <linaro-mm-sig@lists.linaro.org>; Tue, 19 May 2026 02:43:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779183799; x=1779788599;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=5x571feKyCrxAyf039bp6xhn3Td73dplWB4PHAo5Mng=;
        b=kq4FkkaUh9ezU4ikhNA0km6v5PUlSQNpE1ta59nN+rA3d0q5XtXvzsws6GEnu1vLkE
         FANa81IKQEfCDp62StL0Dncs8VBC7YcmV3cddWzMA9p1CYL0eUjgqotqiC7YM0xeOzvH
         EJ/q6eq7AtU7Kh8faHFX1PlHEvoV6LRl6mF+a+tOogswwUvvL3RP3KviPiJ7zZe0+r3j
         knyELWJU5UtPw2RfysMrJegKEO/pXeimc+eKgiCeAibWm1mmc2O1CC+jlkDWQ0zL3u7Z
         QBboBB3sYAGT6liTxLXTnKcHgZqDqcF/xLMmehQ/cnC31cAltSO8/mXLCHr9JZ3JY60Z
         T6FQ==
X-Forwarded-Encrypted: i=1; AFNElJ838g46gv76p8ja9BPRQIWdMJ744F2jR2qIBxZ6fEsuw4FP+YCODrpE1VJqM3pnstnLNBzY0aD+uRV0tWF2@lists.linaro.org
X-Gm-Message-State: AOJu0YzWqNJQBfScdcAXMCABeIm6PFYPohQtr+1WVF+P58C0GDqYOVV4
	8tZxjzMoX94MEE1RZEa2KDful4nr8i9HOWCH7jsU8il3HmSvJOyscUSOCFuOctsDBAbQ6o2ucbc
	cOX/4shVDhfmQdiNUFux5YvUQXT0UFLiSGJQHGrgGdg9nn+vRWKwSPMNoqPQwm/VONN/Pl1xRBP
	9tNbXEx2NtJUVT8ysZ1gQvQqvnZLRD5UOmofZf4T1mmDw=
X-Gm-Gg: Acq92OGLPo7/AveBL9f62vP14WVUaLEHJVlXFB9pjp+INignFyLw4gMPxM7aALsk4rM
	FC4aPRGfmYxtENi2tdoT/afXWA57bfpUPfCEnwBPEr6dmhHeCLm2N2SUOesaoJo3Z2Eo0lj3reb
	chdbiqsKHsBeWu6pa0OqrldJ+0kXoCxiQUbWsfdWVfEzXj71JIUXyY733njIveTlZfZMPvNq6c4
	kspsw==
X-Received: by 2002:a05:690c:6e81:b0:7bd:a63d:fe69 with SMTP id 00721157ae682-7c7e6586abemr212584517b3.9.1779183799567;
        Tue, 19 May 2026 02:43:19 -0700 (PDT)
X-Received: by 2002:a05:690c:6e81:b0:7bd:a63d:fe69 with SMTP id
 00721157ae682-7c7e6586abemr212584217b3.9.1779183799106; Tue, 19 May 2026
 02:43:19 -0700 (PDT)
MIME-Version: 1.0
References: <20260512-v2_20230123_tjmercier_google_com-v1-0-6326701c3691@redhat.com>
 <20260512-v2_20230123_tjmercier_google_com-v1-2-6326701c3691@redhat.com>
 <CAGsJ_4xfznffbjOaNKwnN6oZk_H6pqOzYqd1zx4Q9XrocdzV8A@mail.gmail.com>
 <CADSE00LjJcL8P5M-UPEpzZijU70uEmUirnin29N8YR5W5D-oFg@mail.gmail.com> <CAGsJ_4xwJ7SAhKPJyRtMTw6psTO7H1EcFFpDw0po1W8PX4FE8g@mail.gmail.com>
In-Reply-To: <CAGsJ_4xwJ7SAhKPJyRtMTw6psTO7H1EcFFpDw0po1W8PX4FE8g@mail.gmail.com>
From: Albert Esteve <aesteve@redhat.com>
Date: Tue, 19 May 2026 11:43:06 +0200
X-Gm-Features: AVHnY4K6WRueJTIRx5g-aAlFuFoKaIp0iRf0U18smAauuYj52IGoBPbNpAKamXc
Message-ID: <CADSE00L00D7yi_DevNsZ8_=VXBVD2eO5FbcM+sv1ZdwgjaiRmg@mail.gmail.com>
To: Barry Song <baohua@kernel.org>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: t5kRqdreH_h7mpugZb3UemLpoJyahM53qm1pK6YUiTY_1779183799
X-Mimecast-Originator: redhat.com
X-Spamd-Bar: ----
Message-ID-Hash: 4CPT3B5S23S5BM7PRY7TFSED7N3YPZAR
X-Message-ID-Hash: 4CPT3B5S23S5BM7PRY7TFSED7N3YPZAR
X-MailFrom: aesteve@redhat.com
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
CC: Tejun Heo <tj@kernel.org>, Johannes Weiner <hannes@cmpxchg.org>, =?UTF-8?Q?Michal_Koutn=C3=BD?= <mkoutny@suse.com>, Jonathan Corbet <corbet@lwn.net>, Shuah Khan <skhan@linuxfoundation.org>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Michal Hocko <mhocko@kernel.org>, Roman Gushchin <roman.gushchin@linux.dev>, Shakeel Butt <shakeel.butt@linux.dev>, Muchun Song <muchun.song@linux.dev>, Andrew Morton <akpm@linux-foundation.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T.J. Mercier" <tjmercier@google.com>, Christian Brauner <brauner@kernel.org>, Paul Moore <paul@paul-moore.com>, James Morris <jmorris@namei.org>, "Serge E. Hallyn" <serge@hallyn.com>, Stephen Smalley <stephen.smalley.work@gmail.com>, Ondrej Mosnacek <omosnace@redhat.com>, Shuah Khan <shuah@kernel.org>, cgroups@vger.kernel.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel
 .org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-mm@kvack.org, linux-security-module@vger.kernel.org, selinux@vger.kernel.org, linux-kselftest@vger.kernel.org, mripard@kernel.org, echanude@redhat.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH RFC 2/5] dma-heap: charge dma-buf memory via explicit memcg
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/4CPT3B5S23S5BM7PRY7TFSED7N3YPZAR/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [3.59 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[redhat.com : SPF not aligned (relaxed),quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_REJECT(1.00)[redhat.com:s=mimecast20190719];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[36];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[redhat.com:-];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aesteve@redhat.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,cmpxchg.org,suse.com,lwn.net,linuxfoundation.org,linaro.org,amd.com,linux.dev,linux-foundation.org,collabora.com,arm.com,google.com,paul-moore.com,namei.org,hallyn.com,gmail.com,redhat.com,vger.kernel.org,vger.kernel,lists.freedesktop.org,lists.linaro.org,kvack.org];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:rdns,lists.linaro.org:helo,mail.gmail.com:mid]
X-Rspamd-Queue-Id: 8E49457B80D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gVHVlLCBNYXkgMTksIDIwMjYgYXQgMTI6NDPigK9BTSBCYXJyeSBTb25nIDxiYW9odWFAa2Vy
bmVsLm9yZz4gd3JvdGU6DQo+DQo+IE9uIE1vbiwgTWF5IDE4LCAyMDI2IGF0IDg6MTbigK9QTSBB
bGJlcnQgRXN0ZXZlIDxhZXN0ZXZlQHJlZGhhdC5jb20+IHdyb3RlOg0KPiA+DQo+ID4gT24gU2F0
LCBNYXkgMTYsIDIwMjYgYXQgOTozN+KAr0FNIEJhcnJ5IFNvbmcgPGJhb2h1YUBrZXJuZWwub3Jn
PiB3cm90ZToNCj4gPiA+DQo+ID4gPiBPbiBUdWUsIE1heSAxMiwgMjAyNiBhdCA1OjE44oCvUE0g
QWxiZXJ0IEVzdGV2ZSA8YWVzdGV2ZUByZWRoYXQuY29tPiB3cm90ZToNCj4gPiA+ID4NCj4gPiA+
ID4gT24gZW1iZWRkZWQgcGxhdGZvcm1zIGEgY2VudHJhbCBwcm9jZXNzIG9mdGVuIGFsbG9jYXRl
cyBkbWEtYnVmDQo+ID4gPiA+IG1lbW9yeSBvbiBiZWhhbGYgb2YgY2xpZW50IGFwcGxpY2F0aW9u
cy4gV2l0aG91dCBhIHdheSB0bw0KPiA+ID4gPiBhdHRyaWJ1dGUgdGhlIGNoYXJnZSB0byB0aGUg
cmVxdWVzdGluZyBjbGllbnQncyBjZ3JvdXAsIHRoZQ0KPiA+ID4gPiBjb3N0IGxhbmRzIG9uIHRo
ZSBhbGxvY2F0b3IsIG1ha2luZyBwZXItY2dyb3VwIG1lbW9yeSBsaW1pdHMNCj4gPiA+ID4gaW5l
ZmZlY3RpdmUgZm9yIHRoZSBhY3R1YWwgY29uc3VtZXJzLg0KPiA+ID4gPg0KPiA+ID4gPiBBZGQg
Y2hhcmdlX3BpZF9mZCB0byBzdHJ1Y3QgZG1hX2hlYXBfYWxsb2NhdGlvbl9kYXRhLiBXaGVuIHNl
dCB0bw0KPiA+ID4gPiBhIHZhbGlkIHBpZGZkLCBETUFfSEVBUF9JT0NUTF9BTExPQyByZXNvbHZl
cyB0aGUgdGFyZ2V0IHRhc2sncw0KPiA+ID4gPiBtZW1jZyBhbmQgY2hhcmdlcyB0aGUgYnVmZmVy
IHRoZXJlIHZpYSBtZW1fY2dyb3VwX2NoYXJnZV9kbWFidWYoKQ0KPiA+ID4gPiBpbnNpZGUgZG1h
X2hlYXBfYnVmZmVyX2FsbG9jKCkuIFdpdGhvdXQgY2hhcmdlX3BpZF9mZCwgYW5kIHdpdGgNCj4g
PiA+ID4gdGhlIG1lbV9hY2NvdW50aW5nIG1vZHVsZSBwYXJhbWV0ZXIgZW5hYmxlZCwgdGhlIGJ1
ZmZlciBpcyBjaGFyZ2VkDQo+ID4gPiA+IHRvIHRoZSBhbGxvY2F0b3IncyBvd24gY2dyb3VwLg0K
PiA+ID4gPg0KPiA+ID4gPiBBZGRpdGlvbmFsbHksIGNvbW1pdCAzYzIyN2JlOTA2NTkgKCJkbWEt
YnVmOiBzeXN0ZW1faGVhcDogYWNjb3VudCBmb3INCj4gPiA+ID4gc3lzdGVtIGhlYXAgYWxsb2Nh
dGlvbiBpbiBtZW1jZyIpIGFkZHMgX19HRlBfQUNDT1VOVCB0byBzeXN0ZW0taGVhcA0KPiA+ID4g
PiBwYWdlIGFsbG9jYXRpb25zLiBLZWVwaW5nIF9fR0ZQX0FDQ09VTlQgd291bGQgY2hhcmdlIHRo
ZSBzYW1lIHBhZ2VzDQo+ID4gPiA+IHR3aWNlIChvbmNlIHRvIGttZW0sIG9uY2UgdG8gTUVNQ0df
RE1BQlVGKSwgdGh1cyByZW1vdmUgaXQgYW5kIHJvdXRlDQo+ID4gPiA+IGFsbCBhY2NvdW50aW5n
IHRocm91Z2ggYSBzaW5nbGUgTUVNQ0dfRE1BQlVGIHBhdGguDQo+ID4gPiA+DQo+ID4gPiBbLi4u
XQ0KPiA+ID4NCj4gPiA+ID4gLSAgICAgICAgICAgICAgIGlmIChtZW1fYWNjb3VudGluZykNCj4g
PiA+ID4gLSAgICAgICAgICAgICAgICAgICAgICAgZmxhZ3MgfD0gX19HRlBfQUNDT1VOVDsNCj4g
PiA+DQo+ID4gPiBIaSBBbGJlcnQsDQo+ID4gPg0KPiA+ID4gd291bGQgaXQgYmUgYmV0dGVyIHRv
IG1vdmUgdGhpcyBhbmQgaXRzIGRlc2NyaXB0aW9uIHRvIHBhdGNoIDE/IEl0DQo+ID4gPiBsb29r
cyBsaWtlIHBhdGNoIDEgYWxyZWFkeSBpbnRyb2R1Y2VzIHRoZSBkb3VibGUgYWNjb3VudGluZyBj
aGFuZ2VzLA0KPiA+ID4gYW5kIHBhdGNoIDIgaXMgbWFpbmx5IGp1c3Qgc3VwcG9ydGluZyByZW1v
dGUgY2hhcmdpbmcuDQo+ID4NCj4gPiBIaSBCYXJyeSwNCj4gPg0KPiA+IFRoYW5rcyBmb3IgbG9v
a2luZyBpbnRvIHRoaXMgc2VyaWVzISBZZXMsIGluIG15IGhlYWQgSSB3YXMgdHJ5aW5nIHRvDQo+
ID4ga2VlcCBwYXRjaCAxLCB3aGljaCB3YXMgdGFrZW4gZnJvbSBhIHByZXZpb3VzLCBkaWZmZXJl
bnQgc2VyaWVzLCBhbmQNCj4gPiB0aGVuIGRpdmVyZ2UgZnJvbSBpdCBzdGFydGluZyB3aXRoIHBh
dGNoIDIuIFRoaXMgd291bGQgY2xhcmlmeSB0aGUNCj4gPiBkaWZmZXJlbmNlIGJldHdlZW4gdGhl
IHR3by4gQnV0IEkgY2FuIHNlZSBpdCBqdXN0IGFkZGVkIHNvbWUgY29uZnVzaW9uDQo+ID4gKGZv
ciBleGFtcGxlLCBwYXRjaCAxIGNoYXJnZXMgb24gZG1hX2J1Zl9leHBvcnQoKSBhbmQgdGhlbiBp
dCBpcyBtb3ZlZA0KPiA+IHRvIGRtYV9oZWFwX2J1ZmZlcl9hbGxvYygpIGluIHBhdGNoIDIpLiBJ
IHdpbGwgcmVvcmdhbml6ZSBpdCBiZXR0ZXINCj4gPiBmb3IgdGhlIG5leHQgdmVyc2lvbiwgaW5j
bHVkaW5nIHlvdXIgc3VnZ2VzdGlvbi4NCj4NCj4gWWVwLCBJIHVuZGVyc3RhbmQgdGhlIHNpdHVh
dGlvbiBub3cuIEkgYWxzbyB1bmRlcnN0YW5kDQo+IHRoYXQgeW91IHdlcmUgcmVmZXJyaW5nIHRv
IFQuSi4ncyBwYXRjaCwgd2hpY2ggY2F1c2VkDQo+IHNvbWUgYmFjay1hbmQtZm9ydGggY29uZnVz
aW9uIGZvciByZWFkZXJzIHdoZW4gcmVhZGluZw0KPiBwYXRjaGVzIDEgYW5kIDIuDQo+DQo+ID4N
Cj4gPiA+DQo+ID4gPiBBbHNvLCBtZW1fYWNjb3VudGluZyBpcyBvbmx5IHVzZWQgYnkgc3lzdGVt
X2hlYXAuYzsgaGFzIHRoaXMgcGF0Y2hzZXQNCj4gPiA+IGFsc28gZWxpbWluYXRlZCBpdHMgbmVl
ZD8NCj4gPg0KPiA+IE5vLCBtZW1fYWNjb3VudGluZyBpcyBzdGlsbCBoYW5kbGVkIGluIHRoaXMg
cGF0Y2ggZm9yIHRoZSBnZW5lcmFsIGNhc2UNCj4gPiB3aGVyZSBubyBgY2hhcmdlX3BpZF9mZGAg
aXMgdXNlZC4gU2VlIGRtYV9oZWFwX2J1ZmZlcl9hbGxvYygpIGNvZGU6DQo+ID4NCj4gPiArICAg
ICAgIGlmIChtZW1jZykNCj4gPiArICAgICAgICAgICAgICAgY3NzX2dldCgmbWVtY2ctPmNzcyk7
DQo+ID4gKyAgICAgICBlbHNlIGlmIChtZW1fYWNjb3VudGluZykNCj4gPiArICAgICAgICAgICAg
ICAgbWVtY2cgPSBnZXRfbWVtX2Nncm91cF9mcm9tX21tKGN1cnJlbnQtPm1tKTsNCj4NCj4gSSBz
ZWUuIFdoYXQgZmVlbHMgYSBiaXQgb2RkIHRvIG1lIGlzIHRoYXQgbWVtX2FjY291bnRpbmcNCj4g
Y291bGQgZWl0aGVyIGJlIGRyb3BwZWQgKHdpdGggdW5jb25kaXRpb25hbCBjaGFyZ2luZyksIG9y
DQo+IGl0IHNob3VsZCBjb3ZlciBib3RoIHJlbW90ZSBhbmQgbG9jYWwgY2hhcmdlIGNhc2VzLg0K
DQpHb29kIHBvaW50LiBJZiBJIHVuZGVyc3RhbmQgY29ycmVjdGx5LCBsb29raW5nIGF0IHBhdGNo
IFsxXSB0aGF0DQppbnRyb2R1Y2VkIHRoZSBmbGFnLCB0aGUgc2hhcmVkIGJ1ZmZlciBjYXZlYXRz
IG1lbnRpb25lZCB0aGVyZSBhcmUgbm90DQp5ZXQgY292ZXJlZCBieSB0aGlzIGFwcHJvYWNoLCBz
byB0aGUgZmxhZyBzaG91bGQgc3RheS4gSSB3aWxsIG1ha2UgaXQNCmNvbnNpc3RlbnQgYW5kIGNv
dmVyIGJvdGggcmVtb3RlIGFuZCBsb2NhbCBjaGFyZ2UgY2FzZXMuDQoNClsxXSBodHRwczovL2xv
cmUua2VybmVsLm9yZy9hbGwvMjAyNjAxMTYtZG1hYnVmLWhlYXAtc3lzdGVtLW1lbWNnLXYzLTEt
ZWNjNmI2MmNjNDQ2QHJlZGhhdC5jb20vDQoNCj4NCj4gSSBkb27igJl0IGhhdmUgYSBzdHJvbmcg
b3BpbmlvbiBoZXJl4oCUaXQganVzdCBmZWVscyBhIGJpdA0KPiBzdHJhbmdlLCBzaW5jZSBpdHMg
ZGVzY3JpcHRpb24gaXMgcXVpdGUgZ2VuZXJpYyBmb3IgbWVtY2c6DQo+DQo+ICJFbmFibGUgY2dy
b3VwLWJhc2VkIG1lbW9yeSBhY2NvdW50aW5nIGZvciBkbWEtYnVmIGhlYXANCj4gYWxsb2NhdGlv
bnMgKGRlZmF1bHQ9ZmFsc2UpLiINCj4NCj4gQmVzdCBSZWdhcmRzDQo+IEJhcnJ5DQo+DQoNCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1z
aWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1
YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJv
Lm9yZwo=
