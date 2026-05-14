Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iE7UHeXiBmoBowIAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 15 May 2026 11:09:57 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 557E754C11F
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 15 May 2026 11:09:57 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 22AE6404CA
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 15 May 2026 09:02:20 +0000 (UTC)
Received: from mail-yx1-f52.google.com (mail-yx1-f52.google.com [74.125.224.52])
	by lists.linaro.org (Postfix) with ESMTPS id 4AD813F7FD
	for <linaro-mm-sig@lists.linaro.org>; Thu, 14 May 2026 17:09:22 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=SDSW0iVQ;
	arc=pass ("google.com:s=arc-20240605:i=1");
	spf=pass (lists.linaro.org: domain of olvaffe@gmail.com designates 74.125.224.52 as permitted sender) smtp.mailfrom=olvaffe@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-yx1-f52.google.com with SMTP id 956f58d0204a3-651c5d525f6so10697712d50.3
        for <linaro-mm-sig@lists.linaro.org>; Thu, 14 May 2026 10:09:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1778778562; cv=none;
        d=google.com; s=arc-20240605;
        b=kNxW7IVgDiPWsuybZAKYwu9aVd4kcFLBpv3cLajuTdhrUhlyT/ped5PgBXoNLgK8n3
         dNvEVdH4uY1yINDOfriSNzMWOZuf/Y5mUD6FkZOzvSeIu1HRUV/GEe5CoCMDFEfkfLGE
         hxODW4oGBGHGS8LRheJsXKGoMYONAw63qyvn7Ho+KvzwqZmP/6MxdayHD25qNlmCgSDO
         PM00UjkjKwNeN3QTrM9v7bbYgHgAEKhe2jsTmZOBFiunGo3uunDdBR+ZKYmmEcOOqc0Q
         7AaPBi8lskxbjrS2Tr3uBBYOakErmeKQmk6zpnPCH3nBdwFu3mxB6DaWVSQ53/cZu+xs
         fJJQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=Q68k3qvFh5WSmW5/XAb3NIaTUyA2Pk7yy6D1aLYaWeE=;
        fh=8Ht8kSyjJCb0AB/JFcCV2uyCtpbqB888ZI7EYhvRZM4=;
        b=i62QNmUO8nMrrP8sdkigBiXgK7OM/x3Q2OnqH2w7CQavrVAEfYzggXbVcwRV9oFQmS
         jfW9dk0hRNH+oVof5kwr+stIrHZa9DJy8XdoSp/VjT62mElYrDAclnxWb8bzqvpv7u+t
         2xqPUyw9OB+ApvUzzpviZh0hNYuaqh3EWsw4puapWKNZ9+7KWMeUx0gkm7o0Ge6zRxCi
         1Cwoh8RjzkH7WDoI93EAFrbSlOHh1a2cpdxSRAJ2eaAI0EhbZ+xSWjbSf3wcJfuM4rKW
         /oXR0IoL7rFgDgqvSWT9dv0xbzO4d1e4XkaFJvgz9KfkYq14p6j2TmDcMK4YiQ9NhtEL
         Ouuw==;
        darn=lists.linaro.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1778778562; x=1779383362; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Q68k3qvFh5WSmW5/XAb3NIaTUyA2Pk7yy6D1aLYaWeE=;
        b=SDSW0iVQyXmDS86zOO80c12x6uUtaYDLQzwP/Q3SKGxDv6G82AnsYwF42RZv7bFSA3
         kz8ageeE5om55uav0m692Y0y6Yr0g2MF1LeqaZIG++TN6KqeTiOc36b/H8iz1iA7nGXR
         /ncPuHaSpuisr4nnnP74XvZ9bYZX1xx4af/Oa7sRpXcK7d6WpXccRW7dRvXyAvTJtRHL
         RfV6Lom+yDgu86faWudB2XJUzeeDelMBBAc8cltkrwmDUmJK1PR1Gh9MZJIWAjwLCNDA
         lNf2ygB1F+FZeoIJB0ybGiHX68RtWnNLmYyAmk9pOpVWNoSyZdCabDuV3oZsj/aKqsix
         mCxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778778562; x=1779383362;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Q68k3qvFh5WSmW5/XAb3NIaTUyA2Pk7yy6D1aLYaWeE=;
        b=FkA7/F8DsuDeiXPF+humLfZvnrlPm+cRJ8eY7jptRh+gahvF0BafNVnmEra+73R9T/
         mhpXxDqbatP7EvQXttEMvRBLGgar4cEcjiurCJZQXJlZExJF40HL0YkBW24CXgGOweql
         apUxHdqeFso57b5Zmf5GsLs9OCWLwAQzXsB1mk9B8cd81VPBLuD26N9owG3m4u8N49qQ
         o5cFnwszca/+GJbEGsDqVcP7VOaS54+GgKJswaLBRiIgzxIkqmGxsKA924w+kfogrrxg
         dyd/eJppMLJ6fv45ciG5/7FuMtQ95vXf8XglIv53XUAE0oxSqgW7gULOemCDuLV7UKGr
         opIA==
