Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id E04C84239B3
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  6 Oct 2021 10:24:32 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 40EB461189
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  6 Oct 2021 08:24:30 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 17FCF6109D; Wed,  6 Oct 2021 08:24:29 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0FA466109D;
	Wed,  6 Oct 2021 08:24:27 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id C568660FBF
 for <linaro-mm-sig@lists.linaro.org>; Wed,  6 Oct 2021 08:24:25 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id C30646109D; Wed,  6 Oct 2021 08:24:25 +0000 (UTC)
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com
 [209.85.221.47])
 by lists.linaro.org (Postfix) with ESMTPS id B9A3B60FBF
 for <linaro-mm-sig@lists.linaro.org>; Wed,  6 Oct 2021 08:24:23 +0000 (UTC)
Received: by mail-wr1-f47.google.com with SMTP id j8so6244081wro.7
 for <linaro-mm-sig@lists.linaro.org>; Wed, 06 Oct 2021 01:24:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=subject:from:to:cc:references:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=bRu/Ff9Ir38OPXGTArHMIziqICHLOKILZrD4xpaYf/Q=;
 b=R+yfWP9qxbK9aHMSr5GWkjaYWvXsWrI0XNXGmiYU1bNPIbXvX6GkBU+j+/KL03S0UR
 swM/2xWcv2R/clqSJrml8rq1s28Aot+92k/wDrwCaV5bUO19ZAVQkVerRH64gg9ZAuAC
 ViHDpR2aYhCEfaifhiujozwCq0xAGLQuYJoRUkkA0wNZivsq9fD4EHPKGUsJxsamJ4ay
 IcDDP6YuRdIYRzq+gL4HtoXpQQzj5BraPHWULbCEIWswVGF6w5TdfZ6wV2Vnub/C6+AX
 FyB5iGET/WHyCDwTnIwEI5Z3STdwUOY66PieAlzMGSZOJU1/PwcosK96oSJPxjy/O2SI
 kNOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:subject:from:to:cc:references:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=bRu/Ff9Ir38OPXGTArHMIziqICHLOKILZrD4xpaYf/Q=;
 b=IE4126j9igTNJ4NeS66hLpFCPQktx/GjCHHgKwy3kqP9FAVcSyigdw7Oe0FCs4/5+G
 NCVP1aQSvzR5evdT41z44XJPpNvS/KIrWZXtKibFLbbj9W3cfO6D9J/xd19EeVzdfcM9
 u1Vo0LD7C5Bi8BzdFl9i5EFhEJyBaX3Lkd90vOLBg2y59qSJAg1O6epWcPzP6t4hrxvJ
 o8ixm/VZviduaLQr7TZ/8O9BiAnCfIhnL91J+F/idtObZnYf3Qt52syS6Z8Oz/QNC863
 nXPgQaga2K4LTs2tEcT0Dnua13D70TwgZIyW7szGeQosGagA+jbeg5LXVUh2rK8i9qsE
 LD/A==
X-Gm-Message-State: AOAM532LN7w34A/fxP1DDnLi+zUgsDvURzfRn9NHzUJfTl8Mas1tM0M6
 cKYBXUVwMN1DDBu5l+njSa8=
X-Google-Smtp-Source: ABdhPJwSKB9J69MYCyfYWofckhT3E2FNK+4DeytJ3TbkoGWD45VMLJp8ZTF6S4Pcir1KcpDXDOSOkA==
X-Received: by 2002:a05:600c:a43:: with SMTP id
 c3mr8351784wmq.193.1633508662785; 
 Wed, 06 Oct 2021 01:24:22 -0700 (PDT)
