Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 35430307DDA
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 28 Jan 2021 19:25:51 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4EE7366765
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 28 Jan 2021 18:25:50 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 3EB3C66766; Thu, 28 Jan 2021 18:25:50 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	MAILING_LIST_MULTI,MISSING_HEADERS,RCVD_IN_DNSWL_NONE,
	RCVD_IN_MSPIKE_H2,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A70E166768;
	Thu, 28 Jan 2021 18:25:00 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id BC16E66764
 for <linaro-mm-sig@lists.linaro.org>; Thu, 28 Jan 2021 18:24:52 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id A07856171B; Thu, 28 Jan 2021 18:24:52 +0000 (UTC)
Received: from mail-qk1-f202.google.com (mail-qk1-f202.google.com
 [209.85.222.202])
 by lists.linaro.org (Postfix) with ESMTPS id 69CA86171B
 for <linaro-mm-sig@lists.linaro.org>; Thu, 28 Jan 2021 18:24:50 +0000 (UTC)
Received: by mail-qk1-f202.google.com with SMTP id 70so4907614qkh.4
 for <linaro-mm-sig@lists.linaro.org>; Thu, 28 Jan 2021 10:24:50 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
 :references:subject:from:cc;
 bh=yOsjKHLvnoq+T0cRgk6WnsccWWwkkwI2XrElOZ44a4s=;
 b=faADCXEv29IjX9MFufrwjOYKMaGqDNUuV61f9+bAMuOyOJFzHfyZAW+0+DqpNrbRdV
 +B99woxbd50uqfY4FaAgyM7SFBIyj+AFKkd4YTzV/CpQBGchyxnYS3MKPV1+p2HIfKuv
 RPJCBv5gtz1RKTQgi+MGrclvfs2/MBsHonD8xowFSfgmv8NV8VxPGfbA1lUKp3m4ttN/
 WNixKB86LlOqMHezWqhzdAoZON178X6jPPjmtm4xgPyjX4xJ473Ye0sUQQpWQgcF3YFx
 M4M3ttVyE/HkDAjROA37ZKc+N4j48UciwTbswPGxNmak2uQK6jKv+frGF4zFEwGza6xu
 MiGg==
X-Gm-Message-State: AOAM533mfNiFcZBTsJTHmHgVO6qYiJSuTyNqNP46HygIvGQBrfsNiZT2
 7ZcxKYWGZ/VPBwRge/NKI14SOz+NOB+mMvUq2A==
X-Google-Smtp-Source: ABdhPJyWZJlwQXbPHDLiZiexFTqBEceum9TQ0H1iunv+gpZ9nIAVm92XvQEfS5zvz227RluicIR7BvhjdAmt74+0uw==
X-Received: from kaleshsingh.c.googlers.com
 ([fda3:e722:ac3:10:14:4d90:c0a8:2145])
 (user=kaleshsingh job=sendgmr) by 2002:a05:6214:148a:: with SMTP id
 bn10mr826173qvb.52.1611858289928; Thu, 28 Jan 2021 10:24:49 -0800 (PST)
Date: Thu, 28 Jan 2021 18:24:30 +0000
In-Reply-To: <20210128182432.2216573-1-kaleshsingh@google.com>
Message-Id: <20210128182432.2216573-2-kaleshsingh@google.com>
Mime-Version: 1.0
References: <20210128182432.2216573-1-kaleshsingh@google.com>
X-Mailer: git-send-email 2.30.0.280.ga3ce27912f-goog
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
 Alexey Gladkov <gladkov.alexey@gmail.com>, linux-kernel@vger.kernel.org,
 minchan@kernel.org, Yafang Shao <laoar.shao@gmail.com>,
 "Eric W. Biederman" <ebiederm@xmission.com>, hridya@google.com,
 Andrew Morton <akpm@linux-foundation.org>,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
Subject: [Linaro-mm-sig] [PATCH 1/2] procfs: Allow reading fdinfo with
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

