Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id C790140D8A0
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Sep 2021 13:31:24 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id AC1C466807
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Sep 2021 11:31:22 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 14A0663636; Thu, 16 Sep 2021 11:31:11 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 676396321B;
	Thu, 16 Sep 2021 11:31:06 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id AFBF36322E
 for <linaro-mm-sig@lists.linaro.org>; Thu, 16 Sep 2021 11:30:53 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id F371D63223; Thu, 16 Sep 2021 11:30:52 +0000 (UTC)
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com
 [209.85.221.42])
 by lists.linaro.org (Postfix) with ESMTPS id 9FC196242B
 for <linaro-mm-sig@lists.linaro.org>; Thu, 16 Sep 2021 11:30:50 +0000 (UTC)
Received: by mail-wr1-f42.google.com with SMTP id d21so8889283wra.12
 for <linaro-mm-sig@lists.linaro.org>; Thu, 16 Sep 2021 04:30:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=qtmlO413yj3/X7KD0lHveLpvVJwGO76Kiide216asC4=;
 b=pBH9OW9RXHjAXv6756IYEn28oYG9StlbNwM4l8uaixqrDE8n2tTBfuMXTw6P0KZMvQ
 eOw0F4dUF2zZAKmn2aYLLH0CYMxzQGYed2pTA0kMkeo3FM8beKwukv7TjLbet9J1CdAw
 2HXke1Wx2fJmsv+fDics2PRLJogFhjzLbLzuO6LZttwFmb8zrti5Tl2Oeul/5RpeLksM
 FwEaLm3vxzHtSP/SFp0q6Xz3cNhcpfcr8psgkCvp4bgQSYE2yiQ+2lKyzwjjKr4hGHMT
 dRFbHMhvoLgBzVi581snZwmQyp2uKIZZhOK3uLqPqNTI/uw0G19L/C2+fWFYTPAI/V3Y
 ofCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=qtmlO413yj3/X7KD0lHveLpvVJwGO76Kiide216asC4=;
 b=odfT0ao0Mw+SX5rZS6nLsu4vKsrWdUqIkaU1HsErFVdgwPz5Ku6VR5pAmOfKCR2Yw2
 6MmM92JcVGV3JfRTAa28xGfKPbNNC4UrLfH7OW+g7tt1pIaEBmYVztDVRJgLqUCeVYox
 KkrNOfEsrnYmtwkx7/rKmtAc/Q6B6wOl0jtII6Btz6xHpPoeCOTNq1KP01+TEqVZxlby
 CLX75h9LjaNHCM3VG0rXAdE11UgsroUxSaS4PL1VDRAoVEeb60cvkhVlfTsSZdefgCGN
 ho1bmupM1huv/bsIE3+30d7t4RRDrPTBECl+sjRJcsSYb6w67OTgau7zxkPEBHskdj95
 YqOw==
X-Gm-Message-State: AOAM5333O1le+VullVwOWVCt2hGSkjxHwZWY4AX+tX2KGmyui6+ngGwW
 UH/b6JTtubCCze2SYA2si3vnp0YDy1gDhT51
X-Google-Smtp-Source: ABdhPJwU8W3gDpAkB3c368BsKqC/kHLjObVUyyjtU7xQoZmk2Om8w1eCgx0uwrMipzh+WwdrHD/ESg==
X-Received: by 2002:adf:e6c9:: with SMTP id y9mr5581411wrm.430.1631791849534; 
 Thu, 16 Sep 2021 04:30:49 -0700 (PDT)
