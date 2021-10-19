Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id A11A4433506
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 19 Oct 2021 13:49:19 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C8DC2607FB
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 19 Oct 2021 11:49:17 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id BF86E6064E; Tue, 19 Oct 2021 11:49:17 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C11A36057D;
	Tue, 19 Oct 2021 11:49:13 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 60A29603A7
 for <linaro-mm-sig@lists.linaro.org>; Tue, 19 Oct 2021 11:49:12 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 5E6F36057C; Tue, 19 Oct 2021 11:49:12 +0000 (UTC)
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com
 [209.85.128.48])
 by lists.linaro.org (Postfix) with ESMTPS id 53BCC603A7
 for <linaro-mm-sig@lists.linaro.org>; Tue, 19 Oct 2021 11:49:10 +0000 (UTC)
Received: by mail-wm1-f48.google.com with SMTP id g2so11636429wme.4
 for <linaro-mm-sig@lists.linaro.org>; Tue, 19 Oct 2021 04:49:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=egDcJzLzf/Uxj848Ty7/5BUuy3wZZ0YFuTvjxwcidJg=;
 b=K7mF4Ax5bWuDd0p6uv/wHlHOVoQSEMRCzONmjR/o+WxERYIScG9mhePG9bMfay2nwa
 ARVpJsXLoaJ66xrGmSHd7EFFGapPdLdy/HMS6xnrbnCCvGXXHrNMONVuKWa8SLVPJlb4
 1TmEIRHm6JFqXxgOyqffMcsnOBPskflIV/mbuu/AnKSdTIy9wl1VgCbXXdiXfY29HGQW
 zv1mXdWq810MjhVw15AZ9CwqY6AX2635RzkXLG8I8p+nACvX8ZKKu2FPQqg2XX1ROvfz
 T3XOgcs0jBiIaEHVB7sAu29WUYkvGya6Sq86+tILgdbopVFixVCKm98UiMQomhMSO8+E
 55fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=egDcJzLzf/Uxj848Ty7/5BUuy3wZZ0YFuTvjxwcidJg=;
 b=D3u6p/iy+obORUmmTqNOQigUiZnp98M/K6aH0S4Qfv8TJPuQXLlgCKAVuK94NeCOy9
 2QlT1r1XU+Z9WWNTPo92i+wRyAAKORSxVU2Alv85yOVwVqemwCHlrTir2fDLTyfJ5GJx
 IcM4knUxauxhhXGjyV1tz4rCvxYkosej3XctObUOphRqsjjzae9Uijkufv6QU0FO2kvQ
 sAjUZvD5UQ+FnbYEMgQpFbGgqTqw7Td0oC8GtnhxrOz4nefpNDA+k+IFqd2h+uLZNDbu
 OarOIc7jR+YT+UArp5JfTxRcWefA06EiMt2ExAEP8XllZQmkChynY9zXaA/iuHY5vDCD
 4i5Q==
X-Gm-Message-State: AOAM530tGleQ9U4w43UrFY0TcM1mDPIKpixvOhbuDA9kSA7m+DdX/J1n
 yxnb6gJ06wMu25EsusvRLpU=
X-Google-Smtp-Source: ABdhPJy+IdMIzL2VFAVUXSkXWGgmJQypeQj8T16niNgUpDzi2GSZ+eSOF1fnyhlmfHh4rbR9QfeFbw==
X-Received: by 2002:a05:600c:a0b:: with SMTP id
 z11mr5704474wmp.147.1634644149444; 
 Tue, 19 Oct 2021 04:49:09 -0700 (PDT)
Received: from ?IPv6:2a02:908:1252:fb60:f344:748e:38f7:c50?
 ([2a02:908:1252:fb60:f344:748e:38f7:c50])
 by smtp.gmail.com with ESMTPSA id a2sm15169311wru.82.2021.10.19.04.49.08
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 19 Oct 2021 04:49:09 -0700 (PDT)
To: Daniel Vetter <daniel@ffwll.ch>
References: <20211005113742.1101-1-christian.koenig@amd.com>
 <20211005113742.1101-15-christian.koenig@amd.com>
 <YWbp1PoezuLqHpKZ@phenom.ffwll.local>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <9fff1e2b-b4f1-9c36-b621-4c896bf58c01@gmail.com>
