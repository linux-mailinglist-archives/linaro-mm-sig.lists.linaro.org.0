Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id AF8E32B21D9
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 13 Nov 2020 18:17:52 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E0C6F666EF
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 13 Nov 2020 17:17:51 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id D58B4666F3; Fri, 13 Nov 2020 17:17:51 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	FREEMAIL_FROM,MAILING_LIST_MULTI,RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H2,
	SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 93257666F0;
	Fri, 13 Nov 2020 17:17:09 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 0301C666EE
 for <linaro-mm-sig@lists.linaro.org>; Fri, 13 Nov 2020 17:17:06 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id E870C666F0; Fri, 13 Nov 2020 17:17:06 +0000 (UTC)
Received: from mail-wm1-f68.google.com (mail-wm1-f68.google.com
 [209.85.128.68])
 by lists.linaro.org (Postfix) with ESMTPS id A4DAC666EE
 for <linaro-mm-sig@lists.linaro.org>; Fri, 13 Nov 2020 17:17:05 +0000 (UTC)
Received: by mail-wm1-f68.google.com with SMTP id s13so9201389wmh.4
 for <linaro-mm-sig@lists.linaro.org>; Fri, 13 Nov 2020 09:17:05 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=8MYRJgCahvIIjHbmvpXlCqJXMSfFVlQgoNN3oalTAH0=;
 b=IYHcSgOk/phQ0N0zrx7io5PphodecWw6u6jNrZM5Kgmu5yuL9w9m0IolJ1zM1Uu6v3
 NV/esp7ZNADGoRxZq+O7wKDNv7e8Pbjc22602T6pUK+IdXqe6Uf7oDjR1WgPBbXpQUu/
 4Zy/bvFlSbAVFkggiewXC+mYod2hnvQxBlf5BZ6TWMtrQnkdWTNVbMUgpT511318O0kv
 d2ZMstoTGP5AnR3y61WxEWHgt2H623zeBExq5ES7qia5MDWT6dZu8obQN9rgBXndt6VH
 S1pqnQGO3V9QiWYKjMDSyO1zreOZLTEc7zY1oFAXTJiz7oCAtJrwITpIjXCHAWiJ9qAA
 jurw==
X-Gm-Message-State: AOAM530HfHkQPI4r8vlU7o+oIQtK7hq/vK5tELgNZDTG9uHTo9bEuuPs
 OBas3aQMaLvn7JC3xy1rhyWHqUuSOJ0U0iGCrCQ=
X-Google-Smtp-Source: ABdhPJxDWvPyzSPU2aP0/uCsckO5leH1AQ/fcwWETiHKRMBBGJqXONQ6+CzQmXw8cqOl1kS5Ua3r6ioJNxVioBk2akw=
X-Received: by 2002:a7b:c157:: with SMTP id z23mr3494772wmi.70.1605287819058; 
 Fri, 13 Nov 2020 09:16:59 -0800 (PST)
MIME-Version: 1.0
References: <20201113134938.4004947-1-lee.jones@linaro.org>
 <20201113134938.4004947-9-lee.jones@linaro.org>
In-Reply-To: <20201113134938.4004947-9-lee.jones@linaro.org>
From: Alex Deucher <alexdeucher@gmail.com>
Date: Fri, 13 Nov 2020 12:16:47 -0500
Message-ID: <CADnq5_Mx-3E7GPHR11FAMAw=UNDEt1zBx6f6X04A0jrC84wDrg@mail.gmail.com>
To: Lee Jones <lee.jones@linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: David Airlie <airlied@linux.ie>, LKML <linux-kernel@vger.kernel.org>,
 Maling list - DRI developers <dri-devel@lists.freedesktop.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 amd-gfx list <amd-gfx@lists.freedesktop.org>,
 Alex Deucher <alexander.deucher@amd.com>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 linux-media <linux-media@vger.kernel.org>
