Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CCD838C7CD
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 21 May 2021 15:24:02 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3381C614C1
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 21 May 2021 13:24:00 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 24E086157A; Fri, 21 May 2021 13:23:58 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C114161179;
	Fri, 21 May 2021 13:23:55 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id EE66361175
 for <linaro-mm-sig@lists.linaro.org>; Fri, 21 May 2021 13:23:52 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id E41B661179; Fri, 21 May 2021 13:23:52 +0000 (UTC)
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com
 [209.85.221.46])
 by lists.linaro.org (Postfix) with ESMTPS id D984061175
 for <linaro-mm-sig@lists.linaro.org>; Fri, 21 May 2021 13:23:50 +0000 (UTC)
Received: by mail-wr1-f46.google.com with SMTP id q5so21065353wrs.4
 for <linaro-mm-sig@lists.linaro.org>; Fri, 21 May 2021 06:23:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fooishbar-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=zBr2qa8weJ1fN+pyrA9yHt47NZiiPugqQIjjkfzP+jw=;
 b=Vo39h2GhwMLbJLo+/rJ8jKdDxxx7yt/+DuSYtdRMJYd/ewYSQQsrwCnOCge0+aOIM2
 9/KcfjejnPY8GM8mZ7TLh9EDtHEL/1jvG9ThrG9zg8eAz/GKa3MaVPVSMLnA4tV2yryY
 wubn8HMprLTyeofXBSRountcrg6j1SBLsPKvAsbxcvpmEVW7xAfjiqMlhxwraaQJlRHQ
 RBb6DN/tULEGgiS/IonVr9QgSxe37CitIuX4+gnFggRx+HHuCHA5loPr60vmuDY9nqZD
 rfQA3gO4qDA/z8bt5atk4ADkTZhfdIHY0OqxfaTHUZQut/UlgKWx4Let826C6h8Ly2d/
 GudQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=zBr2qa8weJ1fN+pyrA9yHt47NZiiPugqQIjjkfzP+jw=;
 b=b0JCe2MGT3HKXqN9QLFlVAUPsu0Hr+mUaGkUzJb4vNESEQriIGdVOijKvrfWzMIdq6
 3DXHvUcghAbrtMayVbe3QRC51CfnNwg8NLBqqHGiDHNV7NnOy2ru1KDC5zYEalQG46GJ
 BJStOHMH9JrnWpujn6OWgqoNOvxuX6lV0O+j8qgJ2/U+aJEg/6sBY9d7zR4sqrFkcUD+
 pTBdxF9FpHLIjYUuaapP10LyuXl0Si96Ne/dFOdJsanzzTITuDs+BfisSal0/0HGUHst
 7o3pQBJIPezYSSknLqEjXsMMtH8VMgPSm2jkzdBsm/fRJK393EBOC9D/GnZiVDr/6OUJ
 aziA==
X-Gm-Message-State: AOAM532LpkYssTnVDB/LwAZPZuQfLuEJMg4/18zHMm0VRsKfXT6arTh8
 q6lEmhSmAzr/lmoQC19+qgb49R/e6JZbkayZDXlX9Q==
X-Google-Smtp-Source: ABdhPJyU8TEmXK/S6OXq7q8k124HIgHp5J7hILQzz4PXVCcZY3JiYAj8Ouwu177Y0/InrwMU7WBJIc4BjzJuyR8pTms=
X-Received: by 2002:a5d:6e04:: with SMTP id h4mr9422676wrz.256.1621603429939; 
 Fri, 21 May 2021 06:23:49 -0700 (PDT)
MIME-Version: 1.0
References: <20210521090959.1663703-1-daniel.vetter@ffwll.ch>
 <20210521090959.1663703-4-daniel.vetter@ffwll.ch>
 <CAPj87rMBVRamT+VAVUaUnq3C1KFVqzABi99RKs=1_vyb4YWDnQ@mail.gmail.com>
 <d1ef10e8-b774-06e5-92ab-047c58e1ea41@amd.com>
 <CAPj87rOzV1mC=Nv2zfsYXrD4ARV7cmmJmkUCSwRSw1Ksy0k-aA@mail.gmail.com>
 <39aa30e4-2726-a0ba-3537-3be609dbc0b5@amd.com>
In-Reply-To: <39aa30e4-2726-a0ba-3537-3be609dbc0b5@amd.com>
From: Daniel Stone <daniel@fooishbar.org>
Date: Fri, 21 May 2021 14:23:38 +0100
Message-ID: <CAPj87rOhByk-azt2jm=YV8WYSQH3g2+aJ83nG+5SywksXH3OYg@mail.gmail.com>
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH 04/11] drm/panfrost: Fix implicit sync
X-BeenThere: linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: "Unified memory management interest group."
 <linaro-mm-sig.lists.linaro.org>
List-Unsubscribe: <https://lists.linaro.org/mailman/options/linaro-mm-sig>,
 <mailto:linaro-mm-sig-request@lists.linaro.org?subject=unsubscribe>
List-Archive: <http://lists.linaro.org/pipermail/linaro-mm-sig/>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Subscribe: <https://lists.linaro.org/mailman/listinfo/linaro-mm-sig>,
 <mailto:linaro-mm-sig-request@lists.linaro.org?subject=subscribe>
