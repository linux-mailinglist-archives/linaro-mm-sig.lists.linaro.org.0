Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Hx7zBprfKmpCygMAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 11 Jun 2026 18:17:30 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 98BAC67361F
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 11 Jun 2026 18:17:29 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=gmail.com header.s=20251104 header.b=nxir5o5y;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=gmail.com (policy=none)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4FF9D40A25
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 11 Jun 2026 16:17:28 +0000 (UTC)
Received: from mail-pg1-f174.google.com (mail-pg1-f174.google.com [209.85.215.174])
	by lists.linaro.org (Postfix) with ESMTPS id 8842D409A7
	for <linaro-mm-sig@lists.linaro.org>; Thu, 11 Jun 2026 16:17:17 +0000 (UTC)
Received: by mail-pg1-f174.google.com with SMTP id 41be03b00d2f7-c8585cd8400so3220051a12.3
        for <linaro-mm-sig@lists.linaro.org>; Thu, 11 Jun 2026 09:17:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781194637; x=1781799437; darn=lists.linaro.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=og57coQD3NKK4AOSZLfMT1CyFR6j8/1DFkBGKs1z5do=;
        b=nxir5o5yoPAx0BqBpb3qlj/AHmrljL0SgIiY0GrmDSXxDC1RwOE664pp0P70XYpbDz
         2x/TXUUtawPgvIMv3Yu1zb88bJV1A9OIXa0bXjhVzF/MUOp8V0K8iwlhkb97yA06C25V
         V4YcHU831cpvCqOkguFQZA3jalIfmBbRsBz19eSwMQ8KJd3L4q+HlGhiO3cWunIvZSLl
         C5/3Wlk12cNw2NZ4WACPilGXlUVz3Q3Ja3TJbG1rQVIsQBWZGL0tbkCpdXfhJensiXaG
         iL7JhnVhh/AARF7KjXSxC951qSNJyF3yZFJ8YudDhRqHEwP9wkLhRp1Ql8VfuIVnppEC
         gYPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781194637; x=1781799437;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=og57coQD3NKK4AOSZLfMT1CyFR6j8/1DFkBGKs1z5do=;
        b=lpxfdGigoKaQjiMexlJfrsGUgVUvqASJwrILJ+boLZ3Csraw3/LQKObM9ixUgYpMPB
         W6M3Sasqq8je5+Xt9m5WT+86WbYf3I4+k6oH2ND5auWFeweifYk9OS7mMwINcld//KVw
         MJgeCgX39l1d/whBzTsWAVFN9PsqiqV1Qyj1kEtap5FHIwiCiimJC7M5RDIA14VDxKd3
         0l+m8E7cyklZmCzCBr1rWkb9KM4XouWHFHncS1khgtbll95Vpigfh12KU87zCFxxLR9L
         oMeK0S2CizlGVsneesqx43I8CUilKwVXoAWtsdXWPdg01+paFh/fVKJNElsf87Cvoq3r
         q1Ow==
X-Forwarded-Encrypted: i=1; AFNElJ/FTIwcYZ/FXuBSWlcHXCJ/PCdpA1r0KbLawRwatccMKL3zlrmV9VRs90RffafG+AkjYaWif+fASreR4g6B@lists.linaro.org
X-Gm-Message-State: AOJu0YxfvSlw+T14KsNxDPyF+hUNVA7q3lzhHRkdk8pDAjn8+2bXrZtr
	1TVfyvEwjbOWNf5a2Advav1yoC4aR6q8MLASjRaKEEnuZvo/7V80SZhA
X-Gm-Gg: Acq92OGJn/ey1ztwgXkhB7orQzkpO4gq3A85doCO+lCAohzU5l/mYGqtAYV9+3v/80K
	0lVzBKj+hiod8UsaRYY7IYolqKo2neBGHKplTFSthOaEMlNfW39jn6GI0lFfXNlgYisDfvyCZ8Z
	p1E3BH/cwHHh3FWshmFvDsc8LSk1HNIAJb0eOBWoeHv2brwbCcqQ1NYHCOmowa9uI9EZFCfK2pF
	XUKQxv0/UFJs94hJrevnIQOiEDExHwgzhVUiHMX3e4i2outSBapoADXADs1KAZqQ/xtc1WwqgmH
	cCNRVBbygw8pAYLldLZZjrIm0xcL/zKdQyzb3QFZVFSK/p9a8ooJsN6dsMd7T9m3loOripfe80m
	3uUcdWjjohn7CFTjcNhR6rI7AGmV3AX7jtBMalId3mW46qUvE1fety+5sa0dxujLouuHpNKjIii
	pQYZyJqEVFPO+DgUR59iU=
X-Received: by 2002:a05:6a20:cc8e:b0:3aa:f9cb:d438 with SMTP id adf61e73a8af0-3b5e32c48ccmr4294917637.21.1781194636389;
        Thu, 11 Jun 2026 09:17:16 -0700 (PDT)
