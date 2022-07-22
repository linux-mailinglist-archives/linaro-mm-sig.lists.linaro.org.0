Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id DC7D857DC70
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 22 Jul 2022 10:34:49 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9CEC94798C
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 22 Jul 2022 08:34:48 +0000 (UTC)
Received: from mo-csw.securemx.jp (mo-csw1514.securemx.jp [210.130.202.153])
	by lists.linaro.org (Postfix) with ESMTPS id D02573F1BB
	for <linaro-mm-sig@lists.linaro.org>; Fri, 22 Jul 2022 08:34:44 +0000 (UTC)
Received: by mo-csw.securemx.jp (mx-mo-csw1514) id 26M8YCXB031306; Fri, 22 Jul 2022 17:34:12 +0900
X-Iguazu-Qid: 34trpbd9I5QiEQLLEO
X-Iguazu-QSIG: v=2; s=0; t=1658478851; q=34trpbd9I5QiEQLLEO; m=EUB3sIfsoyZ7QDFQ7pwFPBHYPpSEDZRaTCda0U/hj4g=
Received: from imx12-a.toshiba.co.jp ([38.106.60.135])
	by relay.securemx.jp (mx-mr1513) id 26M8YAPq008986
	(version=TLSv1.2 cipher=AES128-GCM-SHA256 bits=128 verify=NOT);
	Fri, 22 Jul 2022 17:34:10 +0900
X-SA-MID: 39258132
From: Yuji Ishikawa <yuji2.ishikawa@toshiba.co.jp>
To: Rob Herring <robh+dt@kernel.org>, Hans Verkuil <hverkuil@xs4all.nl>,
        Nobuhiro Iwamatsu <nobuhiro1.iwamatsu@toshiba.co.jp>,
        Jonathan Corbet <corbet@lwn.net>,
        Sumit Semwal <sumit.semwal@linaro.org>,
        =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
Date: Fri, 22 Jul 2022 17:28:53 +0900
X-TSB-HOP2: ON
Message-Id: <20220722082858.17880-1-yuji2.ishikawa@toshiba.co.jp>
X-Mailer: git-send-email 2.17.1
Message-ID-Hash: UA3ERZMUVYHSLSA67TOQ2GC7UBKYLI7W
X-Message-ID-Hash: UA3ERZMUVYHSLSA67TOQ2GC7UBKYLI7W
X-MailFrom: yuji2.ishikawa@toshiba.co.jp
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, yuji2.ishikawa@toshiba.co.jp
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v2 0/5] Add Toshiba Visconti DNN image processing accelerator driver
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/UA3ERZMUVYHSLSA67TOQ2GC7UBKYLI7W/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

This series is the DNN image processing accelerator driver for Toshiba's ARM SoC, Visconti[0].
This provides DT binding documentation, device driver, MAINTAINER files and documents.

Best regards,
Yuji

[0]: https://toshiba.semicon-storage.com/ap-en/semiconductor/product/image-recognition-processors-visconti.html

dt-bindings: soc: visconti: Add Toshiba Visconti DNN image processing accelerator bindings
  v1 -> v2:
    - No update

soc: visconti: Add Toshiba Visconti image processing accelerator common source
  v1 -> v2:
    - checked with checkpatch.pl --strict

soc: visconti: Add Toshiba Visconti DNN image processing accelerator
  v1 -> v2:
    - checked with checkpatch.pl --strict
    - removed unused code

MAINTAINERS: Add entries for Toshiba Visconti DNN image processing
  v1 -> v2:
    - No update

Documentation: driver-api: visconti: add a description of DNN driver.
  v1 -> v2:
    - newly added documents

Yuji Ishikawa (5):
  dt-bindings: soc: visconti: Add Toshiba Visconti DNN image processing
    accelerator bindings
  soc: visconti: Add Toshiba Visconti image processing accelerator
    common source
  soc: visconti: Add Toshiba Visconti DNN image processing accelerator
  MAINTAINERS: Add entries for Toshiba Visconti DNN image processing
    accelerator
  Documentation: driver-api: visconti: add a description of DNN driver.

 .../soc/visconti/toshiba,visconti-dnn.yaml    |  54 ++
 Documentation/driver-api/visconti/common.rst  | 115 ++++
 Documentation/driver-api/visconti/dnn.rst     | 394 +++++++++++++
 MAINTAINERS                                   |   2 +
 drivers/soc/Kconfig                           |   1 +
 drivers/soc/Makefile                          |   1 +
 drivers/soc/visconti/Kconfig                  |   7 +
 drivers/soc/visconti/Makefile                 |   8 +
 drivers/soc/visconti/dnn/Makefile             |   6 +
 drivers/soc/visconti/dnn/dnn.c                | 523 ++++++++++++++++++
 drivers/soc/visconti/dnn/hwd_dnn.c            | 183 ++++++
 drivers/soc/visconti/dnn/hwd_dnn.h            |  68 +++
 drivers/soc/visconti/dnn/hwd_dnn_reg.h        | 228 ++++++++
 drivers/soc/visconti/ipa_common.c             |  55 ++
 drivers/soc/visconti/ipa_common.h             |  18 +
 drivers/soc/visconti/uapi/dnn.h               |  77 +++
 drivers/soc/visconti/uapi/ipa.h               |  90 +++
 17 files changed, 1830 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/soc/visconti/toshiba,visconti-dnn.yaml
 create mode 100644 Documentation/driver-api/visconti/common.rst
 create mode 100644 Documentation/driver-api/visconti/dnn.rst
 create mode 100644 drivers/soc/visconti/Kconfig
 create mode 100644 drivers/soc/visconti/Makefile
 create mode 100644 drivers/soc/visconti/dnn/Makefile
 create mode 100644 drivers/soc/visconti/dnn/dnn.c
 create mode 100644 drivers/soc/visconti/dnn/hwd_dnn.c
 create mode 100644 drivers/soc/visconti/dnn/hwd_dnn.h
 create mode 100644 drivers/soc/visconti/dnn/hwd_dnn_reg.h
 create mode 100644 drivers/soc/visconti/ipa_common.c
 create mode 100644 drivers/soc/visconti/ipa_common.h
 create mode 100644 drivers/soc/visconti/uapi/dnn.h
 create mode 100644 drivers/soc/visconti/uapi/ipa.h

-- 
2.17.1


_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
