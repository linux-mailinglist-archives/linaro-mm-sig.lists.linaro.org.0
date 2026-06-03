Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id einMMfhIKWp6TgMAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 10 Jun 2026 13:22:32 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 46C63668B55
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 10 Jun 2026 13:22:32 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=none;
	arc=reject ("signature check failed: fail, {[1] = sig:google.com:reject}")
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 62B7A40A50
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 10 Jun 2026 11:22:31 +0000 (UTC)
Received: from mail-qk1-f178.google.com (mail-qk1-f178.google.com [209.85.222.178])
	by lists.linaro.org (Postfix) with ESMTPS id 62653409B0
	for <linaro-mm-sig@lists.linaro.org>; Wed,  3 Jun 2026 08:54:25 +0000 (UTC)
Received: by mail-qk1-f178.google.com with SMTP id af79cd13be357-91588056619so75742385a.2
        for <linaro-mm-sig@lists.linaro.org>; Wed, 03 Jun 2026 01:54:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1780476865; cv=none;
        d=google.com; s=arc-20240605;
        b=ifUuCp0f58rKh6p1QAGYKzNCipmesVdVFoHr0QViIOWK/NEKZBPkigDnRKKXA6FvAP
         vTPBRKWa8DzjaIXFiXUAfgWD+bnaLf/ExngvByqgKrjtgnoKJQTPX0Vv/+NBkIusbz8E
         sWilrabuRwfT5p12Tl9SuCLqTdQwFgVZJWXAZ8Kp3+TAJ1FcLR+WLucnfXJPiVF/58gj
         EH74Xp+kx6jjlIGSn+xjk2AdJP4mDXoHTXvDF+EVOFHZErRDF7+QNeaaN93knaS3780T
         HYdxAoBvyi2Zb1J/Wjzlcf4w/qeatVGJl8HoqEogWBgDwjeTRrgLJYuPPJeFg36Sgmty
         5qiQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=g7JX48xUqE191PjwdvrWj7w+4oUCIR2hhRFUmFcQpEw=;
        fh=ImuwiDaLAFFoBPiJRbA6gILArFQ/mZAhjoZqo/4CFi8=;
        b=VLN2q/o2uUWhu4RRSzecCSW580suCKiQqsH2JLEURucf3ofznVxZa7cr0PmWxaSrC0
         5iVbtoiwZseTb4VWnAKEQ1SGIQK+vGQqt+zAt0u+CIP3J1kx3UfhmvCU18uPuaNJxwwr
         rTD1Xdgy5STF4R2MMU8uBJtrtf87E0EvZ2c6/KKWmEDYE1zM5daK6bOgTQ+8jVnFUn07
         GaIbJ+mSRoeL8F4KNlUQbRnGCbvIaAYnPhp+HGmv8ulZ/Wlhgf45ZvvXOiX7EnAO3O5S
         1tr9+40qdkWXiBkiLZhvB1Jwkz4p+9F+Z+sRugat64cT8+zUGmJkPX+KeKfd4uRzB6L6
         rj5A==;
        darn=lists.linaro.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tomeuvizoso-net.20251104.gappssmtp.com; s=20251104; t=1780476865; x=1781081665; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=g7JX48xUqE191PjwdvrWj7w+4oUCIR2hhRFUmFcQpEw=;
        b=u+xQ2GohEVPc3mUKIMpEY8h/zRgNzA2lqZlQkK2ybzePo2YpKg1DouEUq6W78ap5OE
         +u0cRZxREdYRTPkAfm99ng4DBmf1Ed95efJOD1cxgwo+mnVgZwksesoXU99xGr0TIYuM
         abA2yRPfQ22P0LqJqW/bT0YITR88VJtn38rRHjKGpRWNT89dPbMKZcknWQGb35pN9AiV
         GZL8b1+Sms6rDRHO9n73h5+Dc1BObSnCSz+tGjeHf4sxI7JSN4TqVQGEPsEPuVzCxPGy
         SAaL2HeWlq/lN9lSR7GiOoUzZfOwXV1nfpfCTCtoqbKrKW6X9b/8sQHt3fYrL2VNiaud
         3Prg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780476865; x=1781081665;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=g7JX48xUqE191PjwdvrWj7w+4oUCIR2hhRFUmFcQpEw=;
        b=Uh4wxw/Y9/7Us/OyhH8KJKyi/HUpUqxhHQM0Cs1/hw+mBljR5nDi8XhYapRfrE/nIu
         GSY6f8F8PvPCS4tRbNpJdmzvND3gQOlLYV/N/oOrauTNzQkQLXF9EwR4KtKqNfqunErD
         TKErqcFqx/t+Co17URh40MMiRsNSAfR2VQNW0sNbTfn8qsZWQzJyaAjUjkkJZN2HPa6M
         TvUly/7FFqnd+XVf3rjAZWqRqW3gx45eVUCBg/ubeSJdzAn2JPQ3NhF97oBLZztG/wmL
         b0Q4NPE7RiFCx/bzWpox5StCfheGuIXa6lKTe9/+MoFsC7hhVXIeb8aVm1U+3/bccuO9
         ce3w==
