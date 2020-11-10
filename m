Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E0752AE475
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 11 Nov 2020 00:55:20 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 653DA665F2
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 10 Nov 2020 23:55:19 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 597D1665F3; Tue, 10 Nov 2020 23:55:19 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	FREEMAIL_FROM,MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,
	SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2682F665EE;
	Tue, 10 Nov 2020 23:54:43 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 9CECA6192C
 for <linaro-mm-sig@lists.linaro.org>; Tue, 10 Nov 2020 23:54:39 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 9003A665EE; Tue, 10 Nov 2020 23:54:39 +0000 (UTC)
Received: from mail-wr1-f67.google.com (mail-wr1-f67.google.com
 [209.85.221.67])
 by lists.linaro.org (Postfix) with ESMTPS id 16EB26192C
 for <linaro-mm-sig@lists.linaro.org>; Tue, 10 Nov 2020 23:54:38 +0000 (UTC)
Received: by mail-wr1-f67.google.com with SMTP id o15so401279wru.6
 for <linaro-mm-sig@lists.linaro.org>; Tue, 10 Nov 2020 15:54:38 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=AZu6XPMSl4sNdMFeam8YLAmi7IJLk3RLAZr9T6pEy+0=;
 b=U8BdKSto3mmucrglxqueRFxIa3EQys8kXq3/zjM2FsweW+QChxAVqq0rNBlh6V8OkF
 s5WGyOe5QALQ8L4f31dVDqEwht3H8YTLU7nN6QLWQU7Oqca1oHg9E8J+S1Vbi5wBATDG
 t/OpBCuUv906DwlwtVraBirx9onmB+MSGWCIb2hEL0g9ihVAPaWnQStx26EmT0rV2O7G
 3aKypp4TqIc9z8uaxR+QV588rPRVmN8utuKSWtspWim3pc09W1fOmUC6wmfS0aNTIEhn
 I1igewzD0Pwu7mq/zbrS1G7ZMtc1aStx7UuF6d8rr6v7KspKDmdB4+nT/S/r2XO9QA2t
 ihrQ==
X-Gm-Message-State: AOAM532vuF2VbKK9lE6WGzFagwyTPGshNS+J//J56HsT5GYVK52h8hgB
 sTqfq9pXhaLRdZvAnWi35NI/ktSccIqk4TBoA+g=
X-Google-Smtp-Source: ABdhPJzP9e5pjH5sCd486bVfOquouBS2v0wH/GmC2ZsacUkp/PcNOrTUbD6snndk/K3H9t7uWbLLbIQPc0ik2RzapKM=
X-Received: by 2002:adf:e8d0:: with SMTP id k16mr26295254wrn.362.1605052477294; 
 Tue, 10 Nov 2020 15:54:37 -0800 (PST)
MIME-Version: 1.0
References: <20201110193112.988999-1-lee.jones@linaro.org>
 <20201110193112.988999-17-lee.jones@linaro.org>
In-Reply-To: <20201110193112.988999-17-lee.jones@linaro.org>
From: Alex Deucher <alexdeucher@gmail.com>
Date: Tue, 10 Nov 2020 18:54:25 -0500
Message-ID: <CADnq5_NACtb19H26ruPKOJ2ZBv3WT+o5LQnMtreWp1qsx-w3Fw@mail.gmail.com>
To: Lee Jones <lee.jones@linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: David Airlie <airlied@linux.ie>, LKML <linux-kernel@vger.kernel.org>,
 Maling list - DRI developers <dri-devel@lists.freedesktop.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 amd-gfx list <amd-gfx@lists.freedesktop.org>,
 Alex Deucher <alexander.deucher@amd.com>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 linux-media <linux-media@vger.kernel.org>
Subject: Re: [Linaro-mm-sig] [PATCH 16/30] drm/radeon/r100: Fix some
 kernel-doc formatting, misnaming and missing issues
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

