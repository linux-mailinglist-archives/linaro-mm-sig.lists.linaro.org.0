Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 43CB52B21A8
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 13 Nov 2020 18:13:20 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 67B11666F1
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 13 Nov 2020 17:13:19 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 4F9F2666F3; Fri, 13 Nov 2020 17:13:19 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	FREEMAIL_FROM,MAILING_LIST_MULTI,RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H2,
	SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3E929666EF;
	Fri, 13 Nov 2020 17:12:45 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 3270B666ED
 for <linaro-mm-sig@lists.linaro.org>; Fri, 13 Nov 2020 17:12:42 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 25484666EF; Fri, 13 Nov 2020 17:12:42 +0000 (UTC)
Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com
 [209.85.221.68])
 by lists.linaro.org (Postfix) with ESMTPS id 94D2E666ED
 for <linaro-mm-sig@lists.linaro.org>; Fri, 13 Nov 2020 17:12:40 +0000 (UTC)
Received: by mail-wr1-f68.google.com with SMTP id 23so10689208wrc.8
 for <linaro-mm-sig@lists.linaro.org>; Fri, 13 Nov 2020 09:12:40 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=RFeIJyuMJoX5jkxaoyIf1M57XnlhipuyBs/EiEAXNDg=;
 b=higlLZ1zQBy2ASh5MgU96CaEr96vx/vsG/LuZoXodv/jcRbRvvCBeALm3hFrirV03x
 G3LwkkKe76+4SYn7Cf4EH7d2uLiPqWjcdXFwswEn/fMW8Gz01SQwSY666wp192TrrJQ0
 0610mG2Td4bbNqyLCAgy+yMMJ1HRUqHGNW86SFcngwoLpoLVLfHQJdx0XjuVcLQnbRha
 9rxf0uqmSDtyhfTWQxP37o/uXtGugB/YXiy4EdzEgCtjKy8UxxkXYGmaiSxeygrrfeP3
 kpfBHA7bCPYe4LoZkREOlM+6FjtqFYGcjLhwn7DB4vBP9i35nttuU4FiIZkxbrbRnOL7
 T/yw==
X-Gm-Message-State: AOAM532v+FPY8zVW+mmp/0ud1qaPEnf6g1KhXmJvhSuSdVezF33mNKIi
 YqLuaFff2rR+D4O2S3csSF3pdBNqh2jFsFV1nhk=
X-Google-Smtp-Source: ABdhPJxmLhtueDSS0HzPw4NvpZjQwREZvykaIIaVnhzTfOWyWePuIu+wL7J6Na0KjWPp16C+fo97YAxlKYRbCuBjAMM=
X-Received: by 2002:a5d:6992:: with SMTP id g18mr4661453wru.362.1605287556673; 
 Fri, 13 Nov 2020 09:12:36 -0800 (PST)
MIME-Version: 1.0
References: <20201113134938.4004947-1-lee.jones@linaro.org>
 <20201113134938.4004947-6-lee.jones@linaro.org>
In-Reply-To: <20201113134938.4004947-6-lee.jones@linaro.org>
From: Alex Deucher <alexdeucher@gmail.com>
Date: Fri, 13 Nov 2020 12:12:25 -0500
Message-ID: <CADnq5_MPKD-Pewn9qfnOMgHE=x34zntux=NdhoimORPtkb8zbQ@mail.gmail.com>
To: Lee Jones <lee.jones@linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: David Airlie <airlied@linux.ie>, LKML <linux-kernel@vger.kernel.org>,
 Maling list - DRI developers <dri-devel@lists.freedesktop.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 amd-gfx list <amd-gfx@lists.freedesktop.org>,
 Alex Deucher <alexander.deucher@amd.com>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 linux-media <linux-media@vger.kernel.org>
Subject: Re: [Linaro-mm-sig] [PATCH 05/40] drm/amd/amdgpu/amdgpu_ring: Fix
	misnaming of param 'max_dw'
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