X-Forwarded-Encrypted: i=1; AFNElJ98CTi1qEtOjel2ebvGw44ocwhgYj5vg4iA7B02qQOC57ub5JKyuqMSJlolF1+eeKETFuf/2LPTbqOOHBDV@lists.linaro.org
X-Gm-Message-State: AOJu0YwIPLgYsD0MbdW0KeaSoEl8jV5TCKgRdahesIK7XG4y6Gx4uiow
	p1l2klUpP00uJBiL2vfhzfOjz7GPg0nt8oMnB+XnzjYZG5Gaeu9j0Cwnj1UBZfmy5N8bw+L7hFJ
	NVRQ+t2o+yyDgxgmpUIesDNlWdlZPmvI=
X-Gm-Gg: Acq92OE6DhrHAvPn/NiVU+AJKBBJb6vFFQZdvElyMYWeyfwuN47pwHP3OqwqZg9n7SL
	7gXqO5Uu8lpiNbbp4kRbHPh5PcLvA9YxnD8uhdvq3gkz4fM6ayzgT1wOKrte+bhrbpj0GG944Sm
	P249iPq14k968E7W77mpBuHFcDhJ2AFnLqU1VyrvAG5oEEtpuAgQVUxOfEx2qICmDgJXCuY6I7R
	uKz5Cs0fbYkprzDoEGZzgrvVgzIiq5dh1dzxTJuJEvkNrEytSXw4vhzvmGR7DZqosR+DOrBDYo4
	JPP8cMOlBwKxhmus4ZZQCWG8tjFd1k45jmarU/amx8wEl3zt8MMoRHAzF8h4Irhq6KiE5RSNoA=
	=
X-Received: by 2002:a05:690c:6d84:b0:7bd:7b55:ebe1 with SMTP id
 00721157ae682-7c959f80c19mr1966067b3.1.1778778561722; Thu, 14 May 2026
 10:09:21 -0700 (PDT)
MIME-Version: 1.0
References: <20260513-panthor-guard-refactor-v1-0-f2d8c15a97ce@collabora.com>
 <20260513-panthor-guard-refactor-v1-1-f2d8c15a97ce@collabora.com> <5ab2d07c-74a4-4a2c-b145-6ed7b0060944@arm.com>