T24gVHVlLCBOb3YgMTAsIDIwMjAgYXQgMjozMSBQTSBMZWUgSm9uZXMgPGxlZS5qb25lc0BsaW5h
cm8ub3JnPiB3cm90ZToKPgo+IEZpeGVzIHRoZSBmb2xsb3dpbmcgVz0xIGtlcm5lbCBidWlsZCB3
YXJuaW5nKHMpOgo+Cj4gIGRyaXZlcnMvZ3B1L2RybS9yYWRlb24vcjEwMC5jOjE2Mzogd2Fybmlu
ZzogRnVuY3Rpb24gcGFyYW1ldGVyIG9yIG1lbWJlciAnYXN5bmMnIG5vdCBkZXNjcmliZWQgaW4g
J3IxMDBfcGFnZV9mbGlwJwo+ICBkcml2ZXJzL2dwdS9kcm0vcmFkZW9uL3IxMDAuYzo4NDg6IHdh
cm5pbmc6IEZ1bmN0aW9uIHBhcmFtZXRlciBvciBtZW1iZXIgJ3JkZXYnIG5vdCBkZXNjcmliZWQg
aW4gJ3IxMDBfcmluZ19oZHBfZmx1c2gnCj4gIGRyaXZlcnMvZ3B1L2RybS9yYWRlb24vcjEwMC5j
Ojg0ODogd2FybmluZzogRnVuY3Rpb24gcGFyYW1ldGVyIG9yIG1lbWJlciAncmluZycgbm90IGRl
c2NyaWJlZCBpbiAncjEwMF9yaW5nX2hkcF9mbHVzaCcKPiAgZHJpdmVycy9ncHUvZHJtL3JhZGVv
bi9yMTAwLmM6MTQyNTogd2FybmluZzogRnVuY3Rpb24gcGFyYW1ldGVyIG9yIG1lbWJlciAncCcg
bm90IGRlc2NyaWJlZCBpbiAncjEwMF9jc19wYWNrZXRfcGFyc2VfdmxpbmUnCj4gIGRyaXZlcnMv
Z3B1L2RybS9yYWRlb24vcjEwMC5jOjE0MjU6IHdhcm5pbmc6IEV4Y2VzcyBmdW5jdGlvbiBwYXJh
bWV0ZXIgJ3BhcnNlcicgZGVzY3JpcHRpb24gaW4gJ3IxMDBfY3NfcGFja2V0X3BhcnNlX3ZsaW5l
Jwo+Cj4gQ2M6IEFsZXggRGV1Y2hlciA8YWxleGFuZGVyLmRldWNoZXJAYW1kLmNvbT4KPiBDYzog
IkNocmlzdGlhbiBLw7ZuaWciIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+Cj4gQ2M6IERhdmlk
IEFpcmxpZSA8YWlybGllZEBsaW51eC5pZT4KPiBDYzogRGFuaWVsIFZldHRlciA8ZGFuaWVsQGZm
d2xsLmNoPgo+IENjOiBTdW1pdCBTZW13YWwgPHN1bWl0LnNlbXdhbEBsaW5hcm8ub3JnPgo+IENj
OiBhbWQtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+IENjOiBkcmktZGV2ZWxAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCj4gQ2M6IGxpbnV4LW1lZGlhQHZnZXIua2VybmVsLm9yZwo+IENjOiBsaW5h
cm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKPiBTaWduZWQtb2ZmLWJ5OiBMZWUgSm9uZXMgPGxl
ZS5qb25lc0BsaW5hcm8ub3JnPgoKQXBwbGllZCB3aXRoIG1pbm9yIGZpeHVwLiBUaGFua3MhCgpB
bGV4Cgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vcmFkZW9uL3IxMDAuYyB8IDcgKysrKy0tLQo+
ICAxIGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQo+Cj4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9yYWRlb24vcjEwMC5jIGIvZHJpdmVycy9ncHUvZHJt
L3JhZGVvbi9yMTAwLmMKPiBpbmRleCAyNGM4ZGI2NzM5MzFhLi45MjA3NWRlZGYyY2IyIDEwMDY0
NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9yYWRlb24vcjEwMC5jCj4gKysrIGIvZHJpdmVycy9n
cHUvZHJtL3JhZGVvbi9yMTAwLmMKPiBAQCAtMTUzLDYgKzE1Myw3IEBAIHZvaWQgcjEwMF93YWl0
X2Zvcl92Ymxhbmsoc3RydWN0IHJhZGVvbl9kZXZpY2UgKnJkZXYsIGludCBjcnRjKQo+ICAgKiBA
cmRldjogcmFkZW9uX2RldmljZSBwb2ludGVyCj4gICAqIEBjcnRjX2lkOiBjcnRjIHRvIGNsZWFu
dXAgcGFnZWZsaXAgb24KPiAgICogQGNydGNfYmFzZTogbmV3IGFkZHJlc3Mgb2YgdGhlIGNydGMg
KEdQVSBNQyBhZGRyZXNzKQo+ICsgKiBAYXN5bmM6IHVudXNlZAo+ICAgKgo+ICAgKiBEb2VzIHRo
ZSBhY3R1YWwgcGFnZWZsaXAgKHIxeHgtcjR4eCkuCj4gICAqIER1cmluZyB2Ymxhbmsgd2UgdGFr
ZSB0aGUgY3J0YyBsb2NrIGFuZCB3YWl0IGZvciB0aGUgdXBkYXRlX3BlbmRpbmcKPiBAQCAtODQx
LDggKzg0Miw4IEBAIHUzMiByMTAwX2dldF92YmxhbmtfY291bnRlcihzdHJ1Y3QgcmFkZW9uX2Rl
dmljZSAqcmRldiwgaW50IGNydGMpCj4KPiAgLyoqCj4gICAqIHIxMDBfcmluZ19oZHBfZmx1c2gg
LSBmbHVzaCBIb3N0IERhdGEgUGF0aCB2aWEgdGhlIHJpbmcgYnVmZmVyCj4gLSAqIHJkZXY6IHJh
ZGVvbiBkZXZpY2Ugc3RydWN0dXJlCj4gLSAqIHJpbmc6IHJpbmcgYnVmZmVyIHN0cnVjdCBmb3Ig
ZW1pdHRpbmcgcGFja2V0cwo+ICsgKiBAcmRldjogcmFkZW9uIGRldmljZSBzdHJ1Y3R1cmUKPiAr
ICogQHJpbmc6IHJpbmcgYnVmZmVyIHN0cnVjdCBmb3IgZW1pdHRpbmcgcGFja2V0cwo+ICAgKi8K
PiAgc3RhdGljIHZvaWQgcjEwMF9yaW5nX2hkcF9mbHVzaChzdHJ1Y3QgcmFkZW9uX2RldmljZSAq
cmRldiwgc3RydWN0IHJhZGVvbl9yaW5nICpyaW5nKQo+ICB7Cj4gQEAgLTE0MDksNyArMTQxMCw3
IEBAIGludCByMTAwX2NzX3BhcnNlX3BhY2tldDAoc3RydWN0IHJhZGVvbl9jc19wYXJzZXIgKnAs
Cj4KPiAgLyoqCj4gICAqIHIxMDBfY3NfcGFja2V0X25leHRfdmxpbmUoKSAtIHBhcnNlIHVzZXJz
cGFjZSBWTElORSBwYWNrZXQKPiAtICogQHBhcnNlcjogICAgICAgICAgICBwYXJzZXIgc3RydWN0
dXJlIGhvbGRpbmcgcGFyc2luZyBjb250ZXh0Lgo+ICsgKiBAcDogICAgICAgICBwYXJzZXIgc3Ry
dWN0dXJlIGhvbGRpbmcgcGFyc2luZyBjb250ZXh0Lgo+ICAgKgo+ICAgKiBVc2Vyc3BhY2Ugc2Vu
ZHMgYSBzcGVjaWFsIHNlcXVlbmNlIGZvciBWTElORSB3YWl0cy4KPiAgICogUEFDS0VUMCAtIFZM
SU5FX1NUQVJUX0VORCArIHZhbHVlCj4gLS0KPiAyLjI1LjEKPgo+IF9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gZHJpLWRldmVsIG1haWxpbmcgbGlzdAo+
IGRyaS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPiBodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaS1kZXZlbApfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5h
cm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxt
YW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
