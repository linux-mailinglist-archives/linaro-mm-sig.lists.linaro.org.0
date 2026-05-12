Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KHhlEyNhBGq6HgIAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2026 13:31:47 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id CBD66532514
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2026 13:31:46 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id CB973401C1
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2026 11:31:45 +0000 (UTC)
Received: from mail-yw1-f182.google.com (mail-yw1-f182.google.com [209.85.128.182])
	by lists.linaro.org (Postfix) with ESMTPS id 0371E3F75A
	for <linaro-mm-sig@lists.linaro.org>; Tue, 12 May 2026 02:08:11 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=r3t5ofm+;
	arc=pass ("google.com:s=arc-20240605:i=1");
	spf=pass (lists.linaro.org: domain of kartikey406@gmail.com designates 209.85.128.182 as permitted sender) smtp.mailfrom=kartikey406@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-yw1-f182.google.com with SMTP id 00721157ae682-7bde9d73678so53251977b3.0
        for <linaro-mm-sig@lists.linaro.org>; Mon, 11 May 2026 19:08:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1778551690; cv=none;
        d=google.com; s=arc-20240605;
        b=SkNq5qq6FP6D0JuFmCJbemsIUkBrPo/R31WZH4/KLoKZ8ACe3QvGPW9ntPQXKESP6O
         fTxZgL/DVkN/fh61M8y4k1flrZxm5Hx85yDO+vpTu2IZC1kJ/9nb0JG4f5dI529AHjUO
         dLmzSn7vpLigVoUNwD9iBrBfqwlHpPEdhuOWyc34UYUAf34CpRp+ewmMcszvlSzCaZiz
         9/UN9LxdTYzPX77iyOFUcyzHcGqthPEffyO54wftahVKYhhormG2XmXoZNaN2Q6C93Q7
         ufkezOFHVnNI1bEJj/TFlJV/glmGiW8NMI149kNhxh4EbhNyRWg2FJycUQq5S+Y5gijo
         fKkA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=77FISKu6p2sK0Ty+tC1DOLiHarz8B8kEbkXuaAXpQYA=;
        fh=fsJsnudHHtjG5n74B/lnLxcmO3qu+wO5OAVtE8oyOeM=;
        b=TBISU7WmtK3F2em1l1w0J9xkaaHzQRB+j1B5tQQzfpFCAwnywloA232iUwLZCMW6wM
         pxUSHqaz5rq6odRvIIAOxVW+pA953sHttJeQga0AsNxjIfraItUNuVCyca2u+DcTBAju
         onvl/T9Lpr+3H/BVXpy8f57rwBwz+eKsf0+uSqzyj+ZPM65T52Jxk3Qew+1QHpdHqVse
         E9nt9VhUmeu21bE4nD8j8v7+Fl2SZwoyk5kvCij/UqdhSAoQkGLhQxbzAQ+XG+/ksS6z
         51JcXCu4DnDL9MmB8sKyL8UBZz67VeVhyAJuOeYE8QW2gRRxKkGLumQMN+IW/C7AV5BR
         veaw==;
        darn=lists.linaro.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1778551690; x=1779156490; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=77FISKu6p2sK0Ty+tC1DOLiHarz8B8kEbkXuaAXpQYA=;
        b=r3t5ofm+H165nAnDinE9JUFCGDimJzMgTXa0NYiih5PhT7xXYvu47JhI8TvCdxvWj1
         VWOnxiK7+l/LUZjBWEJ8vDpI9z4S/msVBOsmTKOwHDT/SCGrKRfCiyZlob9C8aIyQZn7
         TFP9PIixSYQwG/6FeyAxXF2LUOOvx4yV3+PrYi680wPTCj8kHC5+WXr4qOFfyxo1ZgTV
         22JgmCfUCJR/Llkk2b4Ur8pTHMzoLixTajiOj2jB0K9ME7X57lyalZCMueFQQTi7DveT
         5LBA3UkMrHwPnsA/BzFlmSmuYJZqcapYyDj33xGLc2DtgZ7tWimqHq8zL+1IgT8vUlis
         Lc8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778551690; x=1779156490;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=77FISKu6p2sK0Ty+tC1DOLiHarz8B8kEbkXuaAXpQYA=;
        b=PNJwLqJUL1YwGsg4/6eEL8KtMShce0RrciG4FPFnruMftIsAW4ukJZX+ufYbFGchzq
         USW/wgoKwnYG12ebSRL2e5fz0kwrbL5Q6DSzuA8vYom93YV5sJYibLqrnDvm+hJ3QzU6
         VVFy5BZthOn1htMHat6/EKAuf1GYLvL5Lgvw8Vzlmo26EOXYFinw2t8JBXeq5N3AbICP
         m78W1ZLAGCvX0klBqk8zWpFUHkdm0fYFUOVX9ip5dFzhTkRkJh5MkzvHT07EnOFg5wnn
         sRZu1ZOH7BdAS75aa43HDKDSIjfytlqLALPCw5CEOJBoJOuMRyNcuf4g4SwbsJXstpUw
         Nyyw==
X-Forwarded-Encrypted: i=1; AFNElJ8miy6WWKZ6NhmhqJ9n09QpRJ5CzuHdK8CRyvzWMRg9N5xi4WBcpgU0WqRpwcfXxfhVWp5yoqvvnsLRj+Aa@lists.linaro.org
X-Gm-Message-State: AOJu0YzmGrNfTQc/k+HwYamBiHbi2Nd7XKTuGyTO5qI7soKYG9Rk+PKC
	Kr5Nx9HlC4vhMYbGBVsyrAlxz97yjN4umdDehRriiLgQ/lAIUPl8H3TimeuzNy5+CTHb+R1Jt6H
	+CGPDWJ2QRYlzUJhQA5Wenz2YdXvxGcE=
