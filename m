Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id D1FF8232769
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 30 Jul 2020 00:12:01 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 96270617FC
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 29 Jul 2020 22:12:00 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 865E16184D; Wed, 29 Jul 2020 22:12:00 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	FREEMAIL_FROM,MAILING_LIST_MULTI,RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H2,
	SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 694BB65FCE;
	Wed, 29 Jul 2020 22:11:10 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id E35D86066C
 for <linaro-mm-sig@lists.linaro.org>; Wed, 29 Jul 2020 22:10:55 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id D21256184D; Wed, 29 Jul 2020 22:10:55 +0000 (UTC)
Received: from mail-wm1-f68.google.com (mail-wm1-f68.google.com
 [209.85.128.68])
 by lists.linaro.org (Postfix) with ESMTPS id DB5296066C
 for <linaro-mm-sig@lists.linaro.org>; Wed, 29 Jul 2020 22:10:53 +0000 (UTC)
Received: by mail-wm1-f68.google.com with SMTP id f18so3036050wmc.0
 for <linaro-mm-sig@lists.linaro.org>; Wed, 29 Jul 2020 15:10:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=VRmXX22Ht9Ug7pe7RoctKCZnQAxX1VH0Ou5Q8SMIejk=;
 b=GCep4Gm1UjvBs9sQVycIjnvHMLRei01JQW6HGO4G0mtPEthcw5B24PdtKng4TAgj6H
 0C+F2O8GiAmor+sbCbTyw2CeVPdF8rsAaM+SWreSt4iRl+dUbsQrXc19t2mm9mdwXOfr
 E7nMDN5iXWSLehVhkL37pfYYOF978SRYktJ9NBgzW6C1vnLVkzYINme8+6yZSrZy9DPX
 E/iDQ6Qfn8tDavIugSEJd/4m4/AztLg1YeDqVxh65LvIao8znDHLJTlJj35TXuqjelFJ
 ceJ3qAtirlA7dZHsYlxrJ4QXp0vZVOHrn3Ohik6aGXxhb79mmg94pzylz00o05WFojVV
 H5GA==
X-Gm-Message-State: AOAM530I599+tOUktTa7A9Ofrc+T4w0CObubi0wcxq/IRqb4OM7HFPtY
 8dXBgTuPQavzmuBNVlyM06hWOhdtrgx9Jnhr1Bw=
X-Google-Smtp-Source: ABdhPJy8ks1gVFBsd4+PvZ7RcVx+rmeF3fW3P6eru07cUIBqON0J65m9pkCTSrgJ1mggZhfdeqSwdUdDfuQuzzSeZtw=
X-Received: by 2002:a1c:2:: with SMTP id 2mr10843270wma.79.1596060652954; Wed,
 29 Jul 2020 15:10:52 -0700 (PDT)
MIME-Version: 1.0
References: <20200727213017.852589-1-daniel.vetter@ffwll.ch>
 <d4e687e9-cf0b-384f-5982-849d0fa11147@amd.com>
In-Reply-To: <d4e687e9-cf0b-384f-5982-849d0fa11147@amd.com>
From: Alex Deucher <alexdeucher@gmail.com>
Date: Wed, 29 Jul 2020 18:10:42 -0400
Message-ID: <CADnq5_OdpSD3xRufctNedeiehiA80XcN1YOA7d58nMFcrp8vhg@mail.gmail.com>
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: linux-rdma <linux-rdma@vger.kernel.org>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 amd-gfx list <amd-gfx@lists.freedesktop.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Daniel Vetter <daniel.vetter@intel.com>,
 linux-media <linux-media@vger.kernel.org>
Subject: Re: [Linaro-mm-sig] [PATCH] drm/amdgpu/dc: Stop dma_resv_lock
	inversion in commit_tail
X-BeenThere: linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 2.1.16
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

