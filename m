Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id IGn3KgZpRWoL/goAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 01 Jul 2026 21:22:46 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 23FD96F0D0E
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 01 Jul 2026 21:22:46 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=gmail.com header.s=20251104 header.b=Wd86F3uT;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=gmail.com (policy=none)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8661640AFC
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  1 Jul 2026 19:22:44 +0000 (UTC)
Received: from mail-oo1-f45.google.com (mail-oo1-f45.google.com [209.85.161.45])
	by lists.linaro.org (Postfix) with ESMTPS id 8700F3F9BF
	for <linaro-mm-sig@lists.linaro.org>; Wed,  1 Jul 2026 19:22:33 +0000 (UTC)
Received: by mail-oo1-f45.google.com with SMTP id 006d021491bc7-6a190528769so445820eaf.0
        for <linaro-mm-sig@lists.linaro.org>; Wed, 01 Jul 2026 12:22:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1782933753; x=1783538553; darn=lists.linaro.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=RTaa1f3vcFQz1JXAdbVo3mJ6YMjKrRzWYP+nH66vQBE=;
        b=Wd86F3uT3ULeIYQsnL/w5+ZNQeFZ/oNgznDM2nSg3pwJn4uPpBFZM6IKLuxN9rzssk
         9A51C5YgVZQ/M7mdJrZmgeD/Yh/BGe1cdG9g276XvE8XhZOvXIzCEYvakrVw54Cy1pS1
         7jPQhzDc4v1+7Dm2oLgDRmSPfuzjZnJDMGyW30EE2YVSHFFN0XFkJcKjz947cm/URuTq
         K2G5Hn77mMrmvVRETzaBZBxr9f/HRU3gudJkuzY1t/PilfLPmBTNazWBjtSFKjEEgsym
         apcor4DCkpFPyLevdVMMnm33TyCKMfwtZRifRZbWmUS4su1EYKTKSaGVm3FZnBv94VI7
         MbyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782933753; x=1783538553;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RTaa1f3vcFQz1JXAdbVo3mJ6YMjKrRzWYP+nH66vQBE=;
        b=KN6n4tyiz4TVqpHV8JLuNXZ8j1IPdFjjcyXeD0lTKN65iH6LVpc+DwsMFCoQS0M6+Y
         RVRMy8fItwBr3mkG98GTotwp2EdFlXOCrm3OSIAOacY25K9q5D+Cu/f8+o3I0Ey59fSU
         tbyZOHLE0eXxAK3owPXYZyOjTb0PsdGXKcCoyPtF1Umtq5Nsaje1UtVuK2w4R79JNJAD
         HxSsx/+MfRikR3VZvmT3QctY2hGbsMVFzgIcZrVLrhaZ9BVoidEm2S/JGin74uHtnyZK
         J0A7YiCsXaNj4MtIQCzKfzose1hiaR+uqSFPo8GmpNpJaTryUezFSrz72aAZDkcaNeNX
         uRDQ==
X-Forwarded-Encrypted: i=1; AFNElJ8BnaEbun87wWHBDmvf9+U1raV43MD5XgPe/37VGU0kTLuIPfO5Zri2AHbxaIM0CDEmOXauKDz5JnWKkH3c@lists.linaro.org
X-Gm-Message-State: AOJu0YyVz/eHW2s6rMt9kKkY58a6vcnAtfCRJ9/YSlR6dWnazfJKO4/7
	2LsVVJX1KRY24A6d/jw4f2qqWCpamK5lBllU9mqzKjN3jweVplIxAUVf
X-Gm-Gg: AfdE7cmjRu1zLbcrNUYVo3N701H7n5woJgSMJIvqQxa+aKPjpKIqOpgwRR5X6FSg+tb
	yt5fKT1wBAODckgTjhMpqCVJdg/24ry7dcZMaKW61XArUW5sYdlbQAjg9qyIA/fbG29rcrk0sv7
	zhGfbeYgKgglTdITBc/rePJdwGFCIE87HGee1LwARIWMQ31Kl5ecdblfubMGy9XGu7qdeXXj0i0
	mA0/IowhE8q+TC4mEPRBFzl/pHYxPZSeY4AOBL/LUL0mWY8BugmREYCTyFlzaSnMqiWbqxM5uwX
	BXB2diGw0nnwkBRCgjnqC80t/K8oxKbPndQfowJPkdKWcYd0gvC686wHq9l8OD1XYWZNtWO1TO+
	8zwyw/DMazFO0Xe+B2xNz57liUq2PWOlMT0Kh7Pz3Igh0VVI1X+7FO9EW6AJJpBvUwzOXtYlEFt
	zy2xgPzQ8ETOYua/oR670=
