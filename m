Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 60AB02C2BC0
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 24 Nov 2020 16:49:32 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2AB1566735
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 24 Nov 2020 15:49:31 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 1F6E466737; Tue, 24 Nov 2020 15:49:31 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	FREEMAIL_FROM,MAILING_LIST_MULTI,RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H2,
	SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B8A4E66738;
	Tue, 24 Nov 2020 15:48:57 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 830CF66735
 for <linaro-mm-sig@lists.linaro.org>; Tue, 24 Nov 2020 15:48:54 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 6EA9C66738; Tue, 24 Nov 2020 15:48:54 +0000 (UTC)
Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com
 [209.85.221.65])
 by lists.linaro.org (Postfix) with ESMTPS id 49DF966735
 for <linaro-mm-sig@lists.linaro.org>; Tue, 24 Nov 2020 15:48:53 +0000 (UTC)
Received: by mail-wr1-f65.google.com with SMTP id r3so4504535wrt.2
 for <linaro-mm-sig@lists.linaro.org>; Tue, 24 Nov 2020 07:48:53 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=YQEzzUsi3ECVy0o2bywn3sPnPcyWGDcKqLpYqiqy8k0=;
 b=APUYMt/etHwSPETJASLztIiEREGZwykLOL/fugGXwKJlQ2xrGRaoELF+ltPd9+as38
 h+ZheHlLJLpGPbBggCqJtYf1aIwADU1Et1mBX5+y0qc7ybSnLdmG0IRuLK6EuLA6J97I
 Jgvp4SRYDt0rEUOp6l4DcUL6eEJdpDWyoIckTjvnXi8Jgwt3Iky+cspx64HxrsdBrvTh
 VxKd7olPuLtj3yf7cH+8uW5CwGDBgcZzr8Pdm0W4UNGEDy7LjWgnAw0coeukJLPFc5Ah
 WEwnRBiFbo3mOZX0H1TAMfcYHf9mVohqyiafoeYqk8T+1F7WZV52FrI1W6Dsa1eK4P1O
 NO3Q==
X-Gm-Message-State: AOAM532QAgJA1k1zEwBOKErBYIpA5LwclXtBwmCGBVBYoX0mGoHLfA3Q
 HSSteVTYiKXKWhSyutvjwIhNHvJNxMjUiMZOsJY=
X-Google-Smtp-Source: ABdhPJwYgYr70cFFo0Y9krfbSn0C7YP63ewXVaD5K8+FsG7eicpQE/XYSITvz9BpjTRXjTOvgEAPxqqfmRX9vlrjQxU=
X-Received: by 2002:adf:8028:: with SMTP id 37mr6020956wrk.111.1606232932459; 
 Tue, 24 Nov 2020 07:48:52 -0800 (PST)
MIME-Version: 1.0
References: <20201123111919.233376-1-lee.jones@linaro.org>
 <20201123111919.233376-3-lee.jones@linaro.org>
In-Reply-To: <20201123111919.233376-3-lee.jones@linaro.org>
From: Alex Deucher <alexdeucher@gmail.com>
Date: Tue, 24 Nov 2020 10:48:41 -0500
Message-ID: <CADnq5_PsVND-G1_z++kv+A9B0xOig5XHW0R2nQrb68kCAe1-yA@mail.gmail.com>
To: Lee Jones <lee.jones@linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: David Airlie <airlied@linux.ie>, LKML <linux-kernel@vger.kernel.org>,
 amd-gfx list <amd-gfx@lists.freedesktop.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Jerome Glisse <glisse@freedesktop.org>,
 Maling list - DRI developers <dri-devel@lists.freedesktop.org>,
 Alex Deucher <alexander.deucher@amd.com>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 linux-media <linux-media@vger.kernel.org>
Subject: Re: [Linaro-mm-sig] [PATCH 02/40] drm/amd/amdgpu/amdgpu_ttm: Add
	description for 'page_flags'
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