Received: from [192.168.178.21] (p5b0ea1b5.dip0.t-ipconnect.de.
 [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id h18sm5176825wmq.23.2021.10.06.01.24.21
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 06 Oct 2021 01:24:22 -0700 (PDT)
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>
To: "tvrtko.ursulin@linux.intel.com >> Tvrtko Ursulin"
 <tvrtko.ursulin@linux.intel.com>
References: <20211005113742.1101-1-christian.koenig@amd.com>
 <20211005113742.1101-3-christian.koenig@amd.com>
Message-ID: <3b946100-cf70-ff83-e090-2d8cbbc52fd6@gmail.com>
Date: Wed, 6 Oct 2021 10:24:20 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20211005113742.1101-3-christian.koenig@amd.com>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH 02/28] dma-buf: add
 dma_resv_for_each_fence v2
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
Cc: "linaro-mm-sig@lists.linaro.org" <linaro-mm-sig@lists.linaro.org>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 dri-devel <dri-devel@lists.freedesktop.org>, daniel@ffwll.ch,
 linux-media <linux-media@vger.kernel.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

R29vZCBtb3JuaW5nLCBjb3VsZCBJIGdldCBhbiByYiBmb3IgdGhhdCBwYXRjaCBoZXJlIGFzIHdl
bGw/CgpJJ3ZlIHB1c2hlZCB0aGUgZmlyc3QgZmV3IHdpdGggRGFuaWVsJ3MgYW5kIHlvdXIgcmJz
LCBidXQgdGhpcyBvbmUgaGVyZSAKaXMgYmxvY2tpbmcgYWxsIHRoZSByZXN0LgoKVGhhbmtzLApD
aHJpc3RpYW4uCgpBbSAwNS4xMC4yMSB1bSAxMzozNyBzY2hyaWViIENocmlzdGlhbiBLw7ZuaWc6
Cj4gQSBzaW1wbGVyIHZlcnNpb24gb2YgdGhlIGl0ZXJhdG9yIHRvIGJlIHVzZWQgd2hlbiB0aGUg
ZG1hX3Jlc3Ygb2JqZWN0IGlzCj4gbG9ja2VkLgo+Cj4gdjI6IGZpeCBpbmRleCBjaGVjayBoZXJl
IGFzIHdlbGwKPgo+IFNpZ25lZC1vZmYtYnk6IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5r
b2VuaWdAYW1kLmNvbT4KPiAtLS0KPiAgIGRyaXZlcnMvZG1hLWJ1Zi9kbWEtcmVzdi5jIHwgNDkg
KysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysKPiAgIGluY2x1ZGUvbGludXgv
ZG1hLXJlc3YuaCAgIHwgMTkgKysrKysrKysrKysrKysrCj4gICAyIGZpbGVzIGNoYW5nZWQsIDY4
IGluc2VydGlvbnMoKykKPgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2RtYS1idWYvZG1hLXJlc3Yu
YyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtcmVzdi5jCj4gaW5kZXggM2NiY2Y2NmExMzdlLi4yMzFi
YWUxNzNlZjEgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9kbWEtYnVmL2RtYS1yZXN2LmMKPiArKysg
Yi9kcml2ZXJzL2RtYS1idWYvZG1hLXJlc3YuYwo+IEBAIC00MjMsNiArNDIzLDU1IEBAIHN0cnVj
dCBkbWFfZmVuY2UgKmRtYV9yZXN2X2l0ZXJfbmV4dF91bmxvY2tlZChzdHJ1Y3QgZG1hX3Jlc3Zf
aXRlciAqY3Vyc29yKQo+ICAgfQo+ICAgRVhQT1JUX1NZTUJPTChkbWFfcmVzdl9pdGVyX25leHRf
dW5sb2NrZWQpOwo+ICAgCj4gKy8qKgo+ICsgKiBkbWFfcmVzdl9pdGVyX2ZpcnN0IC0gZmlyc3Qg
ZmVuY2UgZnJvbSBhIGxvY2tlZCBkbWFfcmVzdiBvYmplY3QKPiArICogQGN1cnNvcjogY3Vyc29y
IHRvIHJlY29yZCB0aGUgY3VycmVudCBwb3NpdGlvbgo+ICsgKgo+ICsgKiBSZXR1cm4gYWxsIHRo
ZSBmZW5jZXMgaW4gdGhlIGRtYV9yZXN2IG9iamVjdCB3aGlsZSBob2xkaW5nIHRoZQo+ICsgKiAm
ZG1hX3Jlc3YubG9jay4KPiArICovCj4gK3N0cnVjdCBkbWFfZmVuY2UgKmRtYV9yZXN2X2l0ZXJf
Zmlyc3Qoc3RydWN0IGRtYV9yZXN2X2l0ZXIgKmN1cnNvcikKPiArewo+ICsJc3RydWN0IGRtYV9m
ZW5jZSAqZmVuY2U7Cj4gKwo+ICsJZG1hX3Jlc3ZfYXNzZXJ0X2hlbGQoY3Vyc29yLT5vYmopOwo+
ICsKPiArCWN1cnNvci0+aW5kZXggPSAwOwo+ICsJY3Vyc29yLT5mZW5jZXMgPSBkbWFfcmVzdl9z
aGFyZWRfbGlzdChjdXJzb3ItPm9iaik7Cj4gKwo+ICsJZmVuY2UgPSBkbWFfcmVzdl9leGNsX2Zl
bmNlKGN1cnNvci0+b2JqKTsKPiArCWlmICghZmVuY2UpCj4gKwkJZmVuY2UgPSBkbWFfcmVzdl9p
dGVyX25leHQoY3Vyc29yKTsKPiArCj4gKwljdXJzb3ItPmlzX3Jlc3RhcnRlZCA9IHRydWU7Cj4g
KwlyZXR1cm4gZmVuY2U7Cj4gK30KPiArRVhQT1JUX1NZTUJPTF9HUEwoZG1hX3Jlc3ZfaXRlcl9m
aXJzdCk7Cj4gKwo+ICsvKioKPiArICogZG1hX3Jlc3ZfaXRlcl9uZXh0IC0gbmV4dCBmZW5jZSBm
cm9tIGEgbG9ja2VkIGRtYV9yZXN2IG9iamVjdAo+ICsgKiBAY3Vyc29yOiBjdXJzb3IgdG8gcmVj
b3JkIHRoZSBjdXJyZW50IHBvc2l0aW9uCj4gKyAqCj4gKyAqIFJldHVybiBhbGwgdGhlIGZlbmNl
cyBpbiB0aGUgZG1hX3Jlc3Ygb2JqZWN0IHdoaWxlIGhvbGRpbmcgdGhlCj4gKyAqICZkbWFfcmVz
di5sb2NrLgo+ICsgKi8KPiArc3RydWN0IGRtYV9mZW5jZSAqZG1hX3Jlc3ZfaXRlcl9uZXh0KHN0
cnVjdCBkbWFfcmVzdl9pdGVyICpjdXJzb3IpCj4gK3sKPiArCXVuc2lnbmVkIGludCBpZHg7Cj4g
Kwo+ICsJZG1hX3Jlc3ZfYXNzZXJ0X2hlbGQoY3Vyc29yLT5vYmopOwo+ICsKPiArCWN1cnNvci0+
aXNfcmVzdGFydGVkID0gZmFsc2U7Cj4gKwlpZiAoIWN1cnNvci0+YWxsX2ZlbmNlcyB8fCAhY3Vy
c29yLT5mZW5jZXMgfHwKPiArCSAgICBjdXJzb3ItPmluZGV4ID49IGN1cnNvci0+ZmVuY2VzLT5z
aGFyZWRfY291bnQpCj4gKwkJcmV0dXJuIE5VTEw7Cj4gKwo+ICsJaWR4ID0gY3Vyc29yLT5pbmRl
eCsrOwo+ICsJcmV0dXJuIHJjdV9kZXJlZmVyZW5jZV9wcm90ZWN0ZWQoY3Vyc29yLT5mZW5jZXMt
PnNoYXJlZFtpZHhdLAo+ICsJCQkJCSBkbWFfcmVzdl9oZWxkKGN1cnNvci0+b2JqKSk7Cj4gK30K
PiArRVhQT1JUX1NZTUJPTF9HUEwoZG1hX3Jlc3ZfaXRlcl9uZXh0KTsKPiArCj4gICAvKioKPiAg
ICAqIGRtYV9yZXN2X2NvcHlfZmVuY2VzIC0gQ29weSBhbGwgZmVuY2VzIGZyb20gc3JjIHRvIGRz
dC4KPiAgICAqIEBkc3Q6IHRoZSBkZXN0aW5hdGlvbiByZXNlcnZhdGlvbiBvYmplY3QKPiBkaWZm
IC0tZ2l0IGEvaW5jbHVkZS9saW51eC9kbWEtcmVzdi5oIGIvaW5jbHVkZS9saW51eC9kbWEtcmVz
di5oCj4gaW5kZXggNzY0MTM4YWQ4NTgzLi4zZGY3ZWYyMzcxMmQgMTAwNjQ0Cj4gLS0tIGEvaW5j
bHVkZS9saW51eC9kbWEtcmVzdi5oCj4gKysrIGIvaW5jbHVkZS9saW51eC9kbWEtcmVzdi5oCj4g
QEAgLTE3OSw2ICsxNzksOCBAQCBzdHJ1Y3QgZG1hX3Jlc3ZfaXRlciB7Cj4gICAKPiAgIHN0cnVj
dCBkbWFfZmVuY2UgKmRtYV9yZXN2X2l0ZXJfZmlyc3RfdW5sb2NrZWQoc3RydWN0IGRtYV9yZXN2
X2l0ZXIgKmN1cnNvcik7Cj4gICBzdHJ1Y3QgZG1hX2ZlbmNlICpkbWFfcmVzdl9pdGVyX25leHRf
dW5sb2NrZWQoc3RydWN0IGRtYV9yZXN2X2l0ZXIgKmN1cnNvcik7Cj4gK3N0cnVjdCBkbWFfZmVu
Y2UgKmRtYV9yZXN2X2l0ZXJfZmlyc3Qoc3RydWN0IGRtYV9yZXN2X2l0ZXIgKmN1cnNvcik7Cj4g
K3N0cnVjdCBkbWFfZmVuY2UgKmRtYV9yZXN2X2l0ZXJfbmV4dChzdHJ1Y3QgZG1hX3Jlc3ZfaXRl
ciAqY3Vyc29yKTsKPiAgIAo+ICAgLyoqCj4gICAgKiBkbWFfcmVzdl9pdGVyX2JlZ2luIC0gaW5p
dGlhbGl6ZSBhIGRtYV9yZXN2X2l0ZXIgb2JqZWN0Cj4gQEAgLTI0NCw2ICsyNDYsMjMgQEAgc3Rh
dGljIGlubGluZSBib29sIGRtYV9yZXN2X2l0ZXJfaXNfcmVzdGFydGVkKHN0cnVjdCBkbWFfcmVz
dl9pdGVyICpjdXJzb3IpCj4gICAJZm9yIChmZW5jZSA9IGRtYV9yZXN2X2l0ZXJfZmlyc3RfdW5s
b2NrZWQoY3Vyc29yKTsJCVwKPiAgIAkgICAgIGZlbmNlOyBmZW5jZSA9IGRtYV9yZXN2X2l0ZXJf
bmV4dF91bmxvY2tlZChjdXJzb3IpKQo+ICAgCj4gKy8qKgo+ICsgKiBkbWFfcmVzdl9mb3JfZWFj
aF9mZW5jZSAtIGZlbmNlIGl0ZXJhdG9yCj4gKyAqIEBjdXJzb3I6IGEgc3RydWN0IGRtYV9yZXN2
X2l0ZXIgcG9pbnRlcgo+ICsgKiBAb2JqOiBhIGRtYV9yZXN2IG9iamVjdCBwb2ludGVyCj4gKyAq
IEBhbGxfZmVuY2VzOiB0cnVlIGlmIGFsbCBmZW5jZXMgc2hvdWxkIGJlIHJldHVybmVkCj4gKyAq
IEBmZW5jZTogdGhlIGN1cnJlbnQgZmVuY2UKPiArICoKPiArICogSXRlcmF0ZSBvdmVyIHRoZSBm
ZW5jZXMgaW4gYSBzdHJ1Y3QgZG1hX3Jlc3Ygb2JqZWN0IHdoaWxlIGhvbGRpbmcgdGhlCj4gKyAq
ICZkbWFfcmVzdi5sb2NrLiBAYWxsX2ZlbmNlcyBjb250cm9scyBpZiB0aGUgc2hhcmVkIGZlbmNl
cyBhcmUgcmV0dXJuZWQgYXMKPiArICogd2VsbC4gVGhlIGN1cnNvciBpbml0aWFsaXNhdGlvbiBp
cyBwYXJ0IG9mIHRoZSBpdGVyYXRvciBhbmQgdGhlIGZlbmNlIHN0YXlzCj4gKyAqIHZhbGlkIGFz
IGxvbmcgYXMgdGhlIGxvY2sgaXMgaGVsZC4KPiArICovCj4gKyNkZWZpbmUgZG1hX3Jlc3ZfZm9y
X2VhY2hfZmVuY2UoY3Vyc29yLCBvYmosIGFsbF9mZW5jZXMsIGZlbmNlKQlcCj4gKwlmb3IgKGRt
YV9yZXN2X2l0ZXJfYmVnaW4oY3Vyc29yLCBvYmosIGFsbF9mZW5jZXMpLAlcCj4gKwkgICAgIGZl
bmNlID0gZG1hX3Jlc3ZfaXRlcl9maXJzdChjdXJzb3IpOyBmZW5jZTsJXAo+ICsJICAgICBmZW5j
ZSA9IGRtYV9yZXN2X2l0ZXJfbmV4dChjdXJzb3IpKQo+ICsKPiAgICNkZWZpbmUgZG1hX3Jlc3Zf
aGVsZChvYmopIGxvY2tkZXBfaXNfaGVsZCgmKG9iaiktPmxvY2suYmFzZSkKPiAgICNkZWZpbmUg
ZG1hX3Jlc3ZfYXNzZXJ0X2hlbGQob2JqKSBsb2NrZGVwX2Fzc2VydF9oZWxkKCYob2JqKS0+bG9j
ay5iYXNlKQo+ICAgCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFy
by5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1t
LXNpZwo=