X-Received: by 2002:a4a:e904:0:b0:6a1:50e7:5c1c with SMTP id 006d021491bc7-6a309be5591mr1545058eaf.71.1782933752754;
        Wed, 01 Jul 2026 12:22:32 -0700 (PDT)
Received: from localhost ([2a03:2880:ff:4d::])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-6a3103cddefsm608995eaf.13.2026.07.01.12.22.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 Jul 2026 12:22:32 -0700 (PDT)
From: Bobby Eshleman <bobbyeshleman@gmail.com>
Date: Wed, 01 Jul 2026 12:22:23 -0700
Message-Id: <20260701-tcpdm-large-niovs-v4-0-ca4654f37570@meta.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAPBoRWoC/23PQWrDMBCF4auIWXuCNBNLxKveo3QhK+NEEMtBE
 iIl+O4F04UJXj/4Hv8biuQoBQb1hiwtlrgkGNS5UxDuPt0E4xUGBaTJaqsJa3heZ3z4fBNMcWk
 Fe9sTe/ZGOwedgmeWKb428xuSVEzyqvDTKbjHUpf8u501s+3/Lh+4zaDGiZ0/+2Ad2fA1S/Wns
 Mwb1mgHGHMEEGoUoXEyvbie+APgPXBU1hg1eh7thcXZKYw7YF3XP7v7NSI9AQAA
X-Change-ID: 20260602-tcpdm-large-niovs-56523a3a1077
To: Donald Hunter <donald.hunter@gmail.com>,
 Jakub Kicinski <kuba@kernel.org>, "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>,
 Simon Horman <horms@kernel.org>, Andrew Lunn <andrew+netdev@lunn.ch>,
 Gerd Hoffmann <kraxel@redhat.com>,
 Vivek Kasireddy <vivek.kasireddy@intel.com>,
 Sumit Semwal <sumit.semwal@linaro.org>,
 =?utf-8?q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 Shuah Khan <shuah@kernel.org>