X-Forwarded-Encrypted: i=1; AFNElJ+7mBfckcbXCnJp+/q9Q7FLwb7urmw2VJ2V6lV61dsyhhPWdiT3CPSi75uLS91jW1LnDrA4Y6jhbeD9vzq5@lists.linaro.org
X-Gm-Message-State: AOJu0YzgC09Js9gTRlHVX905yQJawrdq2GgkvxT152P/qBIfL+bD1q/K
	shUGQUSx4EBKdSNreduVFDdmdOhUcMLNPVeXwWEwgr7QtTPOjDCJ1c5yq//9lGGwtJ0AY7MZPbk
	P3WlOmuhbZL1XwC2bs5M9CkO8A+5ShigTQXPTk/9RWw==
X-Gm-Gg: Acq92OHxb5cH+MxyEeheST2ZAxPL6+M1Eu6W6klYhkcBbP2Da1RGnJphIBpM5u1iJNx
	F9gqZg5JSsMVuGX3ixr4bQ2PZj1PyXpv/zxbUsWXGXQ+GvhuDJJJ5AjHLxnn0GbGP0BlE69J+UM
	tn68s88TOeMB1qgQRRQDnjqxAYD0v4TvPk5PAfujgfopjxWDystkncBpwPWC6zAiVCVqRPrrh/U
	aIbLngoeN/JKAeFXTgjoMJzJyIs9srDiKSg/Nq6UmUMEBZHXUqLEvCEBoiPdoRAGFPTbwRCYdbR
	6dbdArR0G9ojc79h
X-Received: by 2002:a05:620a:470d:b0:914:e3dd:17fd with SMTP id
 af79cd13be357-9158a6cce06mr407596485a.6.1780476864872; Wed, 03 Jun 2026
 01:54:24 -0700 (PDT)
MIME-Version: 1.0
References: <20260519-qda-series-v1-0-b2d984c297f8@oss.qualcomm.com>
 <20260519-qda-series-v1-2-b2d984c297f8@oss.qualcomm.com> <paiohsil5pmvm7cf6jxrhaj2225bgvlt3scrag4x6gbkyosow5@l4tbakbnxcvo>
 <CAPsqS2Tt0JbHhJLHBsbJ2YfZW913WNfoSXpSa+8TD1T9CV8V3g@mail.gmail.com> <9879f670-8a23-407b-ab45-673904ad4a86@oss.qualcomm.com>