X-Gm-Gg: Acq92OFBN9z8c1TSUgoGkOhSG+i8qlJGkC0RSVOPLqgjMfJc9nsYoZbQLuVY/hzS9PG
	Op24+oKRdiYom5rS5tqWJPQgGjuNCHTAWBo/Wkz8lbA7UJC50BJse128NVipPQmDR0/yJ9z3yjx
	j6KigcWebCXxRI8xf7D6xmYTDWpncLdArXrE9vaAEUPE0gcU/2UM6lKxfR9XFVaq9aaY3Ihc8rJ
	oPi8v4dFtEJzyHEZra0vRe/CCT5vbbGzv2bxYxAowVx5VfGzanmPIHW2tNIofewCdSuwW7NYU19
	S9z/yQ1D9EiPMYklOSswWqAN/vsIW6/l6/Tt+53mt+/e7jEIRHUHtG65+Cn19/2Y3/cm0aFr
X-Received: by 2002:a05:690c:22c4:b0:7bd:92fc:bffc with SMTP id
 00721157ae682-7c510b7019dmr17683127b3.28.1778551690519; Mon, 11 May 2026
 19:08:10 -0700 (PDT)
MIME-Version: 1.0
References: <20260510053025.100224-1-kartikey406@gmail.com> <e1741cf2-3416-4464-bcae-741f0c87448b@collabora.com>
In-Reply-To: <e1741cf2-3416-4464-bcae-741f0c87448b@collabora.com>
From: Deepanshu Kartikey <kartikey406@gmail.com>
Date: Tue, 12 May 2026 07:37:59 +0530
X-Gm-Features: AVHnY4J2D1-C23A11f7UqzcVhKI94fEZIIYuSoxukd33EEp1xmrI8ysvEMqjWdI
Message-ID: <CADhLXY6wZfejdnGRKBy5raFE8U_VAivqx=oa+tmNAAOx-cSF9g@mail.gmail.com>
To: Dmitry Osipenko <dmitry.osipenko@collabora.com>
X-Spamd-Bar: ----
X-MailFrom: kartikey406@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: B2ZXMTRRICIP7ZC4NI2UFJX4MGEMCSGN
X-Message-ID-Hash: B2ZXMTRRICIP7ZC4NI2UFJX4MGEMCSGN
X-Mailman-Approved-At: Wed, 13 May 2026 11:25:10 +0000
CC: airlied@redhat.com, kraxel@redhat.com, gurchetansingh@chromium.org, olvaffe@gmail.com, maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de, simona@ffwll.ch, sumit.semwal@linaro.org, christian.koenig@amd.com, dri-devel@lists.freedesktop.org, virtualization@lists.linux.dev, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, syzbot+72bd3dd3a5d5f39a0271@syzkaller.appspotmail.com, stable@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] drm/virtio: check virtio_gpu_array_lock_resv() return in cursor update
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/B2ZXMTRRICIP7ZC4NI2UFJX4MGEMCSGN/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Rspamd-Queue-Id: CBD66532514
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [4.19 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_REJECT(1.00)[gmail.com:s=20251104];
	DATE_IN_PAST(1.00)[33];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed),none];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	GREYLIST(0.00)[pass,meta];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_THREE(0.00)[3];
	RCPT_COUNT_TWELVE(0.00)[18];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FREEMAIL_CC(0.00)[redhat.com,chromium.org,gmail.com,linux.intel.com,kernel.org,suse.de,ffwll.ch,linaro.org,amd.com,lists.freedesktop.org,lists.linux.dev,vger.kernel.org,lists.linaro.org,syzkaller.appspotmail.com];
	DKIM_TRACE(0.00)[gmail.com:-];
	TAGGED_RCPT(0.00)[linaro-mm-sig,72bd3dd3a5d5f39a0271];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kartikey406@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	NEURAL_SPAM(0.00)[0.478];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,collabora.com:email,mail.gmail.com:mid,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Action: no action

T24gTW9uLCBNYXkgMTEsIDIwMjYgYXQgMjo0MeKAr0FNIERtaXRyeSBPc2lwZW5rbw0KPGRtaXRy
eS5vc2lwZW5rb0Bjb2xsYWJvcmEuY29tPiB3cm90ZToNCj4gICAgICAgICAgICAgICAgICAgICAg
ICBwbGFuZS0+c3RhdGUtPmNydGNfdywNCj4NCj4gVGhhbmtzIGZvciB0aGUgcGF0Y2guIEF0b21p
YyB1cGRhdGUgc2hvdWxkbid0IGZhaWwgZHVlIHRvIG5vbi1jcml0aWNhbA0KPiBlcnJvcnMgbGlr
ZSBvbiBhIHNpZ25hbCBpbnRlcnJ1cHQuIENvdWxkIHlvdSBwbGVhc2UgbW92ZSB0aGlzIGNvZGUg
dGhhdA0KPiBtYXkgZmFpbCBpbiB1cGRhdGUoKSB0byAucHJlcGFyZS9jbGVhbnVwX2ZiKCkgY2Fs
bGJhY2tzPw0KPg0KPiAtLQ0KPiBCZXN0IHJlZ2FyZHMsDQo+IERtaXRyeQ0KDQpUaGFua3MgZm9y
IHRoZSBmZWVkYmFjayAuIEkgaGF2ZSBzZW50IHBhdGNoIHYyLg0KDQpUaGFua3MNCg0KRGVlcGFu
c2h1IGthcnRpa2V5DQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxp
bmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxl
YXZlQGxpc3RzLmxpbmFyby5vcmcK