T24gRnJpLCBOb3YgMTMsIDIwMjAgYXQgODo1MCBBTSBMZWUgSm9uZXMgPGxlZS5qb25lc0BsaW5h
cm8ub3JnPiB3cm90ZToKPgo+IEZpeGVzIHRoZSBmb2xsb3dpbmcgVz0xIGtlcm5lbCBidWlsZCB3
YXJuaW5nKHMpOgo+Cj4gIGRyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9yaW5nLmM6
MTY4OiB3YXJuaW5nOiBGdW5jdGlvbiBwYXJhbWV0ZXIgb3IgbWVtYmVyICdtYXhfZHcnIG5vdCBk
ZXNjcmliZWQgaW4gJ2FtZGdwdV9yaW5nX2luaXQnCj4gIGRyaXZlcnMvZ3B1L2RybS9hbWQvYW1k
Z3B1L2FtZGdwdV9yaW5nLmM6MTY4OiB3YXJuaW5nOiBFeGNlc3MgZnVuY3Rpb24gcGFyYW1ldGVy
ICdtYXhfbmR3JyBkZXNjcmlwdGlvbiBpbiAnYW1kZ3B1X3JpbmdfaW5pdCcKPgo+IENjOiBBbGV4
IERldWNoZXIgPGFsZXhhbmRlci5kZXVjaGVyQGFtZC5jb20+Cj4gQ2M6ICJDaHJpc3RpYW4gS8O2
bmlnIiA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPgo+IENjOiBEYXZpZCBBaXJsaWUgPGFpcmxp
ZWRAbGludXguaWU+Cj4gQ2M6IERhbmllbCBWZXR0ZXIgPGRhbmllbEBmZndsbC5jaD4KPiBDYzog
U3VtaXQgU2Vtd2FsIDxzdW1pdC5zZW13YWxAbGluYXJvLm9yZz4KPiBDYzogYW1kLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKPiBDYzogZHJpLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+
IENjOiBsaW51eC1tZWRpYUB2Z2VyLmtlcm5lbC5vcmcKPiBDYzogbGluYXJvLW1tLXNpZ0BsaXN0
cy5saW5hcm8ub3JnCj4gU2lnbmVkLW9mZi1ieTogTGVlIEpvbmVzIDxsZWUuam9uZXNAbGluYXJv
Lm9yZz4KCkFwcGxpZWQuICBUaGFua3MhCgpBbGV4Cgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0v
YW1kL2FtZGdwdS9hbWRncHVfcmluZy5jIHwgMiArLQo+ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNl
cnRpb24oKyksIDEgZGVsZXRpb24oLSkKPgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
YW1kL2FtZGdwdS9hbWRncHVfcmluZy5jIGIvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1k
Z3B1X3JpbmcuYwo+IGluZGV4IGEyM2IyMDc5Njk2YTEuLjFhNjEyZjUxZWNkOWUgMTAwNjQ0Cj4g
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X3JpbmcuYwo+ICsrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9yaW5nLmMKPiBAQCAtMTU0LDcgKzE1NCw3
IEBAIHZvaWQgYW1kZ3B1X3JpbmdfdW5kbyhzdHJ1Y3QgYW1kZ3B1X3JpbmcgKnJpbmcpCj4gICAq
Cj4gICAqIEBhZGV2OiBhbWRncHVfZGV2aWNlIHBvaW50ZXIKPiAgICogQHJpbmc6IGFtZGdwdV9y
aW5nIHN0cnVjdHVyZSBob2xkaW5nIHJpbmcgaW5mb3JtYXRpb24KPiAtICogQG1heF9uZHc6IG1h
eGltdW0gbnVtYmVyIG9mIGR3IGZvciByaW5nIGFsbG9jCj4gKyAqIEBtYXhfZHc6IG1heGltdW0g
bnVtYmVyIG9mIGR3IGZvciByaW5nIGFsbG9jCj4gICAqIEBpcnFfc3JjOiBpbnRlcnJ1cHQgc291
cmNlIHRvIHVzZSBmb3IgdGhpcyByaW5nCj4gICAqIEBpcnFfdHlwZTogaW50ZXJydXB0IHR5cGUg
dG8gdXNlIGZvciB0aGlzIHJpbmcKPiAgICogQGh3X3ByaW86IHJpbmcgcHJpb3JpdHkgKE5PUk1B
TC9ISUdIKQo+IC0tCj4gMi4yNS4xCj4KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwo+IGRyaS1kZXZlbCBtYWlsaW5nIGxpc3QKPiBkcmktZGV2ZWxAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCj4gaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9kcmktZGV2ZWwKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0
cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bmFyby1tbS1zaWcK