Received: from localhost ([2a03:2880:ff:4f::])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c865880a1aasm2190461a12.22.2026.06.11.09.17.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Jun 2026 09:17:16 -0700 (PDT)
From: Bobby Eshleman <bobbyeshleman@gmail.com>
Date: Thu, 11 Jun 2026 08:28:41 -0700
Message-Id: <20260611-tcpdm-large-niovs-v2-0-ee2bf15e7523@meta.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIACrUKmoC/23NQQqDMBBA0auEWTslJjUBV72HuAhx1IGaSBKCR
 bx7Qbrs+sP7J2RKTBl6cUKiypljgF6oRoBfXVgIeYJegJLKSCMVFr9PG75dWggDx5qxM53STrt
 WWguNgD3RzMdtDhCoYKCjwNgIWDmXmD73rLZ3/7n6j1tblDhr657OG6uMf21U3MPHDcbrur7y/
 TtwuwAAAA==
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
Message-ID-Hash: G73VLCAPSL5JHAS6R45IB3VQRGR7MJHU
X-Message-ID-Hash: G73VLCAPSL5JHAS6R45IB3VQRGR7MJHU
X-MailFrom: bobbyeshleman@gmail.com
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
CC: netdev@vger.kernel.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-kselftest@vger.kernel.org, sdf@fomichev.me, razor@blackwall.org, daniel@iogearbox.net, almasrymina@google.com, matttbe@kernel.org, skhawaja@google.com, dw@davidwei.uk, Bobby Eshleman <bobbyeshleman@meta.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH net-next v2 0/4] net: devmem: allow rx-buf-size > PAGE_SIZE per binding
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/G73VLCAPSL5JHAS6R45IB3VQRGR7MJHU/>
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
	FORGED_RECIPIENTS(0.00)[m:donald.hunter@gmail.com,m:kuba@kernel.org,m:davem@davemloft.net,m:edumazet@google.com,m:pabeni@redhat.com,m:horms@kernel.org,m:andrew+netdev@lunn.ch,m:kraxel@redhat.com,m:vivek.kasireddy@intel.com,m:sumit.semwal@linaro.org,m:christian.koenig@amd.com,m:shuah@kernel.org,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:linux-media@vger.kernel.org,m:linaro-mm-sig@lists.linaro.org,m:linux-kselftest@vger.kernel.org,m:sdf@fomichev.me,m:razor@blackwall.org,m:daniel@iogearbox.net,m:almasrymina@google.com,m:matttbe@kernel.org,m:skhawaja@google.com,m:dw@davidwei.uk,m:bobbyeshleman@meta.com,m:donaldhunter@gmail.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org,davemloft.net,google.com,redhat.com,lunn.ch,intel.com,linaro.org,amd.com];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_SENDER(0.00)[bobbyeshleman@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	RCPT_COUNT_TWELVE(0.00)[26];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 98BAC67361F

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
Changes in v2:
- Use NL_SET_ERR_MSG_FMT for sg alignment failure details (Stan)
- Keep -E2BIG (not a direct ask, but seemed preferred, Stan)
- Update udmabuf commit message and comments explaining why
  "one sg ent per folio" is useful (Christian)
- Set/restore nr_hugepages in py harness (Stan)
- Link to v1: https://lore.kernel.org/r/20260603-tcpdm-large-niovs-v1-0-f37a4ac6726c@meta.com

---
Bobby Eshleman (4):
      net: devmem: allow rx-buf-size > PAGE_SIZE per dmabuf binding
      udmabuf: emit one sg entry per pinned folio
      selftests/net: ncdevmem: add -b option to set rx-buf-size on bind
      selftests/net: devmem.py: add check_rx_large_niov

 Documentation/netlink/specs/netdev.yaml            |  8 +++
 drivers/dma-buf/udmabuf.c                          | 52 +++++++++++++++++--
 include/uapi/linux/netdev.h                        |  1 +
 net/core/devmem.c                                  | 51 +++++++++++--------
 net/core/devmem.h                                  | 13 +++--
 net/core/netdev-genl-gen.c                         |  5 +-
 net/core/netdev-genl.c                             | 19 ++++++-
 tools/include/uapi/linux/netdev.h                  |  1 +
 tools/testing/selftests/drivers/net/hw/config      |  1 +
 tools/testing/selftests/drivers/net/hw/devmem.py   | 12 ++++-
 .../testing/selftests/drivers/net/hw/devmem_lib.py | 58 +++++++++++++++++++++-
 tools/testing/selftests/drivers/net/hw/ncdevmem.c  | 49 ++++++++++++++++--
 .../testing/selftests/drivers/net/hw/nk_devmem.py  | 11 +++-
 13 files changed, 238 insertions(+), 43 deletions(-)
---
base-commit: 518d8d0199538a4d6d5e51064044ece71e0c42e7
change-id: 20260602-tcpdm-large-niovs-56523a3a1077

Best regards,
-- 
Bobby Eshleman <bobbyeshleman@meta.com>

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
