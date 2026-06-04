Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id ZKLLFEBJKWqSTgMAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 10 Jun 2026 13:23:44 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id E0D75668B9A
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 10 Jun 2026 13:23:43 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=gmail.com header.s=20251104 header.b=Aw2SSlsT;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=gmail.com (policy=none)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 02DB940988
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 10 Jun 2026 11:23:43 +0000 (UTC)
Received: from mail-pj1-f41.google.com (mail-pj1-f41.google.com [209.85.216.41])
	by lists.linaro.org (Postfix) with ESMTPS id 350854097C
	for <linaro-mm-sig@lists.linaro.org>; Thu,  4 Jun 2026 00:43:07 +0000 (UTC)
Received: by mail-pj1-f41.google.com with SMTP id 98e67ed59e1d1-36d630c0e35so99291a91.3
        for <linaro-mm-sig@lists.linaro.org>; Wed, 03 Jun 2026 17:43:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1780533786; x=1781138586; darn=lists.linaro.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=gaSc57t4jmRqWa/tEAw7kwxJOfsrDztjZyVRXA4uTHc=;
        b=Aw2SSlsTlZWFM34sd9dx9uLO1WEwNZ85OadoEX+1Cr0YLhTQ6N3qsBi0uP7Dy/AYqy
         FE0ONpn+9dDC6xuFKVkvnAVelSCfFLOpV5CcrAASLgIRlppg+31JPIcDkYrzbHibaxC4
         kKSyAMP0peLBf2uv7DSwC+BwKvjIZN40QACKZ4wzH7zGXv4NalvTuwWPkc5y4+E3kv6u
         TXzljCJ1J4rpByg3A5yvlSSv4unZEl1HsYHCKPJhc9i+szNhAPnFBrnDKMBIk/ZvRuVq
         +IXNxQ5KsVPwwmyMpN210lJ9UH8rf6xgOQEBe/dtz2dAJRQASkXoZN1Y2GQkP8C7j1Nn
         6HpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780533786; x=1781138586;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gaSc57t4jmRqWa/tEAw7kwxJOfsrDztjZyVRXA4uTHc=;
        b=fEft0feiLNyZsMRKUNf02JdMyPqi0yREkfaI2LkPEaIVf3DDuwEd8RnBpridZf0a2Q
         eCuTuIyPFjEuR+UqdyZ7cixE2mh/xLCjSbKqwipTD/MeDW+dXklJux009nvcQxoX8FGC
         9I6pQBGmCZaymaO3HF+pPIQyglINV4jsCclbPBNzr6uTo34R84WKAX7B3xW1ZFNHGT/N
         Trw9GDrfNi7i8ZYnw9+vRZrbnGxlI4+pcR0W8+60YU7K3qaP/bQI340tEw/Xzl2EWLRG
         LIMXhrz9MkOS1iRoE6lzhNhTon1dcAJk9kfMIduV+CpVJ+OW2ENvFIStGQuyJSLnZLvH
         dzBQ==
X-Forwarded-Encrypted: i=1; AFNElJ968VH37fXu998qHw1KltFHmKgDWH/YWuakkvEFQts3XxMSW9cAOawn9zx+L58/qUWCas6swLiy2swQUIAJ@lists.linaro.org
X-Gm-Message-State: AOJu0YxtuDHNuqbv6y3G4g3kkaPlS6DijOtiuxqrwliXQ+cDOM1DSmGF
	X4hQNhNNV1HOzZXWFx/Ua4DrayGvIzrtucTM285NaFcHL9Oeniz3Gw8c
X-Gm-Gg: Acq92OHmDg6Nvkgo2lyEDgqpldDneD+xSLnzshOLXdwVj/tO2FVMbKWLv8Rc57YiRKN
	o/Utk68JY0EzQ6AP8tDlb3dpdjvhvnORYwESRG4RrkuQyviJoymZK+LSzHM1VKtd/wu5OgEqWbJ
	2/rnFOfqKwmUAqltIMtq6Haly2YjnwH2iaZZ2QriPaHWbI8NGXKSXjAgtSnVkb0Cc7TL50oYvzR
	f+oKUqMcawWma7/HVcQ3AtCsLxW2+8n9VU8nnLrbZwtORWXIusDjMZ0o8YnNOyXMpzAiaVg/Gn0
	p0tQRBUT1TFslQtsN4liR70jhjFU+WKPEkjc4O/wsTa4iws52CQVyefxpFHJbpARIFDKAZKRcCs
	Vlk9S49+VSoJg453nNFnDpxMlwmtofoNepjePcgDuPWz//VZZEOcvn8OVtEFMFUql2NhKMjp5x+
	6SZGHObfsQ7cyBoBClGhJF7DUNata3TeqrKeNMeEI=