Received: from abel.fritz.box (p5b0ea1b5.dip0.t-ipconnect.de. [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id
 c17sm3803674wrn.54.2021.09.16.04.30.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 16 Sep 2021 04:30:49 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, intel-gfx@lists.freedesktop.org
Date: Thu, 16 Sep 2021 13:30:20 +0200
Message-Id: <20210916113042.3631-5-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210916113042.3631-1-christian.koenig@amd.com>
References: <20210916113042.3631-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 04/26] dma-buf: use new iterator in
 dma_resv_get_fences v2
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
Cc: tvrtko.ursulin@linux.intel.com, daniel@ffwll.ch
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

VGhpcyBtYWtlcyB0aGUgZnVuY3Rpb24gbXVjaCBzaW1wbGVyIHNpbmNlIHRoZSBjb21wbGV4CnJl
dHJ5IGxvZ2ljIGlzIG5vdyBoYW5kbGVkIGVsc2V3aGVyZS4KCnYyOiB1c2Ugc2l6ZW9mKHZvaWQq
KSBpbnN0ZWFkCgpTaWduZWQtb2ZmLWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29l
bmlnQGFtZC5jb20+Ci0tLQogZHJpdmVycy9kbWEtYnVmL2RtYS1yZXN2LmMgfCAxMTAgKysrKysr
KysrKysrKy0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDM3IGluc2Vy
dGlvbnMoKyksIDczIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZG1hLWJ1Zi9k
bWEtcmVzdi5jIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1yZXN2LmMKaW5kZXggOTFjMDQwY2I3ZDYz
Li5iYmEzMjg0NzUzMDQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtcmVzdi5jCisr
KyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtcmVzdi5jCkBAIC00OTEsOTkgKzQ5MSw2MyBAQCBFWFBP
UlRfU1lNQk9MKGRtYV9yZXN2X2NvcHlfZmVuY2VzKTsKICAqIGRtYV9yZXN2X2dldF9mZW5jZXMg
LSBHZXQgYW4gb2JqZWN0J3Mgc2hhcmVkIGFuZCBleGNsdXNpdmUKICAqIGZlbmNlcyB3aXRob3V0
IHVwZGF0ZSBzaWRlIGxvY2sgaGVsZAogICogQG9iajogdGhlIHJlc2VydmF0aW9uIG9iamVjdAot
ICogQHBmZW5jZV9leGNsOiB0aGUgcmV0dXJuZWQgZXhjbHVzaXZlIGZlbmNlIChvciBOVUxMKQot
ICogQHBzaGFyZWRfY291bnQ6IHRoZSBudW1iZXIgb2Ygc2hhcmVkIGZlbmNlcyByZXR1cm5lZAot
ICogQHBzaGFyZWQ6IHRoZSBhcnJheSBvZiBzaGFyZWQgZmVuY2UgcHRycyByZXR1cm5lZCAoYXJy
YXkgaXMga3JlYWxsb2MnZCB0bworICogQGZlbmNlX2V4Y2w6IHRoZSByZXR1cm5lZCBleGNsdXNp
dmUgZmVuY2UgKG9yIE5VTEwpCisgKiBAc2hhcmVkX2NvdW50OiB0aGUgbnVtYmVyIG9mIHNoYXJl
ZCBmZW5jZXMgcmV0dXJuZWQKKyAqIEBzaGFyZWQ6IHRoZSBhcnJheSBvZiBzaGFyZWQgZmVuY2Ug
cHRycyByZXR1cm5lZCAoYXJyYXkgaXMga3JlYWxsb2MnZCB0bwogICogdGhlIHJlcXVpcmVkIHNp
emUsIGFuZCBtdXN0IGJlIGZyZWVkIGJ5IGNhbGxlcikKICAqCiAgKiBSZXRyaWV2ZSBhbGwgZmVu
Y2VzIGZyb20gdGhlIHJlc2VydmF0aW9uIG9iamVjdC4gSWYgdGhlIHBvaW50ZXIgZm9yIHRoZQog
ICogZXhjbHVzaXZlIGZlbmNlIGlzIG5vdCBzcGVjaWZpZWQgdGhlIGZlbmNlIGlzIHB1dCBpbnRv
IHRoZSBhcnJheSBvZiB0aGUKICAqIHNoYXJlZCBmZW5jZXMgYXMgd2VsbC4gUmV0dXJucyBlaXRo
ZXIgemVybyBvciAtRU5PTUVNLgogICovCi1pbnQgZG1hX3Jlc3ZfZ2V0X2ZlbmNlcyhzdHJ1Y3Qg
ZG1hX3Jlc3YgKm9iaiwgc3RydWN0IGRtYV9mZW5jZSAqKnBmZW5jZV9leGNsLAotCQkJdW5zaWdu
ZWQgaW50ICpwc2hhcmVkX2NvdW50LAotCQkJc3RydWN0IGRtYV9mZW5jZSAqKipwc2hhcmVkKQor
aW50IGRtYV9yZXN2X2dldF9mZW5jZXMoc3RydWN0IGRtYV9yZXN2ICpvYmosIHN0cnVjdCBkbWFf
ZmVuY2UgKipmZW5jZV9leGNsLAorCQkJdW5zaWduZWQgaW50ICpzaGFyZWRfY291bnQsIHN0cnVj
dCBkbWFfZmVuY2UgKioqc2hhcmVkKQogewotCXN0cnVjdCBkbWFfZmVuY2UgKipzaGFyZWQgPSBO
VUxMOwotCXN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlX2V4Y2w7Ci0JdW5zaWduZWQgaW50IHNoYXJl
ZF9jb3VudDsKLQlpbnQgcmV0ID0gMTsKLQotCWRvIHsKLQkJc3RydWN0IGRtYV9yZXN2X2xpc3Qg
KmZvYmo7Ci0JCXVuc2lnbmVkIGludCBpLCBzZXE7Ci0JCXNpemVfdCBzeiA9IDA7Ci0KLQkJc2hh
cmVkX2NvdW50ID0gaSA9IDA7Ci0KLQkJcmN1X3JlYWRfbG9jaygpOwotCQlzZXEgPSByZWFkX3Nl
cWNvdW50X2JlZ2luKCZvYmotPnNlcSk7Ci0KLQkJZmVuY2VfZXhjbCA9IGRtYV9yZXN2X2V4Y2xf
ZmVuY2Uob2JqKTsKLQkJaWYgKGZlbmNlX2V4Y2wgJiYgIWRtYV9mZW5jZV9nZXRfcmN1KGZlbmNl
X2V4Y2wpKQotCQkJZ290byB1bmxvY2s7CisJc3RydWN0IGRtYV9yZXN2X2l0ZXIgY3Vyc29yOwor
CXN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlOwogCi0JCWZvYmogPSBkbWFfcmVzdl9zaGFyZWRfbGlz
dChvYmopOwotCQlpZiAoZm9iaikKLQkJCXN6ICs9IHNpemVvZigqc2hhcmVkKSAqIGZvYmotPnNo
YXJlZF9tYXg7CisJKnNoYXJlZF9jb3VudCA9IDA7CisJKnNoYXJlZCA9IE5VTEw7CiAKLQkJaWYg
KCFwZmVuY2VfZXhjbCAmJiBmZW5jZV9leGNsKQotCQkJc3ogKz0gc2l6ZW9mKCpzaGFyZWQpOwor
CWlmIChmZW5jZV9leGNsKQorCQkqZmVuY2VfZXhjbCA9IE5VTEw7CiAKLQkJaWYgKHN6KSB7Ci0J
CQlzdHJ1Y3QgZG1hX2ZlbmNlICoqbnNoYXJlZDsKKwlyY3VfcmVhZF9sb2NrKCk7CisJZG1hX3Jl
c3ZfZm9yX2VhY2hfZmVuY2VfdW5sb2NrZWQob2JqLCAmY3Vyc29yLCB0cnVlLCBmZW5jZSkgewog
Ci0JCQluc2hhcmVkID0ga3JlYWxsb2Moc2hhcmVkLCBzeiwKLQkJCQkJICAgR0ZQX05PV0FJVCB8
IF9fR0ZQX05PV0FSTik7Ci0JCQlpZiAoIW5zaGFyZWQpIHsKLQkJCQlyY3VfcmVhZF91bmxvY2so
KTsKKwkJaWYgKGN1cnNvci5pc19maXJzdCkgeworCQkJdW5zaWduZWQgaW50IGNvdW50OwogCi0J
CQkJZG1hX2ZlbmNlX3B1dChmZW5jZV9leGNsKTsKLQkJCQlmZW5jZV9leGNsID0gTlVMTDsKKwkJ
CXdoaWxlICgqc2hhcmVkX2NvdW50KQorCQkJCWRtYV9mZW5jZV9wdXQoKCpzaGFyZWQpWy0tKCpz
aGFyZWRfY291bnQpXSk7CiAKLQkJCQluc2hhcmVkID0ga3JlYWxsb2Moc2hhcmVkLCBzeiwgR0ZQ
X0tFUk5FTCk7Ci0JCQkJaWYgKG5zaGFyZWQpIHsKLQkJCQkJc2hhcmVkID0gbnNoYXJlZDsKLQkJ
CQkJY29udGludWU7Ci0JCQkJfQorCQkJaWYgKGZlbmNlX2V4Y2wpCisJCQkJZG1hX2ZlbmNlX3B1
dCgqZmVuY2VfZXhjbCk7CiAKLQkJCQlyZXQgPSAtRU5PTUVNOwotCQkJCWJyZWFrOwotCQkJfQot
CQkJc2hhcmVkID0gbnNoYXJlZDsKLQkJCXNoYXJlZF9jb3VudCA9IGZvYmogPyBmb2JqLT5zaGFy
ZWRfY291bnQgOiAwOwotCQkJZm9yIChpID0gMDsgaSA8IHNoYXJlZF9jb3VudDsgKytpKSB7Ci0J
CQkJc2hhcmVkW2ldID0gcmN1X2RlcmVmZXJlbmNlKGZvYmotPnNoYXJlZFtpXSk7Ci0JCQkJaWYg
KCFkbWFfZmVuY2VfZ2V0X3JjdShzaGFyZWRbaV0pKQotCQkJCQlicmVhazsKLQkJCX0KLQkJfQor
CQkJY291bnQgPSBjdXJzb3IuZmVuY2VzID8gY3Vyc29yLmZlbmNlcy0+c2hhcmVkX2NvdW50IDog
MDsKKwkJCWNvdW50ICs9IGZlbmNlX2V4Y2wgPyAwIDogMTsKKwkJCXJjdV9yZWFkX3VubG9jaygp
OwogCi0JCWlmIChpICE9IHNoYXJlZF9jb3VudCB8fCByZWFkX3NlcWNvdW50X3JldHJ5KCZvYmot
PnNlcSwgc2VxKSkgewotCQkJd2hpbGUgKGktLSkKLQkJCQlkbWFfZmVuY2VfcHV0KHNoYXJlZFtp
XSk7Ci0JCQlkbWFfZmVuY2VfcHV0KGZlbmNlX2V4Y2wpOwotCQkJZ290byB1bmxvY2s7CisJCQkv
KiBFdmVudHVhbGx5IHJlLWFsbG9jYXRlIHRoZSBhcnJheSAqLworCQkJKnNoYXJlZCA9IGtyZWFs
bG9jX2FycmF5KCpzaGFyZWQsIGNvdW50LAorCQkJCQkJIHNpemVvZih2b2lkICopLAorCQkJCQkJ
IEdGUF9LRVJORUwpOworCQkJaWYgKGNvdW50ICYmICEqc2hhcmVkKQorCQkJCXJldHVybiAtRU5P
TUVNOworCQkJcmN1X3JlYWRfbG9jaygpOwogCQl9CiAKLQkJcmV0ID0gMDsKLXVubG9jazoKLQkJ
cmN1X3JlYWRfdW5sb2NrKCk7Ci0JfSB3aGlsZSAocmV0KTsKLQotCWlmIChwZmVuY2VfZXhjbCkK
LQkJKnBmZW5jZV9leGNsID0gZmVuY2VfZXhjbDsKLQllbHNlIGlmIChmZW5jZV9leGNsKQotCQlz
aGFyZWRbc2hhcmVkX2NvdW50KytdID0gZmVuY2VfZXhjbDsKKwkJaWYgKGRtYV9yZXN2X2l0ZXJf
aXNfZXhjbHVzaXZlKCZjdXJzb3IpICYmIGZlbmNlX2V4Y2wpCisJCQkqZmVuY2VfZXhjbCA9IGZl
bmNlOworCQllbHNlCisJCQkoKnNoYXJlZClbKCpzaGFyZWRfY291bnQpKytdID0gZmVuY2U7CiAK
LQlpZiAoIXNoYXJlZF9jb3VudCkgewotCQlrZnJlZShzaGFyZWQpOwotCQlzaGFyZWQgPSBOVUxM
OworCQkvKiBEb24ndCBkcm9wIHRoZSByZWZlcmVuY2UgKi8KKwkJZmVuY2UgPSBOVUxMOwogCX0K
KwlyY3VfcmVhZF91bmxvY2soKTsKIAotCSpwc2hhcmVkX2NvdW50ID0gc2hhcmVkX2NvdW50Owot
CSpwc2hhcmVkID0gc2hhcmVkOwotCXJldHVybiByZXQ7CisJcmV0dXJuIDA7CiB9CiBFWFBPUlRf
U1lNQk9MX0dQTChkbWFfcmVzdl9nZXRfZmVuY2VzKTsKIAotLSAKMi4yNS4xCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxp
bmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5h
cm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
