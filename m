Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C30E1F66FD
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 11 Jun 2020 13:45:24 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6F3BF66513
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 11 Jun 2020 11:45:23 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 61797664F9; Thu, 11 Jun 2020 11:45:23 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.6 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,
	SUBJ_OBFU_PUNCT_FEW,SUBJ_OBFU_PUNCT_MANY autolearn=disabled
	version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 349DB664FE;
	Thu, 11 Jun 2020 11:44:37 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 5107A664F5
 for <linaro-mm-sig@lists.linaro.org>; Thu, 11 Jun 2020 11:44:33 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 30990664FE; Thu, 11 Jun 2020 11:44:33 +0000 (UTC)
Received: from mail-pg1-f196.google.com (mail-pg1-f196.google.com
 [209.85.215.196])
 by lists.linaro.org (Postfix) with ESMTPS id B95D4664F5
 for <linaro-mm-sig@lists.linaro.org>; Thu, 11 Jun 2020 11:44:31 +0000 (UTC)
Received: by mail-pg1-f196.google.com with SMTP id e18so2430941pgn.7
 for <linaro-mm-sig@lists.linaro.org>; Thu, 11 Jun 2020 04:44:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=NeR4sKutcrUPwtCckv6Tmqw2IkRMLX24dUiE+CNNtLg=;
 b=KYEM1OeEwEPVN2rN1RZvfvvyIiBtNGkrLtGz+++1XRcmL+R0/H0L24b7DKohGjJV+p
 ilWcR4s+2pcSF37ltaEdImGmuwLd72V7UdMQb6del/Nj6093NZFZ/MkFiZXKsxbw8fzg
 GSbgRWRaSYTY6WQWENGbck4am74piv9lPoOYzj2CjrQMlyik410WVKgE4YcWs039m00y
 su75WgV8EoF7pqZhPxDeBbgYtxhamkTo6xwzK39S6jJFDWhsY9sWR3+gAW9BjY4fCfgm
 7g+wS3A0bA79BNZlV23zziujVHAMiSUfWqcn3PBScfVQhbH3A0ZRa//+bgihFBVHyth9
 6coQ==
X-Gm-Message-State: AOAM530sD2EQOQinL8Vwapv/mp8Q6kjfsfzgYR3YtL9Y8MSXqn8tZe8w
 /KdB4sy3abJPZgt4YsNxF3/eWK+O
X-Google-Smtp-Source: ABdhPJxIOHN+w6MtKWfgrA7bxJRjB7VlTmwl68jAu2JbO5beoiWKr7sP/K2kitarxzXNPDtpNL9xKg==
X-Received: by 2002:a63:4754:: with SMTP id w20mr452063pgk.255.1591875870670; 
 Thu, 11 Jun 2020 04:44:30 -0700 (PDT)
Received: from nagraj.local ([49.206.21.239])
 by smtp.gmail.com with ESMTPSA id z144sm3088543pfc.195.2020.06.11.04.44.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 11 Jun 2020 04:44:29 -0700 (PDT)
From: Sumit Semwal <sumit.semwal@linaro.org>
To: linux-media@vger.kernel.org,
	dri-devel@lists.freedesktop.org
Date: Thu, 11 Jun 2020 17:14:18 +0530
Message-Id: <20200611114418.19852-1-sumit.semwal@linaro.org>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Arnd Bergmann <arnd@arndb.de>, Chenbo Feng <fengc@google.com>,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org,
 linaro-mm-sig@lists.linaro.org,
 syzbot+3643a18836bce555bff6@syzkaller.appspotmail.com,
 Charan Teja Reddy <charante@codeaurora.org>
Subject: [Linaro-mm-sig] [PATCH v2] dma-buf: Move dma_buf_release() from
	fops to dentry_ops
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