Date: Tue, 19 Oct 2021 13:49:08 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <YWbp1PoezuLqHpKZ@phenom.ffwll.local>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH 14/28] drm/msm: use new iterator in
 msm_gem_describe
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
Cc: linaro-mm-sig@lists.linaro.org, tvrtko.ursulin@linux.intel.com,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

QW0gMTMuMTAuMjEgdW0gMTY6MTQgc2NocmllYiBEYW5pZWwgVmV0dGVyOgo+IE9uIFR1ZSwgT2N0
IDA1LCAyMDIxIGF0IDAxOjM3OjI4UE0gKzAyMDAsIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6Cj4+
IFNpbXBsaWZ5aW5nIHRoZSBjb2RlIGEgYml0LiBBbHNvIGRyb3AgdGhlIFJDVSByZWFkIHNpZGUg
bG9jayBzaW5jZSB0aGUKPj4gb2JqZWN0IGlzIGxvY2tlZCBhbnl3YXkuCj4+Cj4+IFVudGVzdGVk
IHNpbmNlIEkgY2FuJ3QgZ2V0IHRoZSBkcml2ZXIgdG8gY29tcGlsZSBvbiAhQVJNLgo+IENyb3Nz
LWNvbXBpbGVyIGluc3RhbGwgaXMgcHJldHR5IGVhc3kgYW5kIHlvdSBzaG91bGQgaGF2ZSB0aGF0
IGZvciBwdXNoaW5nCj4gZHJtIGNoYW5nZXMgdG8gZHJtLW1pc2MgOi0pCgpJIGRvIGhhdmUgY3Jv
c3MgY29tcGlsZSBzZXR1cHMgZm9yIHNvbWUgYXJjaGl0ZWN0dXJlcywgYnV0IEkgc2VyaW91c2x5
IApjYW4ndCBkbyB0aGF0IGZvciBldmVyeSBzaW5nbGUgZHJpdmVyLgoKV2l0aCBvbmx5IGEgYml0
IG9mIHdvcmsgd2UgYWxsb3dlZCBNU00gdG8gYmUgY29tcGlsZSB0ZXN0ZWQgb24gb3RoZXIgCmFy
Y2hpdGVjdHVyZXMgYXMgd2VsbCBub3cuIFRoYXQgZXZlbiB5aWVsZGVkIGEgY291cGxlIG9mIG1p
c3NpbmcgCmluY2x1ZGVzIGFuZCBkZXBlbmRlbmNpZXMgaW4gTVNNIHdoaWNoIGp1c3QgZG9uJ3Qg
bWF0dGVyIG9uIEFSTS4KCj4KPj4gU2lnbmVkLW9mZi1ieTogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hy
aXN0aWFuLmtvZW5pZ0BhbWQuY29tPgo+IEFzc3VtaW5nIHRoaXMgY29tcGlsZXMsIGl0IGxvb2tz
IGNvcnJlY3QuCgpZZXMgaXQgZG9lcy4KCj4KPiBSZXZpZXdlZC1ieTogRGFuaWVsIFZldHRlciA8
ZGFuaWVsLnZldHRlckBmZndsbC5jaD4KCgpUaGFua3MsCkNocmlzdGlhbi4KCj4KPj4gLS0tCj4+
ICAgZHJpdmVycy9ncHUvZHJtL21zbS9tc21fZ2VtLmMgfCAxOSArKysrKy0tLS0tLS0tLS0tLS0t
Cj4+ICAgMSBmaWxlIGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygrKSwgMTQgZGVsZXRpb25zKC0pCj4+
Cj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vbXNtL21zbV9nZW0uYyBiL2RyaXZlcnMv
Z3B1L2RybS9tc20vbXNtX2dlbS5jCj4+IGluZGV4IDQwYTk4NjNmNTk1MS4uNWJkNTExZjA3YzA3
IDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vbXNtL21zbV9nZW0uYwo+PiArKysgYi9k
cml2ZXJzL2dwdS9kcm0vbXNtL21zbV9nZW0uYwo+PiBAQCAtODgwLDcgKzg4MCw3IEBAIHZvaWQg
bXNtX2dlbV9kZXNjcmliZShzdHJ1Y3QgZHJtX2dlbV9vYmplY3QgKm9iaiwgc3RydWN0IHNlcV9m
aWxlICptLAo+PiAgIHsKPj4gICAJc3RydWN0IG1zbV9nZW1fb2JqZWN0ICptc21fb2JqID0gdG9f
bXNtX2JvKG9iaik7Cj4+ICAgCXN0cnVjdCBkbWFfcmVzdiAqcm9iaiA9IG9iai0+cmVzdjsKPj4g
LQlzdHJ1Y3QgZG1hX3Jlc3ZfbGlzdCAqZm9iajsKPj4gKwlzdHJ1Y3QgZG1hX3Jlc3ZfaXRlciBj
dXJzb3I7Cj4+ICAgCXN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlOwo+PiAgIAlzdHJ1Y3QgbXNtX2dl
bV92bWEgKnZtYTsKPj4gICAJdWludDY0X3Qgb2ZmID0gZHJtX3ZtYV9ub2RlX3N0YXJ0KCZvYmot
PnZtYV9ub2RlKTsKPj4gQEAgLTk1NSwyMiArOTU1LDEzIEBAIHZvaWQgbXNtX2dlbV9kZXNjcmli
ZShzdHJ1Y3QgZHJtX2dlbV9vYmplY3QgKm9iaiwgc3RydWN0IHNlcV9maWxlICptLAo+PiAgIAkJ
c2VxX3B1dHMobSwgIlxuIik7Cj4+ICAgCX0KPj4gICAKPj4gLQlyY3VfcmVhZF9sb2NrKCk7Cj4+
IC0JZm9iaiA9IGRtYV9yZXN2X3NoYXJlZF9saXN0KHJvYmopOwo+PiAtCWlmIChmb2JqKSB7Cj4+
IC0JCXVuc2lnbmVkIGludCBpLCBzaGFyZWRfY291bnQgPSBmb2JqLT5zaGFyZWRfY291bnQ7Cj4+
IC0KPj4gLQkJZm9yIChpID0gMDsgaSA8IHNoYXJlZF9jb3VudDsgaSsrKSB7Cj4+IC0JCQlmZW5j
ZSA9IHJjdV9kZXJlZmVyZW5jZShmb2JqLT5zaGFyZWRbaV0pOwo+PiArCWRtYV9yZXN2X2Zvcl9l
YWNoX2ZlbmNlKCZjdXJzb3IsIHJvYmosIHRydWUsIGZlbmNlKSB7Cj4+ICsJCWlmIChkbWFfcmVz
dl9pdGVyX2lzX2V4Y2x1c2l2ZSgmY3Vyc29yKSkKPj4gKwkJCWRlc2NyaWJlX2ZlbmNlKGZlbmNl
LCAiRXhjbHVzaXZlIiwgbSk7Cj4+ICsJCWVsc2UKPj4gICAJCQlkZXNjcmliZV9mZW5jZShmZW5j
ZSwgIlNoYXJlZCIsIG0pOwo+PiAtCQl9Cj4+ICAgCX0KPj4gICAKPj4gLQlmZW5jZSA9IGRtYV9y
ZXN2X2V4Y2xfZmVuY2Uocm9iaik7Cj4+IC0JaWYgKGZlbmNlKQo+PiAtCQlkZXNjcmliZV9mZW5j
ZShmZW5jZSwgIkV4Y2x1c2l2ZSIsIG0pOwo+PiAtCXJjdV9yZWFkX3VubG9jaygpOwo+PiAtCj4+
ICAgCW1zbV9nZW1fdW5sb2NrKG9iaik7Cj4+ICAgfQo+PiAgIAo+PiAtLSAKPj4gMi4yNS4xCj4+
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8t
bW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6
Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