T24gTW9uLCBOb3YgMjMsIDIwMjAgYXQgNjoxOSBBTSBMZWUgSm9uZXMgPGxlZS5qb25lc0BsaW5h
cm8ub3JnPiB3cm90ZToKPgo+IEZpeGVzIHRoZSBmb2xsb3dpbmcgVz0xIGtlcm5lbCBidWlsZCB3
YXJuaW5nKHMpOgo+Cj4gIGRyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV90dG0uYzox
MjE0OiB3YXJuaW5nOiBGdW5jdGlvbiBwYXJhbWV0ZXIgb3IgbWVtYmVyICdwYWdlX2ZsYWdzJyBu
b3QgZGVzY3JpYmVkIGluICdhbWRncHVfdHRtX3R0X2NyZWF0ZScKPgo+IENjOiBBbGV4IERldWNo
ZXIgPGFsZXhhbmRlci5kZXVjaGVyQGFtZC5jb20+Cj4gQ2M6ICJDaHJpc3RpYW4gS8O2bmlnIiA8
Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPgo+IENjOiBEYXZpZCBBaXJsaWUgPGFpcmxpZWRAbGlu
dXguaWU+Cj4gQ2M6IERhbmllbCBWZXR0ZXIgPGRhbmllbEBmZndsbC5jaD4KPiBDYzogU3VtaXQg
U2Vtd2FsIDxzdW1pdC5zZW13YWxAbGluYXJvLm9yZz4KPiBDYzogSmVyb21lIEdsaXNzZSA8Z2xp
c3NlQGZyZWVkZXNrdG9wLm9yZz4KPiBDYzogYW1kLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
PiBDYzogZHJpLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+IENjOiBsaW51eC1tZWRpYUB2
Z2VyLmtlcm5lbC5vcmcKPiBDYzogbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCj4gU2ln
bmVkLW9mZi1ieTogTGVlIEpvbmVzIDxsZWUuam9uZXNAbGluYXJvLm9yZz4KCkFwcGxpZWQuICBU
aGFua3MhCgpBbGV4CgoKPiAtLS0KPiAgZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1
X3R0bS5jIHwgMSArCj4gIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKQo+Cj4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV90dG0uYyBiL2RyaXZlcnMv
Z3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV90dG0uYwo+IGluZGV4IDVmY2RkNjdlNWE5MTMuLmRl
YmJjZWY5NjFkZDUgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1k
Z3B1X3R0bS5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X3R0bS5j
Cj4gQEAgLTExOTksNiArMTE5OSw3IEBAIHN0YXRpYyB2b2lkIGFtZGdwdV90dG1fYmFja2VuZF9k
ZXN0cm95KHN0cnVjdCB0dG1fYm9fZGV2aWNlICpiZGV2LAo+ICAgKiBhbWRncHVfdHRtX3R0X2Ny
ZWF0ZSAtIENyZWF0ZSBhIHR0bV90dCBvYmplY3QgZm9yIGEgZ2l2ZW4gQk8KPiAgICoKPiAgICog
QGJvOiBUaGUgYnVmZmVyIG9iamVjdCB0byBjcmVhdGUgYSBHVFQgdHRtX3R0IG9iamVjdCBhcm91
bmQKPiArICogQHBhZ2VfZmxhZ3M6IFBhZ2UgZmxhZ3MgdG8gYmUgYWRkZWQgdG8gdGhlIHR0bV90
dCBvYmplY3QKPiAgICoKPiAgICogQ2FsbGVkIGJ5IHR0bV90dF9jcmVhdGUoKS4KPiAgICovCj4g
LS0KPiAyLjI1LjEKPgo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCj4gZHJpLWRldmVsIG1haWxpbmcgbGlzdAo+IGRyaS1kZXZlbEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKPiBodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2RyaS1kZXZlbApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5v
cmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNp
Zwo=