Subject: Re: [Linaro-mm-sig] [PATCH 08/40] drm/amd/amdgpu/amdgpu_ib: Fix
 some incorrect/incomplete function documentation
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
YXJuaW5nKHMpOgo+Cj4gIGRyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9pYi5jOjY2
OiB3YXJuaW5nOiBGdW5jdGlvbiBwYXJhbWV0ZXIgb3IgbWVtYmVyICdhZGV2JyBub3QgZGVzY3Jp
YmVkIGluICdhbWRncHVfaWJfZ2V0Jwo+ICBkcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRn
cHVfaWIuYzo2Njogd2FybmluZzogRnVuY3Rpb24gcGFyYW1ldGVyIG9yIG1lbWJlciAndm0nIG5v
dCBkZXNjcmliZWQgaW4gJ2FtZGdwdV9pYl9nZXQnCj4gIGRyaXZlcnMvZ3B1L2RybS9hbWQvYW1k
Z3B1L2FtZGdwdV9pYi5jOjY2OiB3YXJuaW5nOiBGdW5jdGlvbiBwYXJhbWV0ZXIgb3IgbWVtYmVy
ICdwb29sX3R5cGUnIG5vdCBkZXNjcmliZWQgaW4gJ2FtZGdwdV9pYl9nZXQnCj4gIGRyaXZlcnMv
Z3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9pYi5jOjY2OiB3YXJuaW5nOiBFeGNlc3MgZnVuY3Rp
b24gcGFyYW1ldGVyICdyaW5nJyBkZXNjcmlwdGlvbiBpbiAnYW1kZ3B1X2liX2dldCcKPiAgZHJp
dmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2liLmM6MTI1OiB3YXJuaW5nOiBGdW5jdGlv
biBwYXJhbWV0ZXIgb3IgbWVtYmVyICdyaW5nJyBub3QgZGVzY3JpYmVkIGluICdhbWRncHVfaWJf
c2NoZWR1bGUnCj4gIGRyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9pYi5jOjEyNTog
d2FybmluZzogRnVuY3Rpb24gcGFyYW1ldGVyIG9yIG1lbWJlciAnam9iJyBub3QgZGVzY3JpYmVk
IGluICdhbWRncHVfaWJfc2NoZWR1bGUnCj4gIGRyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2Ft
ZGdwdV9pYi5jOjEyNTogd2FybmluZzogRXhjZXNzIGZ1bmN0aW9uIHBhcmFtZXRlciAnYWRldicg
ZGVzY3JpcHRpb24gaW4gJ2FtZGdwdV9pYl9zY2hlZHVsZScKPgo+IENjOiBBbGV4IERldWNoZXIg
PGFsZXhhbmRlci5kZXVjaGVyQGFtZC5jb20+Cj4gQ2M6ICJDaHJpc3RpYW4gS8O2bmlnIiA8Y2hy
aXN0aWFuLmtvZW5pZ0BhbWQuY29tPgo+IENjOiBEYXZpZCBBaXJsaWUgPGFpcmxpZWRAbGludXgu
aWU+Cj4gQ2M6IERhbmllbCBWZXR0ZXIgPGRhbmllbEBmZndsbC5jaD4KPiBDYzogU3VtaXQgU2Vt
d2FsIDxzdW1pdC5zZW13YWxAbGluYXJvLm9yZz4KPiBDYzogYW1kLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKPiBDYzogZHJpLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+IENjOiBsaW51
eC1tZWRpYUB2Z2VyLmtlcm5lbC5vcmcKPiBDYzogbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8u
b3JnCj4gU2lnbmVkLW9mZi1ieTogTGVlIEpvbmVzIDxsZWUuam9uZXNAbGluYXJvLm9yZz4KCkFw
cGxpZWQuIFRoYW5rcyEKCkFsZXgKCgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdw
dS9hbWRncHVfaWIuYyB8IDYgKysrKy0tCj4gIDEgZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMo
KyksIDIgZGVsZXRpb25zKC0pCj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2FtZC9h
bWRncHUvYW1kZ3B1X2liLmMgYi9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfaWIu
Ywo+IGluZGV4IDJmNTNmYTBhZTlhNjIuLmM2OWFmOWI4NmNjNjAgMTAwNjQ0Cj4gLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2liLmMKPiArKysgYi9kcml2ZXJzL2dwdS9k
cm0vYW1kL2FtZGdwdS9hbWRncHVfaWIuYwo+IEBAIC01Miw4ICs1MiwxMCBAQAo+ICAvKioKPiAg
ICogYW1kZ3B1X2liX2dldCAtIHJlcXVlc3QgYW4gSUIgKEluZGlyZWN0IEJ1ZmZlcikKPiAgICoK
PiAtICogQHJpbmc6IHJpbmcgaW5kZXggdGhlIElCIGlzIGFzc29jaWF0ZWQgd2l0aAo+ICsgKiBA
YWRldjogYW1kZ3B1X2RldmljZSBwb2ludGVyCj4gKyAqIEB2bTogYW1kZ3B1X3ZtIHBvaW50ZXIK
PiAgICogQHNpemU6IHJlcXVlc3RlZCBJQiBzaXplCj4gKyAqIEBwb29sX3R5cGU6IElCIHBvb2wg
dHlwZSAoZGVsYXllZCwgaW1tZWRpYXRlLCBkaXJlY3QpCj4gICAqIEBpYjogSUIgb2JqZWN0IHJl
dHVybmVkCj4gICAqCj4gICAqIFJlcXVlc3QgYW4gSUIgKGFsbCBhc2ljcykuICBJQnMgYXJlIGFs
bG9jYXRlZCB1c2luZyB0aGUKPiBAQCAtMTAxLDcgKzEwMyw3IEBAIHZvaWQgYW1kZ3B1X2liX2Zy
ZWUoc3RydWN0IGFtZGdwdV9kZXZpY2UgKmFkZXYsIHN0cnVjdCBhbWRncHVfaWIgKmliLAo+ICAv
KioKPiAgICogYW1kZ3B1X2liX3NjaGVkdWxlIC0gc2NoZWR1bGUgYW4gSUIgKEluZGlyZWN0IEJ1
ZmZlcikgb24gdGhlIHJpbmcKPiAgICoKPiAtICogQGFkZXY6IGFtZGdwdV9kZXZpY2UgcG9pbnRl
cgo+ICsgKiBAcmluZzogcmluZyBpbmRleCB0aGUgSUIgaXMgYXNzb2NpYXRlZCB3aXRoCj4gICAq
IEBudW1faWJzOiBudW1iZXIgb2YgSUJzIHRvIHNjaGVkdWxlCj4gICAqIEBpYnM6IElCIG9iamVj
dHMgdG8gc2NoZWR1bGUKPiAgICogQGY6IGZlbmNlIGNyZWF0ZWQgZHVyaW5nIHRoaXMgc3VibWlz
c2lvbgo+IC0tCj4gMi4yNS4xCj4KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwo+IGRyaS1kZXZlbCBtYWlsaW5nIGxpc3QKPiBkcmktZGV2ZWxAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCj4gaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9kcmktZGV2ZWwKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5s
aW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFy
by1tbS1zaWcK
