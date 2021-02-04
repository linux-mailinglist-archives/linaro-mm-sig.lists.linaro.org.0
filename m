Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 7754D3100B2
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  5 Feb 2021 00:30:39 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A3D866602F
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  4 Feb 2021 23:30:38 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 921C36675A; Thu,  4 Feb 2021 23:30:38 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	MAILING_LIST_MULTI,MISSING_HEADERS,RCVD_IN_DNSWL_NONE,
	RCVD_IN_MSPIKE_H2,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6A4D866754;
	Thu,  4 Feb 2021 23:30:03 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id A5E0A60B63
 for <linaro-mm-sig@lists.linaro.org>; Thu,  4 Feb 2021 23:30:00 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 8D0C766754; Thu,  4 Feb 2021 23:30:00 +0000 (UTC)
Received: from mail-yb1-f202.google.com (mail-yb1-f202.google.com
 [209.85.219.202])
 by lists.linaro.org (Postfix) with ESMTPS id 32ADC60B63
 for <linaro-mm-sig@lists.linaro.org>; Thu,  4 Feb 2021 23:29:59 +0000 (UTC)
Received: by mail-yb1-f202.google.com with SMTP id f127so4867240ybf.12
 for <linaro-mm-sig@lists.linaro.org>; Thu, 04 Feb 2021 15:29:59 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:message-id:mime-version:subject:from
 :cc:content-transfer-encoding;
 bh=DDQzxO36o6mrG/7K72IGYqFtZmZCZagcSZoIJct7BXY=;
 b=ZYFUQ8xC/wfZyQ1KGVJmBKLK6F2SkjHTzZvhSHrT0sW4d311x7wMZxNeKzgiPmdGRY
 82yZ7dU0VOQ1ZeQNkWiRanMFBxN7JPJVJDXuaJXRqwre7otm6knm3tZ6pYUqxGo8f1TG
 MAUZhFNEcsoteaovYxwUCTYrwkgIJpCYgNi25FWgPTgtQQwQO6nUZHXa2AFFZ1bjnI9Q
 1QRjb8TCLHx6umr+VC5yKwa3n5CdFZwyze6uBlyOWePckI8LLfMJ1yFvQL2tkrD/8lei
 /lq1Um9MN0g9fAmILR6O4gPIpTSya93TKUWhCpFJTv29Jcqh0aqNo2gNjnfv91az80ro
 Ezaw==
X-Gm-Message-State: AOAM532PHk0mOVjq7DGL7QLyRt4bX1XEYXzBHBAIOP9yrTxc/w0g+gHo
 fYk1CYB3tsJ7j5c7mr0HyC7gfVAwelDMvUnNMw==
X-Google-Smtp-Source: ABdhPJxuX5H3dPiFCh9g9xC89BwbDPdhdkk9a69MMrBZXYzdZFIf3f0iRjx/t1FkfEnOk7GPoDaKkXJi/cFoZs5jWQ==
X-Received: from kaleshsingh.c.googlers.com
 ([fda3:e722:ac3:10:14:4d90:c0a8:2145])
 (user=kaleshsingh job=sendgmr) by 2002:a25:450:: with SMTP id
 77mr162814ybe.39.1612481398666; Thu, 04 Feb 2021 15:29:58 -0800 (PST)
Date: Thu,  4 Feb 2021 23:28:49 +0000
Message-Id: <20210204232854.451676-1-kaleshsingh@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.30.0.365.g02bc693789-goog
From: Kalesh Singh <kaleshsingh@google.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: dri-devel@lists.freedesktop.org, Andrei Vagin <avagin@gmail.com>,
 Kalesh Singh <kaleshsingh@google.com>,
 Christian Brauner <christian.brauner@ubuntu.com>,
 Michel Lespinasse <walken@google.com>, jeffv@google.com,
 kernel-team@android.com, Alexey Dobriyan <adobriyan@gmail.com>,
 linux-media@vger.kernel.org, keescook@chromium.org, jannh@google.com,
 linaro-mm-sig@lists.linaro.org, linux-fsdevel@vger.kernel.org,
 Bernd Edlinger <bernd.edlinger@hotmail.de>, surenb@google.com,
 Vlastimil Babka <vbabka@suse.cz>, Alexey Gladkov <gladkov.alexey@gmail.com>,
 linux-kernel@vger.kernel.org, minchan@kernel.org,
 Yafang Shao <laoar.shao@gmail.com>,
 "Eric W. Biederman" <ebiederm@xmission.com>, hridya@google.com,
 Andrew Morton <akpm@linux-foundation.org>,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
