Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8FwXN2FhBGq6HgIAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2026 13:32:49 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C0C053256E
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2026 13:32:49 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7ABB0401F8
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2026 11:32:48 +0000 (UTC)
Received: from mail-yw1-f178.google.com (mail-yw1-f178.google.com [209.85.128.178])
	by lists.linaro.org (Postfix) with ESMTPS id 3C5F13F75E
	for <linaro-mm-sig@lists.linaro.org>; Wed, 13 May 2026 01:55:49 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=ZHpmQqy4;
	arc=pass ("google.com:s=arc-20240605:i=1");
	spf=pass (lists.linaro.org: domain of kartikey406@gmail.com designates 209.85.128.178 as permitted sender) smtp.mailfrom=kartikey406@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-yw1-f178.google.com with SMTP id 00721157ae682-7bd6f65c781so56785137b3.1
        for <linaro-mm-sig@lists.linaro.org>; Tue, 12 May 2026 18:55:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1778637349; cv=none;
        d=google.com; s=arc-20240605;
        b=Bw7UYrdPY2rhBazci7apR35Zna399xk5S+mCe8xdknWQpagJa5arGKaSrTrSzalDsD
         qDUP8jyDeHjwy+qNftlblJi3X5IkS/vp6W4IAHRn5+CnO1ivseWT3FffQX62YlRx29Tl
         eSbIAnJ7/R+Az09DLmPSa+RZRJbTa/FVpfhytL8mYxvWdbtwBgr+jO8glSooXlYSkT5a
         OLwxn3yms1FKnBUO3ndyBGYon4QiuPOrSBW7/C/eeIwE5lTZ/Qzcx5zkoodBjLN65ioc
         1r79ufaahhhMEKIG3BZ8TxV4+fhcaj6qrdeYeNGR1FuMCL4hrpnewqi5aFvo8crbrLKQ
         mByw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=5xRhLCcP3JBRN1MwY6Q9q9IhNYwNr7l9QAT6ZuSm7sQ=;
        fh=0/xWn8LsA6a5+llMBuw/FFhzvl0FjTc3eYfERJVSP3I=;
        b=cyAjOH8q/lsNpsFc8mYDNkV1I1LNh2ZqIXkaJjrbjUgVTZ6H1W+RelouohhOW0WZN6
         J+WxJaiR9HxjH6rPu8F69HkvXtSBnFIVaxTW/89L0jAvNR2WUnbrpdSyVjRyNcBMs2Bg
         etagmgU5FwfhrSyaq6OTomwOnX/4g5zicIRwaD0w4unHBJHw4y8BPSv6eL30+sIgywkl
         UZCwrdOGa20dojfSybV+4SrtV3x6g9+hvYA1t252+i/VIvhpnHzw0cgRJCclKIghTQPM
         1KmOdHNsSZCwhpdkxfaM3FBFkw/XmikwBnkk9YsmROmvC/rSUUlo1FXOUTjwss5EFA67
         B1jg==;
        darn=lists.linaro.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1778637349; x=1779242149; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5xRhLCcP3JBRN1MwY6Q9q9IhNYwNr7l9QAT6ZuSm7sQ=;
        b=ZHpmQqy4DFP0h2uwq2kFOEwdleYsLSwoQ08O54oETJ4eb2o+hIKMiU/g/LTtwE1oUs
         Cfvxt1LohU1XKl7jUxaL+4a+P0fMGUiDVdWXkoL0TgFTc3HTJq1sbGhkhKwxnWVlXq81
         F/yCPlQ9XpV3pAKWXZIiLXHX8DX7SOB2QulkoKyh/vepw67bNQHlDhjccUINEbok0YbB
         OgrgphblB1/xeq68+jqCtFPiP054Y/QBmSypnKZX+o4bR+alb6tmpqgzTYhY08+MOZ9m
         yqJulP72fw/6PZ81LQ2EVPSZssGHZlXo2xQ7GaoaZ58mhsStkSkvPQZ5s5zo4XlqV9dh
         AzBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778637349; x=1779242149;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=5xRhLCcP3JBRN1MwY6Q9q9IhNYwNr7l9QAT6ZuSm7sQ=;
        b=iOzwO2VwZGPR/g4msrkuCAeChMd39tx960/1osvO484j3o6fR//DyrCigiC5QHsALA
         PW4XXECu20fySySMdHaXc2wXh6BDqkXu/VCtGW7RUB91k/TEVdMEvPrDAmuQ+wGEMfvp
         pLAp8w+LA+c+OOqMPrxL9nlNl2YoR1i1CvzU8+VB2iI12mZmD0h7CkDkRUbNLp5BGN9h
         KuPqFYS/KRgEkGYIsalFRcr9+BKM7e/NenxsHXHr7uqMbx0np9xzcVURLhp9INGlyyXn
         dCD0wERrTqYiXYnkEvBoW5kFVSmjOHrt0MYWdJt4KKCDxna4AFNdy7ffRuWXEdhgl305
         l+bA==