In-Reply-To: <9879f670-8a23-407b-ab45-673904ad4a86@oss.qualcomm.com>
From: Tomeu Vizoso <tomeu@tomeuvizoso.net>
Date: Wed, 3 Jun 2026 10:54:13 +0200
X-Gm-Features: AVHnY4JxR71JOH6mKjWdwqMelPGIBYkdeP3ekd-6Gg14JWpiLQqO3KnjrrlcThc
Message-ID: <CAPsqS2R5kr1-UqhijjgAfU9D1VnyEd3pCxOagHyesHSHpN4_8g@mail.gmail.com>
To: Ekansh Gupta <ekansh.gupta@oss.qualcomm.com>
X-Spamd-Bar: ----
X-MailFrom: tomeu@tomeuvizoso.net
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 7YIM2QC7RJJBRE52Y3LSTITL6C7D42C6
X-Message-ID-Hash: 7YIM2QC7RJJBRE52Y3LSTITL6C7D42C6
X-Mailman-Approved-At: Wed, 10 Jun 2026 11:20:23 +0000
CC: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, Oded Gabbay <ogabbay@kernel.org>, Jonathan Corbet <corbet@lwn.net>, Shuah Khan <skhan@linuxfoundation.org>, Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Bharath Kumar <quic_bkumar@quicinc.com>, Chenna Kesava Raju <quic_chennak@quicinc.com>, srini@kernel.org, andersson@kernel.org, konradybcio@kernel.org, robin.clark@oss.qualcomm.com, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org, linux-arm-msm@vger.kernel.org, iommu@lists.linux.dev, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 02/15] accel/qda: Add QDA driver documentation
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/7YIM2QC7RJJBRE52Y3LSTITL6C7D42C6/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.59 / 15.00];
	DATE_IN_PAST(1.00)[170];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	DMARC_NA(0.00)[tomeuvizoso.net];
	FORGED_RECIPIENTS(0.00)[m:ekansh.gupta@oss.qualcomm.com,m:dmitry.baryshkov@oss.qualcomm.com,m:ogabbay@kernel.org,m:corbet@lwn.net,m:skhan@linuxfoundation.org,m:joro@8bytes.org,m:will@kernel.org,m:robin.murphy@arm.com,m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:airlied@gmail.com,m:simona@ffwll.ch,m:sumit.semwal@linaro.org,m:christian.koenig@amd.com,m:quic_bkumar@quicinc.com,m:quic_chennak@quicinc.com,m:srini@kernel.org,m:andersson@kernel.org,m:konradybcio@kernel.org,m:robin.clark@oss.qualcomm.com,m:linux-kernel@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:linux-doc@vger.kernel.org,m:linux-arm-msm@vger.kernel.org,m:iommu@lists.linux.dev,m:linux-media@vger.kernel.org,m:linaro-mm-sig@lists.linaro.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[tomeu@tomeuvizoso.net,linaro-mm-sig-bounces@lists.linaro.org];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[28];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[oss.qualcomm.com,kernel.org,lwn.net,linuxfoundation.org,8bytes.org,arm.com,linux.intel.com,suse.de,gmail.com,ffwll.ch,linaro.org,amd.com,quicinc.com,vger.kernel.org,lists.freedesktop.org,lists.linux.dev,lists.linaro.org];
	TO_DN_SOME(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[tomeu@tomeuvizoso.net,linaro-mm-sig-bounces@lists.linaro.org];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,qualcomm.com:email,mail.gmail.com:mid,foo:url,lists.linaro.org:helo,lists.linaro.org:rdns,lists.linaro.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 46C63668B55

T24gV2VkLCBKdW4gMywgMjAyNiBhdCA3OjIy4oCvQU0gRWthbnNoIEd1cHRhDQo8ZWthbnNoLmd1
cHRhQG9zcy5xdWFsY29tbS5jb20+IHdyb3RlOg0KPg0KPiBPbiAyMC0wNS0yMDI2IDIxOjE3LCBU
b21ldSBWaXpvc28gd3JvdGU6DQo+ID4gT24gV2VkLCBNYXkgMjAsIDIwMjYgYXQgNDoxMuKAr1BN
IERtaXRyeSBCYXJ5c2hrb3YNCj4gPiA8ZG1pdHJ5LmJhcnlzaGtvdkBvc3MucXVhbGNvbW0uY29t
PiB3cm90ZToNCj4gPj4NCj4gPj4gT24gVHVlLCBNYXkgMTksIDIwMjYgYXQgMTE6NDU6NTJBTSAr
MDUzMCwgRWthbnNoIEd1cHRhIHZpYSBCNCBSZWxheSB3cm90ZToNCj4gPj4+IEZyb206IEVrYW5z
aCBHdXB0YSA8ZWthbnNoLmd1cHRhQG9zcy5xdWFsY29tbS5jb20+DQo+ID4+Pg0KPiA+Pj4gQWRk
IGRvY3VtZW50YXRpb24gZm9yIHRoZSBRdWFsY29tbSBEU1AgQWNjZWxlcmF0b3IgKFFEQSkgZHJp
dmVyIHVuZGVyDQo+ID4+PiBEb2N1bWVudGF0aW9uL2FjY2VsL3FkYS8uIFRoZSBkb2N1bWVudGF0
aW9uIGNvdmVycyB0aGUgZHJpdmVyDQo+ID4+PiBhcmNoaXRlY3R1cmUsIEdFTS1iYXNlZCBidWZm
ZXIgbWFuYWdlbWVudCwgSU9NTVUgY29udGV4dCBiYW5rDQo+ID4+PiBpc29sYXRpb24sIGFuZCB0
aGUgUlBNc2cgdHJhbnNwb3J0IGxheWVyLg0KPiA+Pj4NCj4gPj4+IFRoZSB1c2VyLXNwYWNlIEFQ
SSBzZWN0aW9uIGRlc2NyaWJlcyB0aGUgRFJNIElPQ1RMcyBmb3Igc2Vzc2lvbg0KPiA+Pj4gbWFu
YWdlbWVudCwgR0VNIGJ1ZmZlciBhbGxvY2F0aW9uLCBhbmQgcmVtb3RlIHByb2NlZHVyZSBpbnZv
Y2F0aW9uIHZpYQ0KPiA+Pj4gdGhlIEZhc3RSUEMgcHJvdG9jb2wsIGFsb25nIHdpdGggYSB0eXBp
Y2FsIGFwcGxpY2F0aW9uIGxpZmVjeWNsZQ0KPiA+Pj4gZXhhbXBsZS4gU2VjdGlvbnMgZm9yIGR5
bmFtaWMgZGVidWcgYW5kIGJhc2ljIHRlc3RpbmcgYXJlIGFsc28NCj4gPj4+IGluY2x1ZGVkLg0K
PiA+Pj4NCj4gPj4+IFdpcmUgdGhlIG5ldyBkb2N1bWVudGF0aW9uIGludG8gdGhlIENvbXB1dGUg
QWNjZWxlcmF0b3JzIGluZGV4IGF0DQo+ID4+PiBEb2N1bWVudGF0aW9uL2FjY2VsL2luZGV4LnJz
dC4NCj4gPj4+DQo+ID4+PiBBc3Npc3RlZC1ieTogQ2xhdWRlOmNsYXVkZS00LTYtc29ubmV0DQo+
ID4+PiBTaWduZWQtb2ZmLWJ5OiBFa2Fuc2ggR3VwdGEgPGVrYW5zaC5ndXB0YUBvc3MucXVhbGNv
bW0uY29tPg0KPiA+Pj4gLS0tDQo+ID4+PiAgRG9jdW1lbnRhdGlvbi9hY2NlbC9pbmRleC5yc3Qg
ICAgIHwgICAxICsNCj4gPj4+ICBEb2N1bWVudGF0aW9uL2FjY2VsL3FkYS9pbmRleC5yc3QgfCAg
MTMgKysrKw0KPiA+Pj4gIERvY3VtZW50YXRpb24vYWNjZWwvcWRhL3FkYS5yc3QgICB8IDE0NiAr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKw0KPiA+Pj4gIDMgZmlsZXMgY2hh
bmdlZCwgMTYwIGluc2VydGlvbnMoKykNCg0KPHNuaXA+DQoNCj4gPj4+ICtVc2FnZSBFeGFtcGxl
DQo+ID4+PiArPT09PT09PT09PT09PQ0KPiA+Pj4gKw0KPiA+Pj4gK0EgdHlwaWNhbCBsaWZlY3lj
bGUgZm9yIGEgdXNlci1zcGFjZSBhcHBsaWNhdGlvbjoNCj4gPj4+ICsNCj4gPj4+ICsxLiAgKipE
aXNjb3ZlcnkqKjogT3BlbiBgYC9kZXYvYWNjZWwvYWNjZWwqYGAgYW5kIHVzZQ0KPiA+Pj4gKyAg
ICBgYERSTV9JT0NUTF9RREFfUVVFUllgYCB0byBpZGVudGlmeSB0aGUgRFNQIGRvbWFpbiBzZXJ2
ZWQgYnkgdGhhdA0KPiA+Pj4gKyAgICBkZXZpY2Ugbm9kZS4NCj4gPj4+ICsyLiAgKipJbml0aWFs
aXphdGlvbioqOiBDYWxsIGBgRFJNX0lPQ1RMX1FEQV9SRU1PVEVfU0VTU0lPTl9DUkVBVEVgYCB0
bw0KPiA+Pj4gKyAgICBlc3RhYmxpc2ggYSBzZXNzaW9uIGFuZCBjcmVhdGUgYSBwcm9jZXNzIGNv
bnRleHQgb24gdGhlIERTUC4NCj4gPj4+ICszLiAgKipNZW1vcnkqKjogQWxsb2NhdGUgYnVmZmVy
cyB2aWEgYGBEUk1fSU9DVExfUURBX0dFTV9DUkVBVEVgYCBvciBpbXBvcnQNCj4gPj4+ICsgICAg
RE1BLUJVRnMgKFBSSU1FIGZkKSBmcm9tIG90aGVyIGRyaXZlcnMgdXNpbmcgYGBEUk1fSU9DVExf
UFJJTUVfRkRfVE9fSEFORExFYGAuDQo+ID4+PiArNC4gICoqRXhlY3V0aW9uKio6IFVzZSBgYERS
TV9JT0NUTF9RREFfUkVNT1RFX0lOVk9LRWBgIHRvIHBhc3MgYXJndW1lbnRzIGFuZA0KPiA+Pj4g
KyAgICBleGVjdXRlIGZ1bmN0aW9ucyBvbiB0aGUgRFNQLg0KPiA+Pj4gKzUuICAqKkNsZWFudXAq
KjogQ2xvc2UgZmlsZSBkZXNjcmlwdG9ycyB0byBhdXRvbWF0aWNhbGx5IHJlbGVhc2UgcmVzb3Vy
Y2VzIGFuZA0KPiA+Pj4gKyAgICBkZXRhY2ggdGhlIHNlc3Npb24uDQo+ID4+DQo+ID4+IEknZCBo
YXZlIGV4cGVjdGVkIHRoZSBkZXNjcmlwdGlvbiBvZiB0aGUgYWN0dWFsIGV4YW1wbGUuIEkuZS4g
Y2xvbmUgdGhlDQo+ID4+IGFwcCBmcm9tIGh0dHBzOi8vdGhlLmFkZHIsIHByZXBhcmUgY2xhbmcg
Pj0gTk4uTU0sIFFBSUMgKGh0dHBzOi8vZm9vKSwNCj4gPj4gcnVuIG1ha2UsIHJ1biB0aGUgYXBw
LCBjaGVjayB0aGUgcmVzdWx0cy4gSSdkIHJlbWluZCB0aGF0IERSTSBBY2NlbCBoYXMNCj4gPj4g
YSB2ZXJ5IHNwZWNpZmljIHJlcXVpcmVtZW50IG9mIGhhdmluZyB0aGUgd29ya2luZyB0b29saGFp
biBpbiB0aGUNCj4gPj4gb3Blbi1zb3VyY2UuDQo+ID4NCj4gPiBXZSBoYXZlIGJlZW4gZ2V0dGlu
ZyBzdWJtaXNzaW9ucyBsYXRlbHkgdGhhdCBkb24ndCBmdWxmaWxsIHRoYXQNCj4gPiByZXF1aXJl
bWVudCBzbyBJIHdpbGwgcG9pbnQgdG8gdGhlIHByZWNpc2UgcGFydCBvZiB0aGUgZG9jdW1lbnRh
dGlvbg0KPiA+IHRoYXQgZXhwbGFpbnMgaXQ6DQo+ID4NCj4gPiBodHRwczovL3d3dy5rZXJuZWwu
b3JnL2RvYy9odG1sL2xhdGVzdC9ncHUvZHJtLXVhcGkuaHRtbCNvcGVuLXNvdXJjZS11c2Vyc3Bh
Y2UtcmVxdWlyZW1lbnRzDQo+ID4NCj4gPiBGb3IgYW4gZXhhbXBsZSBvZiBhIHN1Ym1pc3Npb25z
IHRoYXQgY29tcGxpZXMsIHNlZToNCj4gPg0KPiA+IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2Ry
aS1kZXZlbC8yMDI2MDExNC10aGFtZXMtdjItMC1lOTRhNjYzNmUwNTBAdG9tZXV2aXpvc28ubmV0
Lw0KPiA+DQo+ID4gTW9zdCBpbXBvcnRhbnRseSwgbm90aWNlIGhvdyB0aGUgcHJvcG9zZWQgVGhh
bWVzIE1lc2EgZHJpdmVyIGdlbmVyYXRlcw0KPiA+IG1hY2hpbmUgY29kZSBmb3IgYWxsIHRoZSBo
YXJkd2FyZSB1bml0cywgYW5kIGRvZXNuJ3QgdXNlIGFueSBibG9iIGZvcg0KPiA+IHRoYXQuDQo+
ID4NCj4gSSBiZWxpZXZlIFFEQSBjaGVja3MgYWxsIGJveGVzIGZvciBhY2NlbCwgYXMgdGhlcmUg
aXMgYXZhaWxhYmxlDQo+IG9wZW5zb3VyY2UgdXNlcnNwYWNlLCBvcGVuc291cmNlIFFBSUMgY29t
cGlsZXIgZm9yIElETCBjb21waWxhdGlvbiBhbmQNCj4gTExWTSBzdXBwb3J0cyBoZXhhZ29uIGFy
Y2guDQoNCkkgbXVzdCBzYXkgdGhhdCBJJ20gYXQgYSB0b3RhbCBsb3NzIHJlZ2FyZGluZyB0aGUg
dXNlcnNwYWNlIHBvcnRpb24gb2YNCnRoaXMgZHJpdmVyLCBkZXNwaXRlIHNwZW5kaW5nIGhhbGYg
YW4gaG91ciBsb29raW5nIGluc2lkZSB0aGUgRmFzdFJQQw0KYnJhbmNoIHRoYXQgeW91IGxpbmsg
ZnJvbSB0aGUgY292ZXIgbGV0dGVyLg0KDQpDYW4geW91IHBsZWFzZSBleHBsYWluIHdoYXQgZG8g
cGVvcGxlIG5lZWQgdG8gZG8gdG86DQoNCi0gcnVuIGFuIGFsZ29yaXRobSBvZiB0aGVpciBjaG9p
Y2Ugb24gdGhlIERTUCwNCi0gZXhlY3V0ZSBpbmZlcmVuY2Ugd2l0aCBhIGNvbW1vbiBNTCBmcmFt
ZXdvcmsgc3VjaCBhcyBUZW5zb3JGbG93IExpdGUNCm9yIFB5VG9yY2guDQoNClRoZSBkb2N1bWVu
dGF0aW9uIEkgcG9pbnRlZCB0byBlYXJsaWVyIGV4cGxhaW5zIGluIGxlbmd0aCB3aGF0IGlzDQpl
eHBlY3RlZCBmcm9tIHRoZSB1c2Vyc3BhY2UgcG9ydGlvbiBvZiB0aGUgZHJpdmVyLCB3aGljaCBp
cyBtb3JlIHRoYW4NCmp1c3QgYmVpbmcgb3BlbiBzb3VyY2UuDQoNClRoYW5rcywNCg0KVG9tZXUN
Cg0KPiBJJ2xsIHRyeSBhZGRpbmcgdGhlc2UgZGV0YWlscyBhcyB3ZWxsLg0KPg0KPiBUaGFua3Mh
PiBSZWdhcmRzLA0KPiA+DQo+ID4gVG9tZXUNCj4gPg0KPiA+Pj4gKw0KPiA+Pj4gK0ludGVybmFs
IEltcGxlbWVudGF0aW9uDQo+ID4+PiArPT09PT09PT09PT09PT09PT09PT09PT0NCj4gPj4+ICsN
Cj4gPj4+ICtNZW1vcnkgTWFuYWdlbWVudA0KPiA+Pj4gKy0tLS0tLS0tLS0tLS0tLS0tDQo+ID4+
PiArVGhlIGRyaXZlcidzIG1lbW9yeSBtYW5hZ2VyIGNyZWF0ZXMgdmlydHVhbCAiSU9NTVUgZGV2
aWNlcyIgdGhhdCBtYXAgdG8NCj4gPj4+ICtoYXJkd2FyZSBjb250ZXh0IGJhbmtzLiBUaGlzIGFs
bG93cyB0aGUgZHJpdmVyIHRvIG1hbmFnZSBtdWx0aXBsZSBpc29sYXRlZA0KPiA+Pj4gK2FkZHJl
c3Mgc3BhY2VzLiBUaGUgaW1wbGVtZW50YXRpb24gdXNlcyBhIERNQS1jb2hlcmVudCBiYWNrZW5k
IHRvIGVuc3VyZSBkYXRhIGNvbnNpc3RlbmN5DQo+ID4+PiArYmV0d2VlbiB0aGUgQ1BVIGFuZCBE
U1Agd2l0aG91dCBtYW51YWwgY2FjaGUgbWFpbnRlbmFuY2UgaW4gbW9zdCBjYXNlcy4NCj4gPj4N
Cj4gPj4gR0VNIHVzYWdlPw0KPiA+Pg0KPiA+Pj4gKw0KPiA+Pj4gK0RlYnVnZ2luZw0KPiA+Pj4g
Kz09PT09PT09PQ0KPiA+Pj4gK1RoZSBkcml2ZXIgaW5jbHVkZXMgZXh0ZW5zaXZlIGR5bmFtaWMg
ZGVidWcgc3VwcG9ydC4gRW5hYmxlIGl0IHZpYSB0aGUNCj4gPj4+ICtrZXJuZWwncyBkeW5hbWlj
IGRlYnVnIGNvbnRyb2w6DQo+ID4+PiArDQo+ID4+PiArLi4gY29kZS1ibG9jazo6IGJhc2gNCj4g
Pj4+ICsNCj4gPj4+ICsgICAgZWNobyAiZmlsZSBkcml2ZXJzL2FjY2VsL3FkYS8qICtwIiA+IC9z
eXMva2VybmVsL2RlYnVnL2R5bmFtaWNfZGVidWcvY29udHJvbA0KPiA+Pj4gKw0KPiA+Pj4gK1Rl
c3RpbmcNCj4gPj4+ICs9PT09PT09DQo+ID4+PiArVGhlIFFEQSBkcml2ZXIgY2FuIGJlIGV4ZXJj
aXNlZCB1c2luZyB0aGUgYGBmYXN0cnBjX3Rlc3RgYCB1dGlsaXR5IGZyb20gdGhlDQo+ID4+PiAr
RmFzdFJQQyB1c2Vyc3BhY2UgbGlicmFyeS4gUnVuIHRoZSB0ZXN0IGFwcGxpY2F0aW9uOg0KPiA+
Pg0KPiA+PiBwb2ludGVyDQo+ID4+DQo+ID4+PiArDQo+ID4+PiArLi4gY29kZS1ibG9jazo6IGJh
c2gNCj4gPj4+ICsNCj4gPj4+ICsgICAgZmFzdHJwY190ZXN0IC1kIDMgLVUgMSAtdCBsaW51eCAt
YSB2NjgNCj4gPj4+ICsNCj4gPj4+ICsqKk9wdGlvbnMqKg0KPiA+Pj4gKw0KPiA+Pj4gK2BgLWQg
ZG9tYWluYGANCj4gPj4+ICsgICAgU2VsZWN0IHRoZSBEU1AgZG9tYWluIHRvIHJ1biBvbjoNCj4g
Pj4+ICsNCj4gPj4+ICsgICAgKiBgYDBgYCDigJQgQURTUA0KPiA+Pj4gKyAgICAqIGBgMWBgIOKA
lCBNRFNQDQo+ID4+PiArICAgICogYGAyYGAg4oCUIFNEU1ANCj4gPj4+ICsgICAgKiBgYDNgYCDi
gJQgQ0RTUCAqKGRlZmF1bHQgb24gdGFyZ2V0cyB3aXRoIENEU1ApKg0KPiA+Pj4gKw0KPiA+Pj4g
K2BgLVUgdW5zaWduZWRfUERgYA0KPiA+Pj4gKyAgICBTZWxlY3Qgc2lnbmVkIG9yIHVuc2lnbmVk
IHByb3RlY3Rpb24gZG9tYWluOg0KPiA+Pj4gKw0KPiA+Pj4gKyAgICAqIGBgMGBgIOKAlCBzaWdu
ZWQgUEQNCj4gPj4+ICsgICAgKiBgYDFgYCDigJQgdW5zaWduZWQgUEQgKihkZWZhdWx0KSoNCj4g
Pj4+ICsNCj4gPj4+ICtgYC10IHRhcmdldGBgDQo+ID4+PiArICAgIFRhcmdldCBwbGF0Zm9ybTog
YGBhbmRyb2lkYGAgb3IgYGBsaW51eGBgICooZGVmYXVsdDogbGludXgpKg0KPiA+Pj4gKw0KPiA+
Pj4gK2BgLWEgYXJjaF92ZXJzaW9uYGANCj4gPj4+ICsgICAgRFNQIGFyY2hpdGVjdHVyZSB2ZXJz
aW9uLCBlLmcuIGBgdjY4YGAsIGBgdjc1YGAgKihkZWZhdWx0OiB2NjgpKg0KPiA+Pj4NCj4gPj4+
IC0tDQo+ID4+PiAyLjM0LjENCj4gPj4+DQo+ID4+Pg0KPiA+Pg0KPiA+PiAtLQ0KPiA+PiBXaXRo
IGJlc3Qgd2lzaGVzDQo+ID4+IERtaXRyeQ0KPg0KX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJv
LW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8g
bGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