Subject: [Linaro-mm-sig] [PATCH v2 1/2] procfs: Allow reading fdinfo with
	PTRACE_MODE_READ
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

QW5kcm9pZCBjYXB0dXJlcyBwZXItcHJvY2VzcyBzeXN0ZW0gbWVtb3J5IHN0YXRlIHdoZW4gY2Vy
dGFpbiBsb3cgbWVtb3J5CmV2ZW50cyAoZS5nIGEgZm9yZWdyb3VuZCBhcHAga2lsbCkgb2NjdXIs
IHRvIGlkZW50aWZ5IHBvdGVudGlhbCBtZW1vcnkKaG9nZ2Vycy4gSW4gb3JkZXIgdG8gbWVhc3Vy
ZSBob3cgbXVjaCBtZW1vcnkgYSBwcm9jZXNzIGFjdHVhbGx5IGNvbnN1bWVzLAppdCBpcyBuZWNl
c3NhcnkgdG8gaW5jbHVkZSB0aGUgRE1BIGJ1ZmZlciBzaXplcyBmb3IgdGhhdCBwcm9jZXNzIGlu
IHRoZQptZW1vcnkgYWNjb3VudGluZy4gU2luY2UgdGhlIGhhbmRsZSB0byBETUEgYnVmZmVycyBh
cmUgcmF3IEZEcywgaXQgaXMKaW1wb3J0YW50IHRvIGJlIGFibGUgdG8gaWRlbnRpZnkgd2hpY2gg
cHJvY2Vzc2VzIGhhdmUgRkQgcmVmZXJlbmNlcyB0bwphIERNQSBidWZmZXIuCgpDdXJyZW50bHks
IERNQSBidWZmZXIgRkRzIGNhbiBiZSBhY2NvdW50ZWQgdXNpbmcgL3Byb2MvPHBpZD4vZmQvKiBh
bmQKL3Byb2MvPHBpZD4vZmRpbmZvIC0tIGJvdGggYXJlIG9ubHkgcmVhZGFibGUgYnkgdGhlIHBy
b2Nlc3Mgb3duZXIsCmFzIGZvbGxvd3M6CiAgMS4gRG8gYSByZWFkbGluayBvbiBlYWNoIEZELgog
IDIuIElmIHRoZSB0YXJnZXQgcGF0aCBiZWdpbnMgd2l0aCAiL2RtYWJ1ZiIsIHRoZW4gdGhlIEZE
IGlzIGEgZG1hYnVmIEZELgogIDMuIHN0YXQgdGhlIGZpbGUgdG8gZ2V0IHRoZSBkbWFidWYgaW5v
ZGUgbnVtYmVyLgogIDQuIFJlYWQvIHByb2MvPHBpZD4vZmRpbmZvLzxmZD4sIHRvIGdldCB0aGUg
RE1BIGJ1ZmZlciBzaXplLgoKQWNjZXNzaW5nIG90aGVyIHByb2Nlc3Nlc+KAmSBmZGluZm8gcmVx
dWlyZXMgcm9vdCBwcml2aWxlZ2VzLiBUaGlzIGxpbWl0cwp0aGUgdXNlIG9mIHRoZSBpbnRlcmZh
Y2UgdG8gZGVidWdnaW5nIGVudmlyb25tZW50cyBhbmQgaXMgbm90IHN1aXRhYmxlCmZvciBwcm9k
dWN0aW9uIGJ1aWxkcy4gIEdyYW50aW5nIHJvb3QgcHJpdmlsZWdlcyBldmVuIHRvIGEgc3lzdGVt
IHByb2Nlc3MKaW5jcmVhc2VzIHRoZSBhdHRhY2sgc3VyZmFjZSBhbmQgaXMgaGlnaGx5IHVuZGVz
aXJhYmxlLgoKU2luY2UgZmRpbmZvIGRvZXNuJ3QgcGVybWl0IHJlYWRpbmcgcHJvY2VzcyBtZW1v
cnkgYW5kIG1hbmlwdWxhdGluZwpwcm9jZXNzIHN0YXRlLCBhbGxvdyBhY2Nlc3NpbmcgZmRpbmZv
IHVuZGVyIFBUUkFDRV9NT0RFX1JFQURfRlNDUkVELgoKU3VnZ2VzdGVkLWJ5OiBKYW5uIEhvcm4g
PGphbm5oQGdvb2dsZS5jb20+ClNpZ25lZC1vZmYtYnk6IEthbGVzaCBTaW5naCA8a2FsZXNoc2lu
Z2hAZ29vZ2xlLmNvbT4KLS0tCgpDaGFuZ2VzIGluIHYyOgogIC0gVXBkYXRlIHBhdGNoIGRlc2Np
cHRpb24KCiBmcy9wcm9jL2Jhc2UuYyB8ICA0ICsrLS0KIGZzL3Byb2MvZmQuYyAgIHwgMTUgKysr
KysrKysrKysrKystCiAyIGZpbGVzIGNoYW5nZWQsIDE2IGluc2VydGlvbnMoKyksIDMgZGVsZXRp
b25zKC0pCgpkaWZmIC0tZ2l0IGEvZnMvcHJvYy9iYXNlLmMgYi9mcy9wcm9jL2Jhc2UuYwppbmRl
eCBiMzQyMmNkYTJhOTEuLmEzN2Y5ZGU3MTAzZiAxMDA2NDQKLS0tIGEvZnMvcHJvYy9iYXNlLmMK
KysrIGIvZnMvcHJvYy9iYXNlLmMKQEAgLTMxNjAsNyArMzE2MCw3IEBAIHN0YXRpYyBjb25zdCBz
dHJ1Y3QgcGlkX2VudHJ5IHRnaWRfYmFzZV9zdHVmZltdID0gewogCURJUigidGFzayIsICAgICAg
IFNfSVJVR098U19JWFVHTywgcHJvY190YXNrX2lub2RlX29wZXJhdGlvbnMsIHByb2NfdGFza19v
cGVyYXRpb25zKSwKIAlESVIoImZkIiwgICAgICAgICBTX0lSVVNSfFNfSVhVU1IsIHByb2NfZmRf
aW5vZGVfb3BlcmF0aW9ucywgcHJvY19mZF9vcGVyYXRpb25zKSwKIAlESVIoIm1hcF9maWxlcyIs
ICBTX0lSVVNSfFNfSVhVU1IsIHByb2NfbWFwX2ZpbGVzX2lub2RlX29wZXJhdGlvbnMsIHByb2Nf
bWFwX2ZpbGVzX29wZXJhdGlvbnMpLAotCURJUigiZmRpbmZvIiwgICAgIFNfSVJVU1J8U19JWFVT
UiwgcHJvY19mZGluZm9faW5vZGVfb3BlcmF0aW9ucywgcHJvY19mZGluZm9fb3BlcmF0aW9ucyks
CisJRElSKCJmZGluZm8iLCAgICAgU19JUlVHT3xTX0lYVUdPLCBwcm9jX2ZkaW5mb19pbm9kZV9v
cGVyYXRpb25zLCBwcm9jX2ZkaW5mb19vcGVyYXRpb25zKSwKIAlESVIoIm5zIiwJICBTX0lSVVNS
fFNfSVhVR08sIHByb2NfbnNfZGlyX2lub2RlX29wZXJhdGlvbnMsIHByb2NfbnNfZGlyX29wZXJh
dGlvbnMpLAogI2lmZGVmIENPTkZJR19ORVQKIAlESVIoIm5ldCIsICAgICAgICBTX0lSVUdPfFNf
SVhVR08sIHByb2NfbmV0X2lub2RlX29wZXJhdGlvbnMsIHByb2NfbmV0X29wZXJhdGlvbnMpLApA
QCAtMzUwNCw3ICszNTA0LDcgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBpbm9kZV9vcGVyYXRpb25z
IHByb2NfdGlkX2NvbW1faW5vZGVfb3BlcmF0aW9ucyA9IHsKICAqLwogc3RhdGljIGNvbnN0IHN0
cnVjdCBwaWRfZW50cnkgdGlkX2Jhc2Vfc3R1ZmZbXSA9IHsKIAlESVIoImZkIiwgICAgICAgIFNf
SVJVU1J8U19JWFVTUiwgcHJvY19mZF9pbm9kZV9vcGVyYXRpb25zLCBwcm9jX2ZkX29wZXJhdGlv
bnMpLAotCURJUigiZmRpbmZvIiwgICAgU19JUlVTUnxTX0lYVVNSLCBwcm9jX2ZkaW5mb19pbm9k
ZV9vcGVyYXRpb25zLCBwcm9jX2ZkaW5mb19vcGVyYXRpb25zKSwKKwlESVIoImZkaW5mbyIsICAg
IFNfSVJVR098U19JWFVHTywgcHJvY19mZGluZm9faW5vZGVfb3BlcmF0aW9ucywgcHJvY19mZGlu
Zm9fb3BlcmF0aW9ucyksCiAJRElSKCJucyIsCSBTX0lSVVNSfFNfSVhVR08sIHByb2NfbnNfZGly
X2lub2RlX29wZXJhdGlvbnMsIHByb2NfbnNfZGlyX29wZXJhdGlvbnMpLAogI2lmZGVmIENPTkZJ
R19ORVQKIAlESVIoIm5ldCIsICAgICAgICBTX0lSVUdPfFNfSVhVR08sIHByb2NfbmV0X2lub2Rl
X29wZXJhdGlvbnMsIHByb2NfbmV0X29wZXJhdGlvbnMpLApkaWZmIC0tZ2l0IGEvZnMvcHJvYy9m
ZC5jIGIvZnMvcHJvYy9mZC5jCmluZGV4IGNiNTE3NjNlZDU1NC4uNTg1ZTIxMzMwMWY5IDEwMDY0
NAotLS0gYS9mcy9wcm9jL2ZkLmMKKysrIGIvZnMvcHJvYy9mZC5jCkBAIC02LDYgKzYsNyBAQAog
I2luY2x1ZGUgPGxpbnV4L2ZkdGFibGUuaD4KICNpbmNsdWRlIDxsaW51eC9uYW1laS5oPgogI2lu
Y2x1ZGUgPGxpbnV4L3BpZC5oPgorI2luY2x1ZGUgPGxpbnV4L3B0cmFjZS5oPgogI2luY2x1ZGUg
PGxpbnV4L3NlY3VyaXR5Lmg+CiAjaW5jbHVkZSA8bGludXgvZmlsZS5oPgogI2luY2x1ZGUgPGxp
bnV4L3NlcV9maWxlLmg+CkBAIC03Miw2ICs3MywxOCBAQCBzdGF0aWMgaW50IHNlcV9zaG93KHN0
cnVjdCBzZXFfZmlsZSAqbSwgdm9pZCAqdikKIAogc3RhdGljIGludCBzZXFfZmRpbmZvX29wZW4o
c3RydWN0IGlub2RlICppbm9kZSwgc3RydWN0IGZpbGUgKmZpbGUpCiB7CisJYm9vbCBhbGxvd2Vk
ID0gZmFsc2U7CisJc3RydWN0IHRhc2tfc3RydWN0ICp0YXNrID0gZ2V0X3Byb2NfdGFzayhpbm9k
ZSk7CisKKwlpZiAoIXRhc2spCisJCXJldHVybiAtRVNSQ0g7CisKKwlhbGxvd2VkID0gcHRyYWNl
X21heV9hY2Nlc3ModGFzaywgUFRSQUNFX01PREVfUkVBRF9GU0NSRURTKTsKKwlwdXRfdGFza19z
dHJ1Y3QodGFzayk7CisKKwlpZiAoIWFsbG93ZWQpCisJCXJldHVybiAtRUFDQ0VTOworCiAJcmV0
dXJuIHNpbmdsZV9vcGVuKGZpbGUsIHNlcV9zaG93LCBpbm9kZSk7CiB9CiAKQEAgLTMwNyw3ICsz
MjAsNyBAQCBzdGF0aWMgc3RydWN0IGRlbnRyeSAqcHJvY19mZGluZm9faW5zdGFudGlhdGUoc3Ry
dWN0IGRlbnRyeSAqZGVudHJ5LAogCXN0cnVjdCBwcm9jX2lub2RlICplaTsKIAlzdHJ1Y3QgaW5v
ZGUgKmlub2RlOwogCi0JaW5vZGUgPSBwcm9jX3BpZF9tYWtlX2lub2RlKGRlbnRyeS0+ZF9zYiwg
dGFzaywgU19JRlJFRyB8IFNfSVJVU1IpOworCWlub2RlID0gcHJvY19waWRfbWFrZV9pbm9kZShk
ZW50cnktPmRfc2IsIHRhc2ssIFNfSUZSRUcgfCBTX0lSVUdPKTsKIAlpZiAoIWlub2RlKQogCQly
ZXR1cm4gRVJSX1BUUigtRU5PRU5UKTsKIAotLSAKMi4zMC4wLjM2NS5nMDJiYzY5Mzc4OS1nb29n
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8t
bW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6
Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