X-Forwarded-Encrypted: i=1; AFNElJ+0zoU31u6kBefVT9pREmPvpIuY8uCUzsRLCVILnVRo2CNby5vLMmfVqSjDDhvG6tllEVlx7G+TqszeuxkR@lists.linaro.org
X-Gm-Message-State: AOJu0Yyd8X7BHnFObQoC8GeeRsqlWrUgXOIExLNQS49R+dGmtkXgm4QZ
	0W4O1MfhPDaxNMXNWBrwmwCu60b/AgI30LzY+WhNv0mUGhWEsF2sDWDwjzGfBHD8WFrocgVg6iJ
	SUr7mMk0C5FYuZUn8jQqzxw/667jL5aQ=
X-Gm-Gg: Acq92OH/1xhkl4SuH/f4KYcN0j1zl4KpLWQ0CPTsfeDdRRUndCkhBavI59zogZMYh+P
	087uodz92Txz//22mxhw+kgvp20Y2YdeRdJNfZn+8MTENyajclCDmD8IStVaUlwyKgkbB8WIP1Q
	jQHTGq8reG1h+iJhrFP+SMewWgS3sPrcnVmZyEvIL5/yJ6Gr2xLlMFFMklQeIKfwRlyGArC4R6Z
	w7vboxTrrC4q/5FXXK1NzHFt44rJqoR8q4R9U1AUgRsiEQJRAnkFVhhx8zmeiVlbiFstVKiiOgW
	ah4FK0aUrbigScch+GZPdx8IpFvDUZ0NfpP9r3kAjnhDxTMLKGme9C09SFVufZOKfMDKmh/G
X-Received: by 2002:a05:690c:e28d:20b0:7ba:ded4:df69 with SMTP id
 00721157ae682-7c6985e165dmr12151727b3.1.1778637348672; Tue, 12 May 2026
 18:55:48 -0700 (PDT)
MIME-Version: 1.0
References: <20260512020718.108044-1-kartikey406@gmail.com> <d1bc8d7d-3a4f-4ede-8266-81cc66bf11b5@collabora.com>
In-Reply-To: <d1bc8d7d-3a4f-4ede-8266-81cc66bf11b5@collabora.com>
From: Deepanshu Kartikey <kartikey406@gmail.com>
Date: Wed, 13 May 2026 07:25:36 +0530
X-Gm-Features: AVHnY4LCDlccPve3ZLzzDvN9woFw3uS561jxG504DrY4p0Whnei59B3Wu16XydA
Message-ID: <CADhLXY7N0eLpA30eV4Rb=F4vzCf9XYtDjMpxBSJtGeMWNi6Cwg@mail.gmail.com>
To: Dmitry Osipenko <dmitry.osipenko@collabora.com>
X-Spamd-Bar: ----
X-MailFrom: kartikey406@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: PQC5Y2QUQSRBSQ5BB3G46PZ26YXVXQGM
X-Message-ID-Hash: PQC5Y2QUQSRBSQ5BB3G46PZ26YXVXQGM
X-Mailman-Approved-At: Wed, 13 May 2026 11:25:12 +0000
CC: airlied@redhat.com, kraxel@redhat.com, gurchetansingh@chromium.org, olvaffe@gmail.com, maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de, simona@ffwll.ch, sumit.semwal@linaro.org, christian.koenig@amd.com, dri-devel@lists.freedesktop.org, virtualization@lists.linux.dev, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, syzbot+72bd3dd3a5d5f39a0271@syzkaller.appspotmail.com, stable@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2] drm/virtio: move cursor resv lock acquisition to prepare_fb
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/PQC5Y2QUQSRBSQ5BB3G46PZ26YXVXQGM/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Rspamd-Queue-Id: 7C0C053256E
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [3.19 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_REJECT(1.00)[gmail.com:s=20251104];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx:c];
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
	RCPT_COUNT_TWELVE(0.00)[18];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[redhat.com,chromium.org,gmail.com,linux.intel.com,kernel.org,suse.de,ffwll.ch,linaro.org,amd.com,lists.freedesktop.org,lists.linux.dev,vger.kernel.org,lists.linaro.org,syzkaller.appspotmail.com];
	DKIM_TRACE(0.00)[gmail.com:-];
	TAGGED_RCPT(0.00)[linaro-mm-sig,72bd3dd3a5d5f39a0271];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kartikey406@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	NEURAL_SPAM(0.00)[0.543];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,collabora.com:email,linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Action: no action