U2luY2UgZmRpbmZvIGRvZXNuJ3QgcGVybWl0IHJlYWRpbmcgcHJvY2VzcyBtZW1vcnkgYW5kIG1h
bmlwdWxhdGluZwpwcm9jZXNzIHN0YXRlLCBhbGxvdyBhY2Nlc3NpbmcgZmRpbmZvIHVuZGVyIFBU
UkFDRV9NT0RFX1JFQURfRlNDUkVELgoKU3VnZ2VzdGVkLWJ5OiBKYW5uIEhvcm4gPGphbm5oQGdv
b2dsZS5jb20+ClNpZ25lZC1vZmYtYnk6IEthbGVzaCBTaW5naCA8a2FsZXNoc2luZ2hAZ29vZ2xl
LmNvbT4KLS0tCiBmcy9wcm9jL2Jhc2UuYyB8ICA0ICsrLS0KIGZzL3Byb2MvZmQuYyAgIHwgMTUg
KysrKysrKysrKysrKystCiAyIGZpbGVzIGNoYW5nZWQsIDE2IGluc2VydGlvbnMoKyksIDMgZGVs
ZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZnMvcHJvYy9iYXNlLmMgYi9mcy9wcm9jL2Jhc2UuYwpp
bmRleCBiMzQyMmNkYTJhOTEuLmEzN2Y5ZGU3MTAzZiAxMDA2NDQKLS0tIGEvZnMvcHJvYy9iYXNl
LmMKKysrIGIvZnMvcHJvYy9iYXNlLmMKQEAgLTMxNjAsNyArMzE2MCw3IEBAIHN0YXRpYyBjb25z
dCBzdHJ1Y3QgcGlkX2VudHJ5IHRnaWRfYmFzZV9zdHVmZltdID0gewogCURJUigidGFzayIsICAg
ICAgIFNfSVJVR098U19JWFVHTywgcHJvY190YXNrX2lub2RlX29wZXJhdGlvbnMsIHByb2NfdGFz
a19vcGVyYXRpb25zKSwKIAlESVIoImZkIiwgICAgICAgICBTX0lSVVNSfFNfSVhVU1IsIHByb2Nf
ZmRfaW5vZGVfb3BlcmF0aW9ucywgcHJvY19mZF9vcGVyYXRpb25zKSwKIAlESVIoIm1hcF9maWxl
cyIsICBTX0lSVVNSfFNfSVhVU1IsIHByb2NfbWFwX2ZpbGVzX2lub2RlX29wZXJhdGlvbnMsIHBy
b2NfbWFwX2ZpbGVzX29wZXJhdGlvbnMpLAotCURJUigiZmRpbmZvIiwgICAgIFNfSVJVU1J8U19J
WFVTUiwgcHJvY19mZGluZm9faW5vZGVfb3BlcmF0aW9ucywgcHJvY19mZGluZm9fb3BlcmF0aW9u
cyksCisJRElSKCJmZGluZm8iLCAgICAgU19JUlVHT3xTX0lYVUdPLCBwcm9jX2ZkaW5mb19pbm9k
ZV9vcGVyYXRpb25zLCBwcm9jX2ZkaW5mb19vcGVyYXRpb25zKSwKIAlESVIoIm5zIiwJICBTX0lS
VVNSfFNfSVhVR08sIHByb2NfbnNfZGlyX2lub2RlX29wZXJhdGlvbnMsIHByb2NfbnNfZGlyX29w
ZXJhdGlvbnMpLAogI2lmZGVmIENPTkZJR19ORVQKIAlESVIoIm5ldCIsICAgICAgICBTX0lSVUdP
fFNfSVhVR08sIHByb2NfbmV0X2lub2RlX29wZXJhdGlvbnMsIHByb2NfbmV0X29wZXJhdGlvbnMp
LApAQCAtMzUwNCw3ICszNTA0LDcgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBpbm9kZV9vcGVyYXRp
b25zIHByb2NfdGlkX2NvbW1faW5vZGVfb3BlcmF0aW9ucyA9IHsKICAqLwogc3RhdGljIGNvbnN0
IHN0cnVjdCBwaWRfZW50cnkgdGlkX2Jhc2Vfc3R1ZmZbXSA9IHsKIAlESVIoImZkIiwgICAgICAg
IFNfSVJVU1J8U19JWFVTUiwgcHJvY19mZF9pbm9kZV9vcGVyYXRpb25zLCBwcm9jX2ZkX29wZXJh
dGlvbnMpLAotCURJUigiZmRpbmZvIiwgICAgU19JUlVTUnxTX0lYVVNSLCBwcm9jX2ZkaW5mb19p
bm9kZV9vcGVyYXRpb25zLCBwcm9jX2ZkaW5mb19vcGVyYXRpb25zKSwKKwlESVIoImZkaW5mbyIs
ICAgIFNfSVJVR098U19JWFVHTywgcHJvY19mZGluZm9faW5vZGVfb3BlcmF0aW9ucywgcHJvY19m
ZGluZm9fb3BlcmF0aW9ucyksCiAJRElSKCJucyIsCSBTX0lSVVNSfFNfSVhVR08sIHByb2NfbnNf
ZGlyX2lub2RlX29wZXJhdGlvbnMsIHByb2NfbnNfZGlyX29wZXJhdGlvbnMpLAogI2lmZGVmIENP
TkZJR19ORVQKIAlESVIoIm5ldCIsICAgICAgICBTX0lSVUdPfFNfSVhVR08sIHByb2NfbmV0X2lu
b2RlX29wZXJhdGlvbnMsIHByb2NfbmV0X29wZXJhdGlvbnMpLApkaWZmIC0tZ2l0IGEvZnMvcHJv
Yy9mZC5jIGIvZnMvcHJvYy9mZC5jCmluZGV4IGNiNTE3NjNlZDU1NC4uNTg1ZTIxMzMwMWY5IDEw
MDY0NAotLS0gYS9mcy9wcm9jL2ZkLmMKKysrIGIvZnMvcHJvYy9mZC5jCkBAIC02LDYgKzYsNyBA
QAogI2luY2x1ZGUgPGxpbnV4L2ZkdGFibGUuaD4KICNpbmNsdWRlIDxsaW51eC9uYW1laS5oPgog
I2luY2x1ZGUgPGxpbnV4L3BpZC5oPgorI2luY2x1ZGUgPGxpbnV4L3B0cmFjZS5oPgogI2luY2x1
ZGUgPGxpbnV4L3NlY3VyaXR5Lmg+CiAjaW5jbHVkZSA8bGludXgvZmlsZS5oPgogI2luY2x1ZGUg
PGxpbnV4L3NlcV9maWxlLmg+CkBAIC03Miw2ICs3MywxOCBAQCBzdGF0aWMgaW50IHNlcV9zaG93
KHN0cnVjdCBzZXFfZmlsZSAqbSwgdm9pZCAqdikKIAogc3RhdGljIGludCBzZXFfZmRpbmZvX29w
ZW4oc3RydWN0IGlub2RlICppbm9kZSwgc3RydWN0IGZpbGUgKmZpbGUpCiB7CisJYm9vbCBhbGxv
d2VkID0gZmFsc2U7CisJc3RydWN0IHRhc2tfc3RydWN0ICp0YXNrID0gZ2V0X3Byb2NfdGFzayhp
bm9kZSk7CisKKwlpZiAoIXRhc2spCisJCXJldHVybiAtRVNSQ0g7CisKKwlhbGxvd2VkID0gcHRy
YWNlX21heV9hY2Nlc3ModGFzaywgUFRSQUNFX01PREVfUkVBRF9GU0NSRURTKTsKKwlwdXRfdGFz
a19zdHJ1Y3QodGFzayk7CisKKwlpZiAoIWFsbG93ZWQpCisJCXJldHVybiAtRUFDQ0VTOworCiAJ
cmV0dXJuIHNpbmdsZV9vcGVuKGZpbGUsIHNlcV9zaG93LCBpbm9kZSk7CiB9CiAKQEAgLTMwNyw3
ICszMjAsNyBAQCBzdGF0aWMgc3RydWN0IGRlbnRyeSAqcHJvY19mZGluZm9faW5zdGFudGlhdGUo
c3RydWN0IGRlbnRyeSAqZGVudHJ5LAogCXN0cnVjdCBwcm9jX2lub2RlICplaTsKIAlzdHJ1Y3Qg
aW5vZGUgKmlub2RlOwogCi0JaW5vZGUgPSBwcm9jX3BpZF9tYWtlX2lub2RlKGRlbnRyeS0+ZF9z
YiwgdGFzaywgU19JRlJFRyB8IFNfSVJVU1IpOworCWlub2RlID0gcHJvY19waWRfbWFrZV9pbm9k
ZShkZW50cnktPmRfc2IsIHRhc2ssIFNfSUZSRUcgfCBTX0lSVUdPKTsKIAlpZiAoIWlub2RlKQog
CQlyZXR1cm4gRVJSX1BUUigtRU5PRU5UKTsKIAotLSAKMi4zMC4wLjM2NS5nMDJiYzY5Mzc4OS1n
b29nCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5h
cm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0
cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