In-Reply-To: <5ab2d07c-74a4-4a2c-b145-6ed7b0060944@arm.com>
From: Chia-I Wu <olvaffe@gmail.com>
Date: Thu, 14 May 2026 10:09:10 -0700
X-Gm-Features: AVHnY4I212PjTT_rDyYSXIkovkEef-Opnswhr90mIqa564wAfvhabndPAnzBHJ8
Message-ID: <CAPaKu7S9WMbJERrWa=bj5qyQg72no9MPex6S1MY6t8nXoMbB-Q@mail.gmail.com>
To: Steven Price <steven.price@arm.com>
X-Spamd-Bar: ---
X-MailFrom: olvaffe@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: FH455YP5KOBU26XM5JDP2IINUGOUUHLU
X-Message-ID-Hash: FH455YP5KOBU26XM5JDP2IINUGOUUHLU
X-Mailman-Approved-At: Fri, 15 May 2026 09:01:34 +0000
CC: Boris Brezillon <boris.brezillon@collabora.com>, Liviu Dudau <liviu.dudau@arm.com>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 1/6] drm/panthor: Driver-wide xxx_[un]lock -> [scoped_]guard replacement
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/FH455YP5KOBU26XM5JDP2IINUGOUUHLU/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Rspamd-Queue-Id: 557E754C11F
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.69 / 15.00];
	R_DKIM_REJECT(1.00)[gmail.com:s=20251104];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed),none];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:-];
	FREEMAIL_FROM(0.00)[gmail.com];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[olvaffe@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	FREEMAIL_CC(0.00)[collabora.com,arm.com,linaro.org,amd.com,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,vger.kernel.org,lists.freedesktop.org,lists.linaro.org];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	NEURAL_SPAM(0.00)[0.194];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action

T24gVGh1LCBNYXkgMTQsIDIwMjYgYXQgNjoyNOKAr0FNIFN0ZXZlbiBQcmljZSA8c3RldmVuLnBy
aWNlQGFybS5jb20+IHdyb3RlOg0KPg0KPiBPbiAxMy8wNS8yMDI2IDE3OjU4LCBCb3JpcyBCcmV6
aWxsb24gd3JvdGU6DQo+ID4gUmlnaHQgbm93IHBhbnRob3IgaXMgbWl4ZWQgYmFnIG9mIG1hbnVh
bCBsb2NrcyBhbmQgZ3VhcmRzLiBMZXQncw0KPiA+IG1ha2UgdGhhdCBtb3JlIGNvbnNpdGVudCBh
bmQgdGh1cyBlbmNvdXJhZ2UgbmV3IHN1Ym1pc3Npb25zIHRvIGdvDQo+ID4gZm9yIGd1YXJkcy4N
Cj4NCj4gSSdtIGZpbmUgd2l0aCBlbmNvdXJhZ2luZyBndWFyZHMgZm9yIGZ1dHVyZSBjb2RlIC0g
YnV0IEknbSBhIGxpdHRsZSB3YXJ5DQo+IG9mIGEgYmlnIGNoYW5nZSBsaWtlIHRoaXMgLSBpdCdz
IGhhcmQgdG8gcmV2aWV3IGl0IGFuZCBjaGVjayB0aGF0DQo+IGV2ZXJ5dGhpbmcgd29ya3MgdGhl
IHNhbWUuIEFuZCBpdCdzIGEgbGl0dGxlIGR1YmlvdXMgdGhhdCB0aGUgbWVjaGFuaWNhbA0KPiBy
ZWZhY3RvcmluZyBwcm9kdWNlcyBtb3JlIHJlYWRhYmxlIGNvZGUgaW4gc29tZSBjYXNlcy4NCkkg
YWdyZWUgd2l0aCBTdGV2ZW4gaW4gZ2VuZXJhbCwgYWx0aG91Z2ggSSBhbSBpbiBmYXZvciBvZiBs
YW5kaW5nIG5vdw0KdGhhdCB5b3UndmUgZ29uZSB0aHJvdWdoIHRoZSB0cm91YmxlLg0KDQpJIGFs
c28gaGF2ZSBtaXhlZCBmZWVsaW5ncyBhYm91dCBzb21lIG9mIHRoZSBub24tc2NvcGVkIGd1YXJk
cy4gVGhlaXINCnNjb3BlcyBhcmUgZXh0ZW5kZWQgc2xpZ2h0bHkgdGhhbiBiZWZvcmUsIHN1cHBv
c2VkbHkgdG8gYXZvaWQgYWRkaW5nDQphbm90aGVyIGxldmVsIG9mIGluZGVudGF0aW9uLiBCdXQg
b3RoZXIgdGhhbiBzbGlnaHRseSBzbG93ZXIsIGl0IGFsc28NCmJlY29tZXMgbGVzcyBjbGVhciB3
aGF0IGV4YWN0bHkgZG8gdGhlIGd1YXJkcyBwcm90ZWN0Lg0KDQo+DQo+IFRoYXQgc2FpZCBJIGFz
a2VkIG15IGZyaWVuZGx5IEFJIGJvdC4uLg0KPg0KPiBbLi4uXQ0KPg0KPiA+IEBAIC0zMTQyLDQ4
ICszMTI2LDQ0IEBAIHBhbnRob3JfbW11X3JlY2xhaW1fcHJpdl9ib3Moc3RydWN0IHBhbnRob3Jf
ZGV2aWNlICpwdGRldiwNCj4gPiAgICAgICBMSVNUX0hFQUQocmVtYWluaW5nX3Ztcyk7DQo+ID4g
ICAgICAgTElTVF9IRUFEKHZtcyk7DQo+ID4NCj4gPiAtICAgICBtdXRleF9sb2NrKCZwdGRldi0+
cmVjbGFpbS5sb2NrKTsNCj4gPiAtICAgICBsaXN0X3NwbGljZV9pbml0KCZwdGRldi0+cmVjbGFp
bS52bXMsICZ2bXMpOw0KPiA+ICsgICAgIHNjb3BlZF9ndWFyZChtdXRleCwgJnB0ZGV2LT5yZWNs
YWltLmxvY2spDQo+ID4gKyAgICAgICAgICAgICBsaXN0X3NwbGljZV9pbml0KCZwdGRldi0+cmVj
bGFpbS52bXMsICZ2bXMpOw0KPiA+DQo+ID4gICAgICAgd2hpbGUgKGZyZWVkIDwgbnJfdG9fc2Nh
bikgew0KPiA+ICAgICAgICAgICAgICAgc3RydWN0IHBhbnRob3Jfdm0gKnZtOw0KPiA+DQo+ID4g
LSAgICAgICAgICAgICB2bSA9IGxpc3RfZmlyc3RfZW50cnlfb3JfbnVsbCgmdm1zLCB0eXBlb2Yo
KnZtKSwNCj4gPiAtICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHJl
Y2xhaW0ubHJ1X25vZGUpOw0KPiA+IC0gICAgICAgICAgICAgaWYgKCF2bSkNCj4gPiAtICAgICAg
ICAgICAgICAgICAgICAgYnJlYWs7DQo+ID4gLQ0KPiA+IC0gICAgICAgICAgICAgaWYgKCFrcmVm
X2dldF91bmxlc3NfemVybygmdm0tPmJhc2Uua3JlZikpIHsNCj4gPiAtICAgICAgICAgICAgICAg
ICAgICAgbGlzdF9kZWxfaW5pdCgmdm0tPnJlY2xhaW0ubHJ1X25vZGUpOw0KPiA+IC0gICAgICAg
ICAgICAgICAgICAgICBjb250aW51ZTsNCj4gPiArICAgICAgICAgICAgIHNjb3BlZF9ndWFyZCht
dXRleCwgJnB0ZGV2LT5yZWNsYWltLmxvY2spIHsNCj4gPiArICAgICAgICAgICAgICAgICAgICAg
dm0gPSBsaXN0X2ZpcnN0X2VudHJ5X29yX251bGwoJnZtcywgdHlwZW9mKCp2bSksDQo+ID4gKyAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHJlY2xhaW0u
bHJ1X25vZGUpOw0KPiA+ICsgICAgICAgICAgICAgICAgICAgICBpZiAodm0gJiYgIWtyZWZfZ2V0
X3VubGVzc196ZXJvKCZ2bS0+YmFzZS5rcmVmKSkgew0KPiA+ICsgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgIGxpc3RfZGVsX2luaXQoJnZtLT5yZWNsYWltLmxydV9ub2RlKTsNCj4gPiArICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICB2bSA9IE5VTEw7DQo+ID4gKyAgICAgICAgICAgICAg
ICAgICAgIH0NCj4gPiAgICAgICAgICAgICAgIH0NCj4gPg0KPiA+IC0gICAgICAgICAgICAgbXV0
ZXhfdW5sb2NrKCZwdGRldi0+cmVjbGFpbS5sb2NrKTsNCj4gPiArICAgICAgICAgICAgIGlmICgh
dm0pDQo+ID4gKyAgICAgICAgICAgICAgICAgICAgIGJyZWFrOw0KPg0KPiAuLi4gYW5kIGl0IHNh
aWQgdGhlIGFib3ZlIGhhcyBjaGFuZ2VkIGJlaGF2aW91ci4NCj4NCj4gSW4gdGhlICFrcmVmX2dl
dF91bmxlc3NfemVybygpIGNhc2UgeW91IG5vdyBhc3NpZ24gdm0gPSBOVUxMIHdoaWNoIHRoZW4N
Cj4gbGVhZHMgdG8gdGhlICdicmVhaycgY2FzZSBhYm92ZS4gUHJldmlvdXNseSB3ZSAnY29udGlu
dWUnZC4NCj4NCj4gVGhhbmtzLA0KPiBTdGV2ZQ0KX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJv
LW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8g
bGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
