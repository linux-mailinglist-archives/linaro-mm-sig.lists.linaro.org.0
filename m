Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 3823F5F4452
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  4 Oct 2022 15:38:23 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 51A8D3F489
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  4 Oct 2022 13:38:22 +0000 (UTC)
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
	by lists.linaro.org (Postfix) with ESMTPS id 10FD63F47D
	for <linaro-mm-sig@lists.linaro.org>; Fri, 12 Aug 2022 17:58:02 +0000 (UTC)
Received: by mail-wr1-f50.google.com with SMTP id l4so1933087wrm.13
        for <linaro-mm-sig@lists.linaro.org>; Fri, 12 Aug 2022 10:58:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc;
        bh=w8rPxxUwax5JSBYc+MunKfzJoBwcTejD8FTqXrjwB9Q=;
        b=ZwbNXCMdTWEOw1KTNDeKg360UJPG1HCsisp9+uIXW+AigUK7JmFTPhWn7FWmgINCpT
         rY7PLkCGfIgguc5MJ32GWWbMwoRGbrciy52PmMX1/5lfI+D30PYnOCwwVfBKBtPaUO/j
         jYYLJn+GgsmN4Sun3E86Ttf/CyJOHKdJX0obiuUQjFrYu9dJaoyFzwwcqIuPBGKsMxPe
         M72hExseMtt+PHjI93iQSBcrxtHFZL/mjeY81Pz5VAWFt9PzKIBklpHqsfs4HOpWlXKp
         1568kstFdwaTNQgqRboZuJDIWBp5MvvF5h0Q7MacN0YSXLEmyowtVOQpKpMF/mqMtWQ3
         dQyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc;
        bh=w8rPxxUwax5JSBYc+MunKfzJoBwcTejD8FTqXrjwB9Q=;
        b=aeXk34zY7tZdUOLKUqm7lUWsiY8zGIf1J5jWdgrm68PEex15Zqmt9V2DqbaXMba3wp
         bUYi5yzoxT2prOmhhAedHTPGlDvIvXPnmuxNp8VJnP+QI6xPuY1zHDeLl+ViAGv2BhIJ
         hVpzwXT81RuRezGzOLA/uzrNfdFFB0BBOQm5LMLviKGnF8S1Nn2VDsgr6t0MuUTB+VY+
         exeqCugfZSaCZV1Dk+2KWyC9S0p7h2nanMX149MHn7PcpE3DmpjqaMvYhIOokvTxGkjQ
         A3hBNy5Q3jVixqcH6TwjUj+Nxzw1DsgeldSr3FQI3LxpIVWUOW8ECNanHKYW8Ns2pMqE
         1d5w==
X-Gm-Message-State: ACgBeo3laG+u8e+VdYyCxCcVbXGc4PSauZ48U98d99BYqIbcUF54D5NZ
	sFE0absAx9RpAw32qCJGMqI=
X-Google-Smtp-Source: AA6agR5BpjeASKsLrsRErii9wRhEEOlS5DHluRVxLpyj5mSQJt2UYcFvMbrTkLZMSIXhaY7aQVzWcA==
X-Received: by 2002:a5d:5848:0:b0:222:c8cd:288 with SMTP id i8-20020a5d5848000000b00222c8cd0288mr2788260wrf.34.1660327081009;
        Fri, 12 Aug 2022 10:58:01 -0700 (PDT)
Received: from localhost.localdomain (host-79-53-105-123.retail.telecomitalia.it. [79.53.105.123])
        by smtp.gmail.com with ESMTPSA id c3-20020adffb03000000b002206236ab3dsm129831wrr.3.2022.08.12.10.57.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Aug 2022 10:57:59 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: Alex Deucher <alexander.deucher@amd.com>,
	=?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
	"Pan, Xinhui" <Xinhui.Pan@amd.com>,
	David Airlie <airlied@linux.ie>,
	Daniel Vetter <daniel@ffwll.ch>,
	Sumit Semwal <sumit.semwal@linaro.org>,
	Felix Kuehling <Felix.Kuehling@amd.com>,
	Nirmoy Das <nirmoy.das@amd.com>,
	Jonathan Kim <jonathan.kim@amd.com>,
	Philip Yang <Philip.Yang@amd.com>,
	Matthew Auld <matthew.auld@intel.com>,
	Zack Rusin <zackr@vmware.com>,
	amd-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org,
	linux-media@vger.kernel.org,
	linaro-mm-sig@lists.linaro.org
Date: Fri, 12 Aug 2022 19:57:53 +0200
Message-Id: <20220812175753.22926-1-fmdefrancesco@gmail.com>
X-Mailer: git-send-email 2.37.1
MIME-Version: 1.0
X-MailFrom: fmdefrancesco@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 76GX2R7PFVJ2FTKFUARKTSYU7JLEIBRI
X-Message-ID-Hash: 76GX2R7PFVJ2FTKFUARKTSYU7JLEIBRI
X-Mailman-Approved-At: Tue, 04 Oct 2022 13:37:53 +0000
CC: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>, Ira Weiny <ira.weiny@intel.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH] drm/amd/amdgpu: Replace kmap() with kmap_local_page()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/76GX2R7PFVJ2FTKFUARKTSYU7JLEIBRI/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