T24gVHVlLCBNYXkgMTIsIDIwMjYgYXQgMTI6MDTigK9QTSBEbWl0cnkgT3NpcGVua28NCjxkbWl0
cnkub3NpcGVua29AY29sbGFib3JhLmNvbT4gd3JvdGU6DQo+DQo+IEknbSBnZXR0aW5nIGxvY2t1
cCB3aXRoIHRoaXMgcGF0Y2ggYXBwbGllZCBhbmQgbm93IHNlZSB0aGF0DQo+IHZpcnRpb19ncHVf
cmVzb3VyY2VfZmx1c2goKSBhbHNvIGxvY2tzIEJPLg0KPg0KPiBFYXNpZXN0IG9wdGlvbiBtaWdo
dCBiZSB0byBhZGQgdW5pbnRlcnJ1cHRpYmxlIHZhcmlhbnQgb2YNCj4gdmlydGlvX2dwdV9hcnJh
eV9sb2NrX3Jlc3YoKS4gQ291bGQgeW91IHBsZWFzZSB0cnkgaXQgZm9yIHYzPw0KPg0KPiAtLQ0K
PiBCZXN0IHJlZ2FyZHMsDQo+IERtaXRyeQ0KDQpIaSBEbWl0cnksDQoNClRoYW5rcyBmb3IgdGVz
dGluZyBhbmQgY2F0Y2hpbmcgdGhlIGxvY2t1cC4gQmVmb3JlIEkgc2VuZCB2Mywgd2FudA0KdG8g
Y29uZmlybSB0aGUgYXBwcm9hY2g6DQoNCiAgMS4gUmV2ZXJ0IHYyJ3MgcHJlcGFyZV9mYiAvIGNs
ZWFudXBfZmIgLyBwbGFuZV9zdGF0ZSBjaGFuZ2VzOw0KICAgICBrZWVwIHRoZSBsb2NrIGFjcXVp
c2l0aW9uIGluc2lkZSBjdXJzb3JfcGxhbmVfdXBkYXRlIGxpa2UNCiAgICAgdGhlIG9yaWdpbmFs
IGNvZGUuDQoNCiAgMi4gQWRkIHZpcnRpb19ncHVfYXJyYXlfbG9ja19yZXN2X3VuaW50ZXJydXB0
aWJsZSgpIGluDQogICAgIHZpcnRncHVfZ2VtLmMsIG1pcnJvcmluZyB0aGUgZXhpc3RpbmcgaGVs
cGVyIGJ1dCB1c2luZw0KICAgICBkbWFfcmVzdl9sb2NrKCkgaW5zdGVhZCBvZiBkbWFfcmVzdl9s
b2NrX2ludGVycnVwdGlibGUoKSBvbg0KICAgICB0aGUgbmVudHM9PTEgcGF0aC4gRGVjbGFyZSBp
dCBpbiB2aXJ0Z3B1X2Rydi5oLg0KDQogIDMuIEluIGN1cnNvcl9wbGFuZV91cGRhdGUsIGNhbGwg
dGhlIG5ldyBoZWxwZXIgYW5kIGNoZWNrIGl0cw0KICAgICByZXR1cm4uIFRoZSBzaWduYWwgcGF0
aCBpcyBjbG9zZWQ7IC1FTk9NRU0gZnJvbQ0KICAgICBkbWFfcmVzdl9yZXNlcnZlX2ZlbmNlcygp
IHJlbWFpbnMgYW5kIGlzIGhhbmRsZWQgYnkgZnJlZWluZw0KICAgICBvYmpzIGFuZCBza2lwcGlu
ZyB0aGUgY3Vyc29yIHVwZGF0ZSBmb3IgdGhhdCBmcmFtZS4NCg0KQSBza2lwcGVkIGN1cnNvciBm
cmFtZSBvbiBFTk9NRU0gaXMgdGhlIHJlbWFpbmluZyBmYWlsdXJlIG1vZGUgaW4NCi5hdG9taWNf
dXBkYXRlOyB0aGlzIGF2b2lkcyB0aGUgbG9ja3VwIHdpdGggdmlydGlvX2dwdV9yZXNvdXJjZV9m
bHVzaCgpDQp0aGF0IHYyJ3MgYnJvYWRlciBsb2NrIHNjb3BlIGNhdXNlZC4NCg0KRG9lcyB0aGF0
IG1hdGNoIHdoYXQgeW91IGhhZCBpbiBtaW5kPw0KDQpUaGFua3MsDQpEZWVwYW5zaHUNCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcg
bWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNj
cmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9y
Zwo=