X-Received: by 2002:a17:90b:3d4e:b0:36b:b3f4:d578 with SMTP id 98e67ed59e1d1-36e30e17847mr5798820a91.15.1780533786256;
        Wed, 03 Jun 2026 17:43:06 -0700 (PDT)
Received: from localhost ([2a03:2880:ff:2::])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-36f6c668f90sm1067665a91.6.2026.06.03.17.43.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Jun 2026 17:43:05 -0700 (PDT)
From: Bobby Eshleman <bobbyeshleman@gmail.com>
Date: Wed, 03 Jun 2026 17:42:57 -0700
Message-Id: <20260603-tcpdm-large-niovs-v1-0-f37a4ac6726c@meta.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIABLKIGoC/x3MQQqEMAwF0KuEvzZQK1boVcRF0YwTmInSFhHEu
 wu+A7wLRbJKQaQLWQ4tuhkitQ1h/iZbhXVBJHjngwvOc5335c+/lFdh0+0o3Ifed6lLrRsGNIQ
 9y0fP9xxhUtnkrJju+wGj3Y/WbQAAAA==
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
X-MailFrom: bobbyeshleman@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 7FQSV4LUJAZQM54HFZ6XBVSLHO23P5LB
X-Message-ID-Hash: 7FQSV4LUJAZQM54HFZ6XBVSLHO23P5LB
X-Mailman-Approved-At: Wed, 10 Jun 2026 11:22:50 +0000
CC: netdev@vger.kernel.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-kselftest@vger.kernel.org, sdf@fomichev.me, razor@blackwall.org, daniel@iogearbox.net, almasrymina@google.com, matttbe@kernel.org, skhawaja@google.com, dw@davidwei.uk, Bobby Eshleman <bobbyeshleman@meta.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH net-next 0/4] net: devmem: allow rx-buf-size > PAGE_SIZE per binding
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/7FQSV4LUJAZQM54HFZ6XBVSLHO23P5LB/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [3.09 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_REJECT(1.00)[gmail.com:s=20251104];
	DATE_IN_PAST(1.00)[154];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:donald.hunter@gmail.com,m:kuba@kernel.org,m:davem@davemloft.net,m:edumazet@google.com,m:pabeni@redhat.com,m:horms@kernel.org,m:andrew+netdev@lunn.ch,m:kraxel@redhat.com,m:vivek.kasireddy@intel.com,m:sumit.semwal@linaro.org,m:christian.koenig@amd.com,m:shuah@kernel.org,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:linux-media@vger.kernel.org,m:linaro-mm-sig@lists.linaro.org,m:linux-kselftest@vger.kernel.org,m:sdf@fomichev.me,m:razor@blackwall.org,m:daniel@iogearbox.net,m:almasrymina@google.com,m:matttbe@kernel.org,m:skhawaja@google.com,m:dw@davidwei.uk,m:bobbyeshleman@meta.com,m:donaldhunter@gmail.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org,davemloft.net,google.com,redhat.com,lunn.ch,intel.com,linaro.org,amd.com];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns,lists.linaro.org:from_smtp,meta.com:mid,meta.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: E0D75668B9A

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
Bobby Eshleman (4):
      net: devmem: allow rx-buf-size > PAGE_SIZE per dmabuf binding
      udmabuf: emit one sg entry per pinned folio
      selftests/net: ncdevmem: add -b option to set rx-buf-size on bind
      selftests/net: devmem.py: add check_rx_large_niov

 Documentation/netlink/specs/netdev.yaml            |  8 ++++
 drivers/dma-buf/udmabuf.c                          | 47 ++++++++++++++++---
 include/uapi/linux/netdev.h                        |  1 +
 net/core/devmem.c                                  | 52 +++++++++++++---------
 net/core/devmem.h                                  | 13 ++++--
 net/core/netdev-genl-gen.c                         |  5 ++-
 net/core/netdev-genl.c                             | 18 +++++++-
 tools/include/uapi/linux/netdev.h                  |  1 +
 tools/testing/selftests/drivers/net/hw/config      |  1 +
 tools/testing/selftests/drivers/net/hw/devmem.py   | 12 ++++-
 .../testing/selftests/drivers/net/hw/devmem_lib.py | 46 ++++++++++++++++++-
 tools/testing/selftests/drivers/net/hw/ncdevmem.c  | 49 ++++++++++++++++++--
 .../testing/selftests/drivers/net/hw/nk_devmem.py  | 11 ++++-
 13 files changed, 220 insertions(+), 44 deletions(-)
---
base-commit: dfcc2ff12925d99e858eaf539eaa4aaaf81fe2a6
change-id: 20260602-tcpdm-large-niovs-56523a3a1077

Best regards,
-- 
Bobby Eshleman <bobbyeshleman@meta.com>

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