QXBwbGllZC4gIFRoYW5rcyEKCkFsZXgKCk9uIFR1ZSwgSnVsIDI4LCAyMDIwIGF0IDI6NTYgQU0g
Q2hyaXN0aWFuIEvDtm5pZwo8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPiB3cm90ZToKPgo+IEFt
IDI3LjA3LjIwIHVtIDIzOjMwIHNjaHJpZWIgRGFuaWVsIFZldHRlcjoKPiA+IFRyeWluZyB0byBn
cmFiIGRtYV9yZXN2X2xvY2sgd2hpbGUgaW4gY29tbWl0X3RhaWwgYmVmb3JlIHdlJ3ZlIGRvbmUK
PiA+IGFsbCB0aGUgY29kZSB0aGF0IGxlYWRzIHRvIHRoZSBldmVudHVhbCBzaWduYWxsaW5nIG9m
IHRoZSB2YmxhbmsgZXZlbnQKPiA+ICh3aGljaCBjYW4gYmUgYSBkbWFfZmVuY2UpIGlzIGRlYWRs
b2NrLXkuIERvbid0IGRvIHRoYXQuCj4gPgo+ID4gSGVyZSB0aGUgc29sdXRpb24gaXMgZWFzeSBi
ZWNhdXNlIGp1c3QgZ3JhYmJpbmcgbG9ja3MgdG8gcmVhZAo+ID4gc29tZXRoaW5nIHJhY2VzIGFu
eXdheS4gV2UgZG9uJ3QgbmVlZCB0byBib3RoZXIsIFJFQURfT05DRSBpcwo+ID4gZXF1aXZhbGVu
dC4gQW5kIGF2b2lkcyB0aGUgbG9ja2luZyBpc3N1ZS4KPiA+Cj4gPiB2MjogQWxzbyB0YWtlIGlu
dG8gYWNjb3VudCB0bXpfc3VyZmFjZSBib29sZWFuLCBwbHVzIGp1c3QgZGVsZXRlIHRoZQo+ID4g
b2xkIGNvZGUuCj4gPgo+ID4gQ2M6IGxpbnV4LW1lZGlhQHZnZXIua2VybmVsLm9yZwo+ID4gQ2M6
IGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwo+ID4gQ2M6IGxpbnV4LXJkbWFAdmdlci5r
ZXJuZWwub3JnCj4gPiBDYzogYW1kLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPiA+IENjOiBp
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4gPiBDYzogQ2hyaXMgV2lsc29uIDxjaHJp
c0BjaHJpcy13aWxzb24uY28udWs+Cj4gPiBDYzogTWFhcnRlbiBMYW5raG9yc3QgPG1hYXJ0ZW4u
bGFua2hvcnN0QGxpbnV4LmludGVsLmNvbT4KPiA+IENjOiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJp
c3RpYW4ua29lbmlnQGFtZC5jb20+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBEYW5pZWwgVmV0dGVyIDxk
YW5pZWwudmV0dGVyQGludGVsLmNvbT4KPiA+IC0tLQo+ID4gREMtZm9sa3MsIEkgdGhpbmsgdGhp
cyBzcGxpdCBvdXQgcGF0Y2ggZnJvbSBteSBzZXJpZXMgaGVyZQo+ID4KPiA+IGh0dHBzOi8vbmFt
MTEuc2FmZWxpbmtzLnByb3RlY3Rpb24ub3V0bG9vay5jb20vP3VybD1odHRwcyUzQSUyRiUyRmxv
cmUua2VybmVsLm9yZyUyRmRyaS1kZXZlbCUyRjIwMjAwNzA3MjAxMjI5LjQ3MjgzNC0xLWRhbmll
bC52ZXR0ZXIlNDBmZndsbC5jaCUyRiZhbXA7ZGF0YT0wMiU3QzAxJTdDY2hyaXN0aWFuLmtvZW5p
ZyU0MGFtZC5jb20lN0M4YTRmNTczNjY4MmE0YjVjOTQzZTA4ZDgzMjc0N2FiMSU3QzNkZDg5NjFm
ZTQ4ODRlNjA4ZTExYTgyZDk5NGUxODNkJTdDMCU3QzAlN0M2MzczMTQ4MjMxNDU1MjE4NDAmYW1w
O3NkYXRhPXFkN05yb3g2MkxyJTJGWFdiSkpGVnNrZzlSWUw0JTJGb1JWQ0ZqUjZyVURNQTVFJTNE
JmFtcDtyZXNlcnZlZD0wCj4gPgo+ID4gc2hvdWxkIGJlIHJlYWR5IGZvciByZXZpZXcvbWVyZ2lu
Zy4gSSBmaXhlZCBpdCB1cCBhIGJpdCBzbyB0aGF0IGl0J3Mgbm90Cj4gPiBqdXN0IGEgZ3Jvc3Mg
aGFjayA6LSkKPiA+Cj4gPiBDaGVlcnMsIERhbmllbAo+ID4KPiA+Cj4gPiAtLS0KPiA+ICAgLi4u
L2dwdS9kcm0vYW1kL2Rpc3BsYXkvYW1kZ3B1X2RtL2FtZGdwdV9kbS5jIHwgMTkgKysrKysrLS0t
LS0tLS0tLS0tLQo+ID4gICAxIGZpbGUgY2hhbmdlZCwgNiBpbnNlcnRpb25zKCspLCAxMyBkZWxl
dGlvbnMoLSkKPiA+Cj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2FtZC9kaXNwbGF5
L2FtZGdwdV9kbS9hbWRncHVfZG0uYyBiL2RyaXZlcnMvZ3B1L2RybS9hbWQvZGlzcGxheS9hbWRn
cHVfZG0vYW1kZ3B1X2RtLmMKPiA+IGluZGV4IDIxZWM2NGZlNTUyNy4uYTIwYjYyYjFmMmVmIDEw
MDY0NAo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2FtZC9kaXNwbGF5L2FtZGdwdV9kbS9hbWRn
cHVfZG0uYwo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2FtZC9kaXNwbGF5L2FtZGdwdV9kbS9h
bWRncHVfZG0uYwo+ID4gQEAgLTY5NTksMjAgKzY5NTksMTMgQEAgc3RhdGljIHZvaWQgYW1kZ3B1
X2RtX2NvbW1pdF9wbGFuZXMoc3RydWN0IGRybV9hdG9taWNfc3RhdGUgKnN0YXRlLAo+ID4gICAg
ICAgICAgICAgICAgICAgICAgIERSTV9FUlJPUigiV2FpdGluZyBmb3IgZmVuY2VzIHRpbWVkIG91
dCEiKTsKPiA+Cj4gPiAgICAgICAgICAgICAgIC8qCj4gPiAtICAgICAgICAgICAgICAqIFRPRE8g
VGhpcyBtaWdodCBmYWlsIGFuZCBoZW5jZSBiZXR0ZXIgbm90IHVzZWQsIHdhaXQKPiA+IC0gICAg
ICAgICAgICAgICogZXhwbGljaXRseSBvbiBmZW5jZXMgaW5zdGVhZAo+ID4gLSAgICAgICAgICAg
ICAgKiBhbmQgaW4gZ2VuZXJhbCBzaG91bGQgYmUgY2FsbGVkIGZvcgo+ID4gLSAgICAgICAgICAg
ICAgKiBibG9ja2luZyBjb21taXQgdG8gYXMgcGVyIGZyYW1ld29yayBoZWxwZXJzCj4gPiArICAg
ICAgICAgICAgICAqIFdlIGNhbm5vdCByZXNlcnZlIGJ1ZmZlcnMgaGVyZSwgd2hpY2ggbWVhbnMg
dGhlIG5vcm1hbCBmbGFnCj4gPiArICAgICAgICAgICAgICAqIGFjY2VzcyBmdW5jdGlvbnMgZG9u
J3Qgd29yay4gUGFwZXIgb3ZlciB0aGlzIHdpdGggUkVBRF9PTkNFLAo+ID4gKyAgICAgICAgICAg
ICAgKiBidXQgbWF5YmUgdGhlIGZsYWdzIGFyZSBpbnZhcmlhbnQgZW5vdWdoIHRoYXQgbm90IGV2
ZW4gdGhhdAo+ID4gKyAgICAgICAgICAgICAgKiB3b3VsZCBiZSBuZWVkZWQuCj4gPiAgICAgICAg
ICAgICAgICAqLwo+ID4gLSAgICAgICAgICAgICByID0gYW1kZ3B1X2JvX3Jlc2VydmUoYWJvLCB0
cnVlKTsKPiA+IC0gICAgICAgICAgICAgaWYgKHVubGlrZWx5KHIgIT0gMCkpCj4gPiAtICAgICAg
ICAgICAgICAgICAgICAgRFJNX0VSUk9SKCJmYWlsZWQgdG8gcmVzZXJ2ZSBidWZmZXIgYmVmb3Jl
IGZsaXBcbiIpOwo+ID4gLQo+ID4gLSAgICAgICAgICAgICBhbWRncHVfYm9fZ2V0X3RpbGluZ19m
bGFncyhhYm8sICZ0aWxpbmdfZmxhZ3MpOwo+ID4gLQo+ID4gLSAgICAgICAgICAgICB0bXpfc3Vy
ZmFjZSA9IGFtZGdwdV9ib19lbmNyeXB0ZWQoYWJvKTsKPiA+IC0KPiA+IC0gICAgICAgICAgICAg
YW1kZ3B1X2JvX3VucmVzZXJ2ZShhYm8pOwo+ID4gKyAgICAgICAgICAgICB0aWxpbmdfZmxhZ3Mg
PSBSRUFEX09OQ0UoYWJvLT50aWxpbmdfZmxhZ3MpOwo+ID4gKyAgICAgICAgICAgICB0bXpfc3Vy
ZmFjZSA9IFJFQURfT05DRShhYm8tPmZsYWdzKSAmIEFNREdQVV9HRU1fQ1JFQVRFX0VOQ1JZUFRF
RDsKPgo+IFllYWgsIHRoZSBhYm8tPmZsYWdzIGFyZSBtb3N0bHkgZml4ZWQgYWZ0ZXIgY3JlYXRp
b24sIGVzcGVjaWFsbHkgdGhlCj4gZW5jcnlwdGVkIGZsYWcgY2FuJ3QgY2hhbmdlIG9yIHdlIGNv
cnJ1cHQgcGFnZSB0YWJsZSB0YWJsZXMuIFNvIHRoYXQKPiBzaG91bGQgd29yayBmaW5lLgo+Cj4g
QW55Ym9keSB3aG8gcGlja3MgdGhpcyB1cCBmZWVsIGZyZWUgdG8gYWRkIGFuIFJldmlld2VkLWJ5
OiBDaHJpc3RpYW4KPiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4uCj4KPiBSZWdh
cmRzLAo+IENocmlzdGlhbi4KPgo+ID4KPiA+ICAgICAgICAgICAgICAgZmlsbF9kY19wbGFuZV9p
bmZvX2FuZF9hZGRyKAo+ID4gICAgICAgICAgICAgICAgICAgICAgIGRtLT5hZGV2LCBuZXdfcGxh
bmVfc3RhdGUsIHRpbGluZ19mbGFncywKPgo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCj4gYW1kLWdmeCBtYWlsaW5nIGxpc3QKPiBhbWQtZ2Z4QGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwo+IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vYW1kLWdmeApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxp
bmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJv
LW1tLXNpZwo=
