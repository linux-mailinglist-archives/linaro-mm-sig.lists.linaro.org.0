Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qG2jI2xxxmmkJwUAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 27 Mar 2026 13:00:44 +0100
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 9500A343E7D
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 27 Mar 2026 13:00:43 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3DC96402DB
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 27 Mar 2026 12:00:42 +0000 (UTC)
Received: from mail-qk1-f176.google.com (mail-qk1-f176.google.com [209.85.222.176])
	by lists.linaro.org (Postfix) with ESMTPS id 8642E402C8
	for <linaro-mm-sig@lists.linaro.org>; Fri, 27 Mar 2026 12:00:39 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=msTqmxpT;
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (lists.linaro.org: domain of miguel.ojeda.sandonis@gmail.com designates 209.85.222.176 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
	arc=pass ("google.com:s=arc-20240605:i=1")
Received: by mail-qk1-f176.google.com with SMTP id af79cd13be357-8cd877d1a4bso20845885a.1
        for <linaro-mm-sig@lists.linaro.org>; Fri, 27 Mar 2026 05:00:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1774612839; cv=none;
        d=google.com; s=arc-20240605;
        b=Cqq7CqnB9zJUtwXlmCjLA6s7OW2zlC39E/R3Ych7P301rY7GiIs3rPilwWmFLrQ8aQ
         4pyHNikTzW3wl8dE93KAOP+gNnjiUdV0JVHK4kekstpyHY9js88UDTkWWuW6Z1uVD94G
         DxQINfir0nv/Ffd9AoWhfZTMSjJlF/5JvUSI8KVe2mvl1d0hQn3SkLm4HO8+Cct7mITD
         kyffPJg1S/feSfB963d8Sf9zoExdPf0rL+v4ToEQyO/hv0R5LsWEjAfzBtbmVBYuiY5n
         jTym3EY/a1aFNzeEJiXiLKJpIr7LGL1d01a3GrxTGS952NqoRTszd0qqgONsVIjq0ToX
         5zpA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=v5btyYX9lHdsVC1fopO/cY1LA4YDt+YdOziS7/7GqeI=;
        fh=3dT2EJ3xndZW2pPB4C9GIQGRk6FezmTTCGf7yxP/2O4=;
        b=YphTL4eXeGOdbdQG3DBeyoQYWCzeMUdtbUJX5CjN2o2+9j9YjJZYwwuUtoJbmwI1NA
         a6V1j5D3BVLFZO57Al9OhGU3XKgmxf+tK0JhcY/qxOisGd6FUeH2e6gogUQJARWt64sW
         RBSnL4FGBnBAhtgaMdOOXJPVLYCToyNCjPOgrKdxgCWmI/efq7tonzLrZ9wZBdhLJ/I3
         9DFLDCm7D42cxNZnz0xVW96zUWWVJMHSw9CcJGSPQD38yrN4A/Es6jTdYedavQu7HmPJ
         BXoZqD2i+Rw5Dtu/QAMpz64ZPV1yKTVysIGxx0hBLQsxlGyC5i9AV6bCZLHXTZTAI74J
         WpyQ==;
        darn=lists.linaro.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1774612839; x=1775217639; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=v5btyYX9lHdsVC1fopO/cY1LA4YDt+YdOziS7/7GqeI=;
        b=msTqmxpTm51Mo2x2UPzIH/c7T7L4WxhiSR4wyt6mAc6WeOlw8UAVwt9G3XdUqyyeNo
         4R+jbiROZwYBX0Ww7LCYKPumbOC7M1R7Evf9q1J2QY16IpMugpY4ET8NtwXI2Th9tAos
         JGqcznqGUVVJbJwrisllqoyuh76KYS7KaS2ZuQqY6YCDSAjHxZJQz6wnHcKVdlQCDeJI
         b5x22GbtdFEIc3tGo0o1hZfG931STuj21kIRcF6r7TB+M+kANNOT4WkRv9WIhbBj34vj
         /l7iHz28zzFHbMB9Agnu2vs4Yn/LxJLfQSX1O050ya4IeOGVTBSjKkSR0Z3iFVeUAbPX
         H89Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774612839; x=1775217639;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=v5btyYX9lHdsVC1fopO/cY1LA4YDt+YdOziS7/7GqeI=;
        b=FY4q26Boh5zgzFsMXJcKJOcnuOp8hx3THh2ngnT+mlDgUG+Cqb8rPS+LFf+S3sqSEN
         2MO2bvlM3jbS/g2FcQhKyCY39TX5Z2bY1yCAscGjVNIqkHB2sZLZ8VlG0VCtnQDqdUoL
         BxFgcbZMObrT9BJrXBJkQS2IRUp/u1dgb+qcVzOGKqOtkPTYJvKbaUoD5s/7DUUjO6Nm
         0uVtaaFRixackbT4gN22Tz4QciC4n9hRspOny2ljCQo7Rop01gbd6+xQhlVpzfVkU+6A
         +HqDBzbpa3qbHIejnzIrEHPM0L1Yr1b58sOZHw6dEZBAICCi0kF6EzhA2dgHgUSCOyFF
         Vedg==
X-Forwarded-Encrypted: i=1; AJvYcCWs29HD4KZouXtJjPD3r/Bq58bBBDwyMb6+mp5AU7qPgwla2uFEjf5Q4G9Z1HOYcS/RYDxPDP0NBvHjiH5a@lists.linaro.org
X-Gm-Message-State: AOJu0Yz11lWtYIGAb3/crhSkCq7Ufk9XomIExbBovCT5bsiKism932aP
	FQVoSg/C4RJh7jLCLheeWBLubXM91Tu1Dh75tja53uFcdtfWmUlFkoB2Xsk1cVk6XgoIebLu/Dd
	xudJjhRhVazth3vt5Qrxx/c38LM3Fykq1QpxTns28T8dG
X-Gm-Gg: ATEYQzxLXLJiKfNxZmPwdHvZTUTN1qyrivRXabjFwT2FJIxHm36JHUYk1fAClqsyoZO
	h4mU6NQp5dmCTvnW7EAC3adgL1rLfLQZT2O9jgYV8RGbuQjjZL2LgPId4YjootjVk6RSMezLbIj
	UJRZke+W5lYwZBSl7VYZZ8Z8RcVM8PdUBkguQJRSB4As1q7+vzFRZ6hl2R2U94WegfEpDTwAg0n
	U0M3vHeokiYSf+sZlGcojrWdHzvwv6Gi37fJcgu7HOsUcPvVbGONgu61nMy5qbpdfWxxv6D/eyl
	sbvFvOscP/dFOmOVgSJ/kTvl+ycw6c8hgavgfIcL6f2u5HY5UEcyWTutZfZVg6clU+AKnkkZLf2
	N6mcGfAlZkFYHGKfL60+Siys=
X-Received: by 2002:a05:7301:578e:b0:2c1:82a:8711 with SMTP id
 5a478bee46e88-2c185cbaba4mr489012eec.2.1774605195712; Fri, 27 Mar 2026
 02:53:15 -0700 (PDT)
MIME-Version: 1.0
References: <20260316211646.650074-1-lyude@redhat.com> <DHCBEGGPWSVK.30MV8652PV4PY@kernel.org>
In-Reply-To: <DHCBEGGPWSVK.30MV8652PV4PY@kernel.org>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Fri, 27 Mar 2026 10:53:03 +0100
X-Gm-Features: AQROBzCDQRLEXYtIjvWCBTRZrsm2z1WTrrxZiqYf_IZKuXYInSunVO95k1Dfv0Y
Message-ID: <CANiq72muiQzRkvcEZNUceqxvDmUf0zPLaBvQRH+EfDSS0edo+A@mail.gmail.com>
To: Danilo Krummrich <dakr@kernel.org>
X-Spamd-Bar: --
Message-ID-Hash: 55T6NLJBST2ST3PKQWBWXMV3M6K66FRC
X-Message-ID-Hash: 55T6NLJBST2ST3PKQWBWXMV3M6K66FRC
X-MailFrom: miguel.ojeda.sandonis@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Lyude Paul <lyude@redhat.com>, Alice Ryhl <aliceryhl@google.com>, Miguel Ojeda <ojeda@kernel.org>, nouveau@lists.freedesktop.org, Gary Guo <gary@garyguo.net>, Daniel Almeida <daniel.almeida@collabora.com>, rust-for-linux@vger.kernel.org, Matthew Maurer <mmaurer@google.com>, FUJITA Tomonori <fujita.tomonori@gmail.com>, Lorenzo Stoakes <lorenzo.stoakes@oracle.com>, christian.koenig@amd.com, Asahi Lina <lina@asahilina.net>, Andreas Hindborg <a.hindborg@kernel.org>, Simona Vetter <simona@ffwll.ch>, Boqun Feng <boqun@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Krishna Ketan Rai <prafulrai522@gmail.com>, linux-media@vger.kernel.org, Shankari Anand <shankari.ak0208@gmail.com>, David Airlie <airlied@gmail.com>, Benno Lossin <lossin@kernel.org>, Viresh Kumar <viresh.kumar@linaro.org>, linaro-mm-sig@lists.linaro.org, Asahi Lina <lina+kernel@asahilina.net>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, kernel@vger.kernel.org, Deborah Brouwer <deborah.brouwer@collabora.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: (subset) [PATCH v9 0/7] Rust bindings for gem shmem
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/55T6NLJBST2ST3PKQWBWXMV3M6K66FRC/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [3.19 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_REJECT(1.00)[gmail.com:s=20251104];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[3];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[28];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[redhat.com,google.com,kernel.org,lists.freedesktop.org,garyguo.net,collabora.com,vger.kernel.org,gmail.com,oracle.com,amd.com,asahilina.net,ffwll.ch,linaro.org,lists.linaro.org,linuxfoundation.org];
	DKIM_TRACE(0.00)[gmail.com:-];
	TAGGED_RCPT(0.00)[linaro-mm-sig,kernel];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[miguelojedasandonis@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	NEURAL_SPAM(0.00)[0.987];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,linaro.org:email]
X-Rspamd-Queue-Id: 9500A343E7D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gVGh1LCBNYXIgMjYsIDIwMjYgYXQgMjoxNeKAr0FNIERhbmlsbyBLcnVtbXJpY2ggPGRha3JA
a2VybmVsLm9yZz4gd3JvdGU6DQo+DQo+IEBMeXVkZSwgQWxpY2UsIE1pZ3VlbDogUGxlYXNlIGhh
dmUgYSBsb29rIGF0IHdoYXQgSSBjYW1lIHVwIHdpdGggYmVsb3cuDQoNClNvdW5kcyBmaW5lIHRv
IG1lLCB0aGFua3MhDQoNCiAgLSBSZWdhcmRpbmcgdGhlIGVuYWJsZWQgdW5zdGFibGUgZmVhdHVy
ZTogbG9va3MgZ29vZCAtLSBpdCB3aWxsIGdvDQphd2F5IHRoaXMgY3ljbGUgYW55d2F5LCBzbyB3
ZSBtYXkgZ2V0IGEgY29uZmxpY3QsIGJ1dCB0aGF0IGlzIGZpbmUuDQoNCiAgLSBSZWdhcmRpbmcg
dGhlIGAmcmF3YCwgdGhhdCBzb3VuZHMgYWxzbyBnb29kLiBJIHNlZSB5b3UgZGlkIGl0DQpzaW1p
bGFybHkgdG8gaG93IEkgZGlkIGl0IGZvciBgYml0bWFwLnJzYCAtLSB0aGFua3MhDQoNCiAgICAo
QW5kIGZvciBmdXR1cmUgcmVmZXJlbmNlLCB0aGUgYGJpdG1hcC5yc2Agb25lIHdhcyAxLjkyIGlu
c3RlYWQgb2YNCjEuODIgYmVjYXVzZSB0aGF0IG9uZSB3YXMgZm9yIHVuaW9ucywgd2hpbGUgdGhp
cyBvbmUgaXMNCmh0dHBzOi8vYmxvZy5ydXN0LWxhbmcub3JnLzIwMjQvMTAvMTcvUnVzdC0xLjgy
LjAvI3NhZmVseS1hZGRyZXNzaW5nLXVuc2FmZS1zdGF0aWNzKS4NCg0KICAtIFJlZ2FyZGluZyB0
aGUgYGV4cGVjdCh1bnVzZWQpYCAtLSB1c2luZyBgY2ZnX2F0dHJgIGlzIGZpbmUgc2luY2UNCml0
IGlzIGEgc2ltcGxlIGNhc2UsIGJ1dCBpZiBpdCBiZWNvbWVzIGEgYmlnIGlzc3VlLCB0aGVuIG9m
IGNvdXJzZQ0KcGxlYXNlIGZlZWwgZnJlZSB0byB1c2UgYGFsbG93YCAoeW91IGFscmVhZHkga25v
dyB0aGlzLCBidXQgaW4gY2FzZSBpdA0KaGVscHMgb3RoZXJzOiBJIHdyb3RlIHNvbWUgY29uc2lk
ZXJhdGlvbnMgYWJvdXQgdGhpcyBhdA0KaHR0cHM6Ly9kb2NzLmtlcm5lbC5vcmcvcnVzdC9jb2Rp
bmctZ3VpZGVsaW5lcy5odG1sI2xpbnRzKS4NCg0KQ2hlZXJzLA0KTWlndWVsDQpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxp
bmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUg
c2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