X-Mailer: b4 0.14.3
X-Spamd-Bar: ----
Message-ID-Hash: CB23T7UTRDHDONEQ3KG4Q5FRYS323CHX
X-Message-ID-Hash: CB23T7UTRDHDONEQ3KG4Q5FRYS323CHX
X-MailFrom: bobbyeshleman@gmail.com
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
CC: netdev@vger.kernel.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-kselftest@vger.kernel.org, sdf@fomichev.me, razor@blackwall.org, daniel@iogearbox.net, almasrymina@google.com, matttbe@kernel.org, skhawaja@google.com, dw@davidwei.uk, Joe Damato <joe@dama.to>, Bobby Eshleman <bobbyeshleman@meta.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH net-next v4 0/3] net: devmem: allow rx-buf-size > PAGE_SIZE per binding
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/CB23T7UTRDHDONEQ3KG4Q5FRYS323CHX/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [2.09 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_REJECT(1.00)[gmail.com:s=20251104];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:donald.hunter@gmail.com,m:kuba@kernel.org,m:davem@davemloft.net,m:edumazet@google.com,m:pabeni@redhat.com,m:horms@kernel.org,m:andrew+netdev@lunn.ch,m:kraxel@redhat.com,m:vivek.kasireddy@intel.com,m:sumit.semwal@linaro.org,m:christian.koenig@amd.com,m:shuah@kernel.org,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:linux-media@vger.kernel.org,m:linaro-mm-sig@lists.linaro.org,m:linux-kselftest@vger.kernel.org,m:sdf@fomichev.me,m:razor@blackwall.org,m:daniel@iogearbox.net,m:almasrymina@google.com,m:matttbe@kernel.org,m:skhawaja@google.com,m:dw@davidwei.uk,m:joe@dama.to,m:bobbyeshleman@meta.com,m:donaldhunter@gmail.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org,davemloft.net,google.com,redhat.com,lunn.ch,intel.com,linaro.org,amd.com];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_SENDER(0.00)[bobbyeshleman@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	RCPT_COUNT_TWELVE(0.00)[27];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[bobbyeshleman@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:-];
	TAGGED_RCPT(0.00)[linaro-mm-sig,netdev];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[devmem_lib.py:url,meta.com:mid,meta.com:email,linaro.org:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 23FD96F0D0E

Every devmem dmabuf binding hands the page_pool PAGE_SIZE niovs today.
On NICs that consume one descriptor per netmem, this caps a single RX
descriptor at PAGE_SIZE and burns CPU on buffer churn.

In this series, we add a bind-time netlink attribute,
NETDEV_A_DMABUF_RX_BUF_SIZE, that lets userspace request a larger niov size
(power of two >= PAGE_SIZE). Drivers must opt in via
queue_mgmt_ops.QCFG_RX_PAGE_SIZE.

Selftests use udmabuf, but udmabuf sgtables were previously hardcoded to
PAGE_SIZE. This series modifies udmabuf to respect folio sizes in its exported
sgtable. The result is that when backing udmabuf with MFD_HUGETLB 2MB pages,
the sgtable is populated with 2MB entries, allowing devmem's gen_pool to carve
out large (eg. 64K) niovs.

Measurements
------------

Setup: kperf devmem RX/TX cuda, 4 flows, 64 MB messages, 60s, dctcp,
num-rx-queues=4, dmabuf-rx/tx-size-mb=2048, 10 runs per niov size,
mlx5.

   niov       RX dev Gbps   RX flow avg Gbps         app sys %
  -----  ----------------  -----------------  ----------------
     4K  300.63 +/- 53.21    75.16 +/- 13.30   54.15 +/- 10.23
    16K  321.35 +/- 28.20    80.34 +/-  7.05   41.05 +/-  8.87
    32K  347.63 +/-  2.20    86.91 +/-  0.55   44.54 +/-  3.51
    64K  332.11 +/- 14.26    83.03 +/-  3.56   35.47 +/-  3.11

RX app sys % drops ~19% from 4K to 64K.

kperf support (not yet merged):
https://github.com/facebookexperimental/kperf/commit/8837577f920876bce6986ec18869ac04439ebcd2

Signed-off-by: Bobby Eshleman <bobbyeshleman@meta.com>
---
Changes in v4:
- ncdevmem: fix the possible overflow in ncdevmem (Sashiko)
- drop the udmabuf patch because the fix is now already in net-next
- silenced two pylint complaints in devmem_lib.py
- Link to v3: https://lore.kernel.org/r/20260612-tcpdm-large-niovs-v3-0-a3b693e76fcb@meta.com

Changes in v3:
- fix a bunch of non-reverse christmas tree declarations (Stan)
- remove extra uint32 cast for getpagesize() (Stan)
- remove overzealous strtoul checking (Stan)
- remove value checks that the kernel already performs on rx_buf_size
  (Stan)
- Link to v2: https://lore.kernel.org/r/20260611-tcpdm-large-niovs-v2-0-ee2bf15e7523@meta.com

Changes in v2:
- Use NL_SET_ERR_MSG_FMT for sg alignment failure details (Stan)
- Keep -E2BIG (not a direct ask, but seemed preferred, Stan)
- Update udmabuf commit message and comments explaining why
  "one sg ent per folio" is useful (Christian)
- Set/restore nr_hugepages in py harness (Stan)
- Link to v1: https://lore.kernel.org/r/20260603-tcpdm-large-niovs-v1-0-f37a4ac6726c@meta.com

---
Bobby Eshleman (3):
      net: devmem: allow rx-buf-size > PAGE_SIZE per dmabuf binding
      selftests/net: ncdevmem: add -b option to set rx-buf-size on bind
      selftests/net: devmem.py: add check_rx_large_niov

 Documentation/netlink/specs/netdev.yaml            |  8 +++
 include/uapi/linux/netdev.h                        |  1 +
 net/core/devmem.c                                  | 55 +++++++++++---------
 net/core/devmem.h                                  | 13 +++--
 net/core/netdev-genl-gen.c                         |  5 +-
 net/core/netdev-genl.c                             | 19 ++++++-
 tools/include/uapi/linux/netdev.h                  |  1 +
 tools/testing/selftests/drivers/net/hw/devmem.py   | 12 ++++-
 .../testing/selftests/drivers/net/hw/devmem_lib.py | 59 +++++++++++++++++++++-
 tools/testing/selftests/drivers/net/hw/ncdevmem.c  | 36 +++++++++++--
 .../testing/selftests/drivers/net/hw/nk_devmem.py  | 11 +++-
 11 files changed, 180 insertions(+), 40 deletions(-)
---
base-commit: 805185b7c7a1069e407b6f7b3bc98e44d415f484
change-id: 20260602-tcpdm-large-niovs-56523a3a1077

Best regards,
-- 
Bobby Eshleman <bobbyeshleman@meta.com>

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