Cc: Tomeu Vizoso <tomeu.vizoso@collabora.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Steven Price <steven.price@arm.com>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Alyssa Rosenzweig <alyssa.rosenzweig@collabora.com>,
 Daniel Vetter <daniel.vetter@intel.com>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

T24gRnJpLCAyMSBNYXkgMjAyMSBhdCAxNDowOSwgQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFu
LmtvZW5pZ0BhbWQuY29tPiB3cm90ZToKPiBBbSAyMS4wNS4yMSB1bSAxNDo1NCBzY2hyaWViIERh
bmllbCBTdG9uZToKPiA+IElmIHlvdSdyZSBjdXJpb3VzLCB0aGUgaW50ZXJmYWNlIGRlZmluaXRp
b25zIGFyZSBpbiB0aGUgY3NmLyBkaXJlY3RvcnkKPiA+IGluIHRoZSAnQmlmcm9zdCBrZXJuZWwg
ZHJpdmVyJyByMzBwMCBkb3dubG9hZCB5b3UgY2FuIGdldCBmcm9tIHRoZSBBcm0KPiA+IGRldmVs
b3BlciBzaXRlLiBVbmZvcnR1bmF0ZWx5IHRoZSBleGFjdCBzZW1hbnRpY3MgYXJlbid0IGNvbXBs
ZXRlbHkKPiA+IGNsZWFyLgo+Cj4gV2VsbCBpdCBpcyBhY3R1YWxseSByZWxhdGl2ZWx5IHNpbXBs
ZS4gVGFrZSBhIGxvb2sgYXQgdGhlIHRpbWVsaW5lCj4gc2VtYXBob3JlcyBmcm9tIFZ1bGthbiwg
ZXZlcnlib2R5IGlzIGJhc2ljYWxseSBpbXBsZW1lbnRpbmcgdGhlIHNhbWUKPiBzZW1hbnRpY3Mg
bm93Lgo+Cj4gV2hlbiB5b3UgcXVldWVkIHVwIGEgYnVuY2ggb2YgY29tbWFuZHMgb24geW91ciBo
YXJkd2FyZSwgdGhlIGZpcnN0IG9uZQo+IHdpbGwgd3JpdGUgdmFsdWUgMSB0byBhIDY0Yml0IG1l
bW9yeSBsb2NhdGlvbiwgdGhlIHNlY29uZCBvbmUgd2lsbCB3cml0ZQo+IHZhbHVlIDIsIHRoZSB0
aGlyZCB2YWx1ZSAzIGFuZCBzbyBvbi4gQWZ0ZXIgd3JpdGluZyB0aGUgdmFsdWUgdGhlCj4gaGFy
ZHdhcmUgcmFpc2VzIGFuZCBpbnRlcnJ1cHQgc2lnbmFsIHRvIGV2ZXJ5Ym9keSBpbnRlcmVzdGVk
Lgo+Cj4gSW4gb3RoZXIgd29yZHMgcHJldHR5IHN0YW5kYXJkIG1lbW9yeSBmZW5jZSBiZWhhdmlv
ci4KPgo+IFdoZW4geW91IG5vdyBoYXZlIGEgc2Vjb25kIHF1ZXVlIHdoaWNoIGRlcGVuZHMgb24g
d29yayBvZiB0aGUgZmlyc3Qgb25lCj4geW91IGxvb2sgYXQgdGhlIG1lbW9yeSBsb2NhdGlvbiBh
bmQgZG8gYSBjb21wYXJlLiBJZiB5b3UgZGVwZW5kIG9uIHRoZQo+IHRoaXJkIHN1Ym1pc3Npb24g
eW91IGp1c3Qgd2FpdCBmb3IgdGhlIHZhbHVlIHRvIGJlID4zIGFuZCBhcmUgZG9uZS4KClJpZ2h0
LCBpdCBpcyBjbGVhcmx5IGRlZmluZWQgdG8gdGhlIHRpbWVsaW5lIHNlbWFwaG9yZSBzZW1hbnRp
Y3MsIEkKanVzdCBtZWFudCB0aGF0IGl0J3Mgbm90IGNsZWFyIGhvdyBpdCB3b3JrcyBhdCBhIGxv
d2VyIGxldmVsIHdydCB0aGUKc3luY2hyb25pc2F0aW9uIGFuZCBzaWduYWxpbmcuIFRoZSBzaW1w
bGVzdCBwb3NzaWJsZSBpbnRlcnByZXRhdGlvbiBpcwp0aGF0IHdhaXRfYWRkcnZhbCBibG9ja3Mg
aW5maW5pdGVseSBiZWZvcmUga2ljay1jbWRidWYsIGJ1dCB0aGF0IHNlZW1zCnBhaW5mdWwgd2l0
aCBvbmx5IDMyIHF1ZXVlcy4gQW5kIHRoZSBzYW1lIGZvciBmZW5jZXMsIHdoaWNoIGFyZSBhCmJp
bmFyeSBzaWduYWwuIEkgZ3Vlc3Mgd2UnbGwgZmluZCBvdXQuIE15IHRvb3RoIGh1cnRzLgoKQ2hl
ZXJzLApEYW5pZWwKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8u
b3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1z
aWcK