Q2hhcmFuIFRlamEgcmVwb3J0ZWQgYSAndXNlLWFmdGVyLWZyZWUnIGluIGRtYWJ1ZmZzX2RuYW1l
IFsxXSwgd2hpY2gKaGFwcGVucyBpZiB0aGUgZG1hX2J1Zl9yZWxlYXNlKCkgaXMgY2FsbGVkIHdo
aWxlIHRoZSB1c2Vyc3BhY2UgaXMKYWNjZXNzaW5nIHRoZSBkbWFfYnVmIHBzZXVkbyBmcydzIGRt
YWJ1ZmZzX2RuYW1lKCkgaW4gYW5vdGhlciBwcm9jZXNzLAphbmQgZG1hX2J1Zl9yZWxlYXNlKCkg
cmVsZWFzZXMgdGhlIGRtYWJ1ZiBvYmplY3Qgd2hlbiB0aGUgbGFzdCByZWZlcmVuY2UKdG8gdGhl
IHN0cnVjdCBmaWxlIGdvZXMgYXdheS4KCkkgZGlzY3Vzc2VkIHdpdGggQXJuZCBCZXJnbWFubiwg
YW5kIGhlIHN1Z2dlc3RlZCB0aGF0IHJhdGhlciB0aGFuIHR5aW5nCnRoZSBkbWFfYnVmX3JlbGVh
c2UoKSB0byB0aGUgZmlsZV9vcGVyYXRpb25zJyByZWxlYXNlKCksIHdlIGNhbiB0aWUgaXQgdG8K
dGhlIGRlbnRyeV9vcGVyYXRpb25zJyBkX3JlbGVhc2UoKSwgd2hpY2ggd2lsbCBiZSBjYWxsZWQg
d2hlbiB0aGUgbGFzdCByZWYKdG8gdGhlIGRlbnRyeSBpcyByZW1vdmVkLgoKVGhlIHBhdGggZXhl
cmNpc2VkIGJ5IF9fZnB1dCgpIGNhbGxzIGZfb3AtPnJlbGVhc2UoKSBmaXJzdCwgYW5kIHRoZW4g
Y2FsbHMKZHB1dCwgd2hpY2ggZXZlbnR1YWxseSBjYWxscyBkX29wLT5kX3JlbGVhc2UoKS4KCklu
IHRoZSAnbm9ybWFsJyBjYXNlLCB3aGVuIG5vIHVzZXJzcGFjZSBhY2Nlc3MgaXMgaGFwcGVuaW5n
IHZpYSBkbWFfYnVmCnBzZXVkbyBmcywgdGhlcmUgc2hvdWxkIGJlIGV4YWN0bHkgb25lIGZkLCBm
aWxlLCBkZW50cnkgYW5kIGlub2RlLCBzbwpjbG9zaW5nIHRoZSBmZCB3aWxsIGtpbGwgb2YgZXZl
cnl0aGluZyByaWdodCBhd2F5LgoKSW4gdGhlIHByZXNlbnRlZCBjYXNlLCB0aGUgZGVudHJ5J3Mg
ZF9yZWxlYXNlKCkgd2lsbCBiZSBjYWxsZWQgb25seSB3aGVuCnRoZSBkZW50cnkncyBsYXN0IHJl
ZiBpcyByZWxlYXNlZC4KClRoZXJlZm9yZSwgbGV0cyBtb3ZlIGRtYV9idWZfcmVsZWFzZSgpIGZy
b20gZm9wcy0+cmVsZWFzZSgpIHRvCmRfb3BzLT5kX3JlbGVhc2UoKQoKTWFueSB0aGFua3MgdG8g
QXJuZCBmb3IgaGlzIEZTIGluc2lnaHRzIDopCgpbMV06IGh0dHBzOi8vbG9yZS5rZXJuZWwub3Jn
L3BhdGNod29yay9wYXRjaC8xMjM4Mjc4LwoKRml4ZXM6IGJiMmJiOTAzMDQyNSAoImRtYS1idWY6
IGFkZCBETUFfQlVGX1NFVF9OQU1FIGlvY3RscyIpClJlcG9ydGVkLWJ5OiBzeXpib3QrMzY0M2Ex
ODgzNmJjZTU1NWJmZjZAc3l6a2FsbGVyLmFwcHNwb3RtYWlsLmNvbQpDYzogPHN0YWJsZUB2Z2Vy
Lmtlcm5lbC5vcmc+IFs1LjMrXQpDYzogQXJuZCBCZXJnbWFubiA8YXJuZEBhcm5kYi5kZT4KUmVw
b3J0ZWQtYnk6IENoYXJhbiBUZWphIFJlZGR5IDxjaGFyYW50ZUBjb2RlYXVyb3JhLm9yZz4KUmV2
aWV3ZWQtYnk6IEFybmQgQmVyZ21hbm4gPGFybmRAYXJuZGIuZGU+ClNpZ25lZC1vZmYtYnk6IFN1
bWl0IFNlbXdhbCA8c3VtaXQuc2Vtd2FsQGxpbmFyby5vcmc+CgotLS0KdjI6IHBlciBBcm5kOiBN
b3ZlZCBkbWFfYnVmX3JlbGVhc2UoKSBhYm92ZSB0byBhdm9pZCBmb3J3YXJkIGRlY2xhcmF0aW9u
OwogICAgIHJlbW92ZWQgZGVudHJ5X29wcyBjaGVjay4KLS0tCiBkcml2ZXJzL2RtYS1idWYvZG1h
LWJ1Zi5jIHwgNTQgKysrKysrKysrKysrKysrKysrLS0tLS0tLS0tLS0tLS0tLS0tLS0tCiAxIGZp
bGUgY2hhbmdlZCwgMjUgaW5zZXJ0aW9ucygrKSwgMjkgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0
IGEvZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMK
aW5kZXggMDFjZTEyNWY4ZThkLi40MTI2Mjk2MDFhZDMgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZG1h
LWJ1Zi9kbWEtYnVmLmMKKysrIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYwpAQCAtNTQsMzcg
KzU0LDExIEBAIHN0YXRpYyBjaGFyICpkbWFidWZmc19kbmFtZShzdHJ1Y3QgZGVudHJ5ICpkZW50
cnksIGNoYXIgKmJ1ZmZlciwgaW50IGJ1ZmxlbikKIAkJCSAgICAgZGVudHJ5LT5kX25hbWUubmFt
ZSwgcmV0ID4gMCA/IG5hbWUgOiAiIik7CiB9CiAKLXN0YXRpYyBjb25zdCBzdHJ1Y3QgZGVudHJ5
X29wZXJhdGlvbnMgZG1hX2J1Zl9kZW50cnlfb3BzID0gewotCS5kX2RuYW1lID0gZG1hYnVmZnNf
ZG5hbWUsCi19OwotCi1zdGF0aWMgc3RydWN0IHZmc21vdW50ICpkbWFfYnVmX21udDsKLQotc3Rh
dGljIGludCBkbWFfYnVmX2ZzX2luaXRfY29udGV4dChzdHJ1Y3QgZnNfY29udGV4dCAqZmMpCi17
Ci0Jc3RydWN0IHBzZXVkb19mc19jb250ZXh0ICpjdHg7Ci0KLQljdHggPSBpbml0X3BzZXVkbyhm
YywgRE1BX0JVRl9NQUdJQyk7Ci0JaWYgKCFjdHgpCi0JCXJldHVybiAtRU5PTUVNOwotCWN0eC0+
ZG9wcyA9ICZkbWFfYnVmX2RlbnRyeV9vcHM7Ci0JcmV0dXJuIDA7Ci19Ci0KLXN0YXRpYyBzdHJ1
Y3QgZmlsZV9zeXN0ZW1fdHlwZSBkbWFfYnVmX2ZzX3R5cGUgPSB7Ci0JLm5hbWUgPSAiZG1hYnVm
IiwKLQkuaW5pdF9mc19jb250ZXh0ID0gZG1hX2J1Zl9mc19pbml0X2NvbnRleHQsCi0JLmtpbGxf
c2IgPSBraWxsX2Fub25fc3VwZXIsCi19OwotCi1zdGF0aWMgaW50IGRtYV9idWZfcmVsZWFzZShz
dHJ1Y3QgaW5vZGUgKmlub2RlLCBzdHJ1Y3QgZmlsZSAqZmlsZSkKK3N0YXRpYyB2b2lkIGRtYV9i
dWZfcmVsZWFzZShzdHJ1Y3QgZGVudHJ5ICpkZW50cnkpCiB7CiAJc3RydWN0IGRtYV9idWYgKmRt
YWJ1ZjsKIAotCWlmICghaXNfZG1hX2J1Zl9maWxlKGZpbGUpKQotCQlyZXR1cm4gLUVJTlZBTDsK
LQotCWRtYWJ1ZiA9IGZpbGUtPnByaXZhdGVfZGF0YTsKKwlkbWFidWYgPSBkZW50cnktPmRfZnNk
YXRhOwogCiAJQlVHX09OKGRtYWJ1Zi0+dm1hcHBpbmdfY291bnRlcik7CiAKQEAgLTExMCw5ICs4
NCwzMiBAQCBzdGF0aWMgaW50IGRtYV9idWZfcmVsZWFzZShzdHJ1Y3QgaW5vZGUgKmlub2RlLCBz
dHJ1Y3QgZmlsZSAqZmlsZSkKIAltb2R1bGVfcHV0KGRtYWJ1Zi0+b3duZXIpOwogCWtmcmVlKGRt
YWJ1Zi0+bmFtZSk7CiAJa2ZyZWUoZG1hYnVmKTsKK30KKworc3RhdGljIGNvbnN0IHN0cnVjdCBk
ZW50cnlfb3BlcmF0aW9ucyBkbWFfYnVmX2RlbnRyeV9vcHMgPSB7CisJLmRfZG5hbWUgPSBkbWFi
dWZmc19kbmFtZSwKKwkuZF9yZWxlYXNlID0gZG1hX2J1Zl9yZWxlYXNlLAorfTsKKworc3RhdGlj
IHN0cnVjdCB2ZnNtb3VudCAqZG1hX2J1Zl9tbnQ7CisKK3N0YXRpYyBpbnQgZG1hX2J1Zl9mc19p
bml0X2NvbnRleHQoc3RydWN0IGZzX2NvbnRleHQgKmZjKQoreworCXN0cnVjdCBwc2V1ZG9fZnNf
Y29udGV4dCAqY3R4OworCisJY3R4ID0gaW5pdF9wc2V1ZG8oZmMsIERNQV9CVUZfTUFHSUMpOwor
CWlmICghY3R4KQorCQlyZXR1cm4gLUVOT01FTTsKKwljdHgtPmRvcHMgPSAmZG1hX2J1Zl9kZW50
cnlfb3BzOwogCXJldHVybiAwOwogfQogCitzdGF0aWMgc3RydWN0IGZpbGVfc3lzdGVtX3R5cGUg
ZG1hX2J1Zl9mc190eXBlID0geworCS5uYW1lID0gImRtYWJ1ZiIsCisJLmluaXRfZnNfY29udGV4
dCA9IGRtYV9idWZfZnNfaW5pdF9jb250ZXh0LAorCS5raWxsX3NiID0ga2lsbF9hbm9uX3N1cGVy
LAorfTsKKwogc3RhdGljIGludCBkbWFfYnVmX21tYXBfaW50ZXJuYWwoc3RydWN0IGZpbGUgKmZp
bGUsIHN0cnVjdCB2bV9hcmVhX3N0cnVjdCAqdm1hKQogewogCXN0cnVjdCBkbWFfYnVmICpkbWFi
dWY7CkBAIC00MTIsNyArNDA5LDYgQEAgc3RhdGljIHZvaWQgZG1hX2J1Zl9zaG93X2ZkaW5mbyhz
dHJ1Y3Qgc2VxX2ZpbGUgKm0sIHN0cnVjdCBmaWxlICpmaWxlKQogfQogCiBzdGF0aWMgY29uc3Qg
c3RydWN0IGZpbGVfb3BlcmF0aW9ucyBkbWFfYnVmX2ZvcHMgPSB7Ci0JLnJlbGVhc2UJPSBkbWFf
YnVmX3JlbGVhc2UsCiAJLm1tYXAJCT0gZG1hX2J1Zl9tbWFwX2ludGVybmFsLAogCS5sbHNlZWsJ
CT0gZG1hX2J1Zl9sbHNlZWssCiAJLnBvbGwJCT0gZG1hX2J1Zl9wb2xsLAotLSAKMi4yNy4wCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0t
c2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9s
aXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