a21hcCgpIGlzIGJlaW5nIGRlcHJlY2F0ZWQgaW4gZmF2b3Igb2Yga21hcF9sb2NhbF9wYWdlKCku
DQoNClRoZXJlIGFyZSB0d28gbWFpbiBwcm9ibGVtcyB3aXRoIGttYXAoKTogKDEpIEl0IGNvbWVz
IHdpdGggYW4gb3ZlcmhlYWQgYXMNCm1hcHBpbmcgc3BhY2UgaXMgcmVzdHJpY3RlZCBhbmQgcHJv
dGVjdGVkIGJ5IGEgZ2xvYmFsIGxvY2sgZm9yDQpzeW5jaHJvbml6YXRpb24gYW5kICgyKSBpdCBh
bHNvIHJlcXVpcmVzIGdsb2JhbCBUTEIgaW52YWxpZGF0aW9uIHdoZW4gdGhlDQprbWFw4oCZcyBw
b29sIHdyYXBzIGFuZCBpdCBtaWdodCBibG9jayB3aGVuIHRoZSBtYXBwaW5nIHNwYWNlIGlzIGZ1
bGx5DQp1dGlsaXplZCB1bnRpbCBhIHNsb3QgYmVjb21lcyBhdmFpbGFibGUuDQoNCldpdGgga21h
cF9sb2NhbF9wYWdlKCkgdGhlIG1hcHBpbmdzIGFyZSBwZXIgdGhyZWFkLCBDUFUgbG9jYWwsIGNh
biB0YWtlDQpwYWdlIGZhdWx0cywgYW5kIGNhbiBiZSBjYWxsZWQgZnJvbSBhbnkgY29udGV4dCAo
aW5jbHVkaW5nIGludGVycnVwdHMpLg0KSXQgaXMgZmFzdGVyIHRoYW4ga21hcCgpIGluIGtlcm5l
bHMgd2l0aCBISUdITUVNIGVuYWJsZWQuIEZ1cnRoZXJtb3JlLA0KdGhlIHRhc2tzIGNhbiBiZSBw
cmVlbXB0ZWQgYW5kLCB3aGVuIHRoZXkgYXJlIHNjaGVkdWxlZCB0byBydW4gYWdhaW4sIHRoZQ0K
a2VybmVsIHZpcnR1YWwgYWRkcmVzc2VzIGFyZSByZXN0b3JlZCBhbmQgYXJlIHN0aWxsIHZhbGlk
Lg0KDQpTaW5jZSBpdHMgdXNlIGluIGFtZGdwdS9hbWRncHVfdHRtLmMgaXMgc2FmZSwgaXQgc2hv
dWxkIGJlIHByZWZlcnJlZC4NCg0KVGhlcmVmb3JlLCByZXBsYWNlIGttYXAoKSB3aXRoIGttYXBf
bG9jYWxfcGFnZSgpIGluIGFtZGdwdS9hbWRncHVfdHRtLmMuDQoNClN1Z2dlc3RlZC1ieTogSXJh
IFdlaW55IDxpcmEud2VpbnlAaW50ZWwuY29tPg0KU2lnbmVkLW9mZi1ieTogRmFiaW8gTS4gRGUg
RnJhbmNlc2NvIDxmbWRlZnJhbmNlc2NvQGdtYWlsLmNvbT4NCi0tLQ0KIGRyaXZlcnMvZ3B1L2Ry
bS9hbWQvYW1kZ3B1L2FtZGdwdV90dG0uYyB8IDggKysrKy0tLS0NCiAxIGZpbGUgY2hhbmdlZCwg
NCBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQ0KDQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X3R0bS5jIGIvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRn
cHUvYW1kZ3B1X3R0bS5jDQppbmRleCAzYjRjMTk0MTI2MjUuLmMxMTY1N2I1OTE1ZiAxMDA2NDQN
Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV90dG0uYw0KKysrIGIvZHJp
dmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X3R0bS5jDQpAQCAtMjMwMSw5ICsyMzAxLDkg
QEAgc3RhdGljIHNzaXplX3QgYW1kZ3B1X2lvbWVtX3JlYWQoc3RydWN0IGZpbGUgKmYsIGNoYXIg
X191c2VyICpidWYsDQogCQlpZiAocC0+bWFwcGluZyAhPSBhZGV2LT5tbWFuLmJkZXYuZGV2X21h
cHBpbmcpDQogCQkJcmV0dXJuIC1FUEVSTTsNCiANCi0JCXB0ciA9IGttYXAocCk7DQorCQlwdHIg
PSBrbWFwX2xvY2FsX3BhZ2UocCk7DQogCQlyID0gY29weV90b191c2VyKGJ1ZiwgcHRyICsgb2Zm
LCBieXRlcyk7DQotCQlrdW5tYXAocCk7DQorCQlrdW5tYXBfbG9jYWwocHRyKTsNCiAJCWlmIChy
KQ0KIAkJCXJldHVybiAtRUZBVUxUOw0KIA0KQEAgLTIzNTIsOSArMjM1Miw5IEBAIHN0YXRpYyBz
c2l6ZV90IGFtZGdwdV9pb21lbV93cml0ZShzdHJ1Y3QgZmlsZSAqZiwgY29uc3QgY2hhciBfX3Vz
ZXIgKmJ1ZiwNCiAJCWlmIChwLT5tYXBwaW5nICE9IGFkZXYtPm1tYW4uYmRldi5kZXZfbWFwcGlu
ZykNCiAJCQlyZXR1cm4gLUVQRVJNOw0KIA0KLQkJcHRyID0ga21hcChwKTsNCisJCXB0ciA9IGtt
YXBfbG9jYWxfcGFnZShwKTsNCiAJCXIgPSBjb3B5X2Zyb21fdXNlcihwdHIgKyBvZmYsIGJ1Ziwg
Ynl0ZXMpOw0KLQkJa3VubWFwKHApOw0KKwkJa3VubWFwX2xvY2FsKHB0cik7DQogCQlpZiAocikN
CiAJCQlyZXR1cm4gLUVGQVVMVDsNCiANCi0tIA0KMi4zNy4xDQoNCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0
IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFu
IGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
