Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YDTiEIb94GlloAAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:17:26 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id BA6A3410762
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:17:25 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7D840406B1
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 15:17:24 +0000 (UTC)
Received: from alln-iport-6.cisco.com (alln-iport-6.cisco.com [173.37.142.93])
	by lists.linaro.org (Postfix) with ESMTPS id 380433F683
	for <linaro-mm-sig@lists.linaro.org>; Sat, 15 Nov 2025 20:27:30 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=cisco.com header.s=iport01 header.b=QcMGg5HP;
	spf=pass (lists.linaro.org: domain of kartilak@cisco.com designates 173.37.142.93 as permitted sender) smtp.mailfrom=kartilak@cisco.com;
	dmarc=pass (policy=reject) header.from=cisco.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=cisco.com; i=@cisco.com; l=2460; q=dns/txt;
  s=iport01; t=1763238450; x=1764448050;
  h=from:to:cc:subject:date:message-id:references:
   in-reply-to:content-transfer-encoding:mime-version;
  bh=MFw/Z1Sf8SjzDqIL5mUOFLjLDVfmbv7DCp/A06Y2PGI=;
  b=QcMGg5HPK8Mth2tJfNx0cKD+qkwpXT3IABonqrjLhIHL47qkMfEb+VSu
   CMKb7E8Y76gopdzsOBorWznPrITQ840Vj6W28jb4q6mdD9xSbtDTc+q8y
   xGwIjRKfRpakCmd8xxC8+E4v2CuFSPvQacFY8AdwCfqJGvSV3lWNoVLjD
   hc0UFzGly8zLy/MZ1bDs2n4ODI9/gZ5zkB7pIrrog589+E8RRpYtR3kou
   F2KYJ61wrbQVHWdGQ0kpxaBEXmEe8YBdZfSDkReeazvDeEClUFiWzIrK2
   FAlTaPozuUM3OLGGrWc0a/uY1z7wRAR1fi/WBzxPo/hU7vKKZXKLvk3mo
   Q==;
X-CSE-ConnectionGUID: f9FYliv0TfKtItNXc3YkwQ==
X-CSE-MsgGUID: ZXa/xlEERXipvJoe2h9U0Q==
X-IPAS-Result: =?us-ascii?q?A0AuAAB44Rhp/5AQJK1aHAEBAQEBAQcBARIBAQQEAQFAJ?=
 =?us-ascii?q?YEXBwEBCwGBbVIHghtJiCADhE1fhliCIQOeGoF/DwEBAQ0CUQQBAYUHAoxaA?=
 =?us-ascii?q?iY0CQ4BAgQBAQEBAwIDAQEBAQEBAQEBAQELAQEFAQEBAgEHBYEOE4ZchloBA?=
 =?us-ascii?q?QEBAxIVUhACAQgOCi4xJQIEAQ0FCBqFVAMBAqI0AYFAAooreIEBM4EB4CaBS?=
 =?us-ascii?q?gGIUgGFbjuEPScbgg2BV4IwOD6ERYQTgi8EgiKBDoYnjEyGcVJ4HANZLAFVE?=
 =?us-ascii?q?xcLBwWBIBAzAyAKNC0CFA0QEg8EFgUtHXAMKBIQHxgTYFRAg0kQDAZoDwaBE?=
 =?us-ascii?q?hlJAgICBQIrFTqBaAUBHAYcEgIDAQICOlUNgXcCAgSCHH6BbxsPiTWBCQUoA?=
 =?us-ascii?q?wttPTcGDhsFBIE1BZQeUYIsAYEPgS4OUzCWegGwHwqEHKINF6prmQYiqHQCB?=
 =?us-ascii?q?AIEBQIQAQEGgWg8gVlwFYMiUhkPji0WkxsBtU54AjoCBwsBAQMJk2cBAQ?=
IronPort-PHdr: A9a23:geNZPxXApeu/oqo9zG/sVPr63e3V8K3PAWYlg6HPw5pUeailupP6M
 1OaubNmjUTCWsPQ7PcXw+bVsqW1QWUb+t7Bq3ENdpVQSgUIwdsbhQ0uAcOJSAX7IffmYjZ8H
 ZFqX15+9Hb9Ok9QcPs=
IronPort-Data: A9a23:ryqVpa5j/CLotmFOhK+H4wxRtG7GchMFZxGqfqrLsTDasY5as4F+v
 mMaCziCPP2KZ2f2f9F/aoTn8htV65LRmtdlHgJtqC01Zn8b8sCt6fZ1gavT04J+CuWZESqLO
 u1HMoGowPgcFyGa/lH2dOC98RGQ7InQLpLkEunIJyttcgFtTSYlmHpLlvUw6mJSqYDR7zil5
 5Wr8qUzBHf/g2QpaztNtvrawP9SlK2aVA0w7wRWic9j5Dcyp1FNZLoDKKe4KWfPQ4U8NoaSW
 +bZwbilyXjS9hErB8nNuu6TnpoiG+O60aCm0xK6aoD66vRwjnVaPpUTaJLwXXxqZwChxLid/
 jniWauYEm/FNoWU8AgUvoIx/ytWZcWq85efSZSzXFD6I0DuKxPRL/tS4E4eM9w2y+J2Hzly+
 98ECSwrXhvYtuGp+efuIgVsrpxLwMjDNYcbvDRkiDreF/tjGc+FSKTR7tge1zA17ixMNa+BP
 IxCN3w2MlKZP0En1lQ/UPrSmM+rj2PjcjlRq3qepLE85C7YywkZPL3FboOIIoPUGZUO9qqej
 lD29iPpBjw3Duye0SSn9X/2hr7yxRquDer+E5X9rJaGmma7wm0VAQcREF6+5OK4hWa6WslDM
 AoQ+ywnt69081akJuQRRDWxpHqC+xpZUN1KHqhit0eGy7Hf5ECSAW1soiN9VeHKffQeHFQC/
 lSIhNjuQzdotdWopbi1q994cRva1fApEFI/
IronPort-HdrOrdr: A9a23:99HmaqtkMucOhRnXHMvzpUeM7skCOYAji2hC6mlwRA09TyXGrb
 HMoB1L73/JYWgqOU3IwerwRpVoIUmxyXZ0ibNhW4tKLzOWyVdAS7sSorcKogeQVxEWmdQtr5
 uIH5IObOEYSGIK8voSgzPIXerIouP3jZxA7N22pxwCPGMaDp2IrT0JdjpzeXcGPTWucKBJb6
 Z0kfA33wZIF05nCfiTNz0uZcSGjdvNk57tfB4BADAayCTmt1mVwY+/OSK1mjMFXR1y4ZpKyw
 X4egrCiZmLgrWe8FvxxmXT55NZlJ/K0d1YHvGBjcATN3HFlhuoTJ4JYczDgBkF5MWUrHo6mt
 jFpBkte+5p7WnKQ22zqRzxnyH9zTcV7WP4w1PwuwqhnSW5fkN5NyNyv/McTvLr0TtmgDi66t
 MM44utjesTMfoHplWl2zGHbWAzqqP+mwtTrQdatQ0tbWJZUs4RkWTal3klSqvp20nBmdsaOf
 grA8fG6PlMd1SGK3jfo2l02dSpGm8+BxGcXyE5y4eoOhVt7TlEJnEjtYQit2ZF8Ih4R4hP5u
 zCPKgtnLZSTtUOZaY4AOsaW8O4BmHEXBqJaQupUBnaPbBCP2iIp4/84b0z6u3vcJsUzIEqkJ
 CEVF9Dr2Y9d0/nFMXL1pxW9RLGRnm7QF3Wu4tjzok8vqe5SKvgMCWFRlxrm8y8o+8HCsmeQP
 q3MII+OY6UEYIvI/c/4+TTYegnFZBFarxmhj8SYSP6nv72
X-Talos-CUID: =?us-ascii?q?9a23=3AfDogd2n0KZCAljxl4nKc105ZOwjXOXOM4kbUIlH?=
 =?us-ascii?q?gNWhKVJyJb2+bo5JnjPM7zg=3D=3D?=
X-Talos-MUID: 9a23:mXbNvgWanYy9v4rq/A3cjXZyMOpF2ZSvEF4vlphcu5i5bRUlbg==
X-IronPort-Anti-Spam-Filtered: true
Received: from alln-l-core-07.cisco.com ([173.36.16.144])
  by alln-iport-6.cisco.com with ESMTP/TLS/TLS_AES_256_GCM_SHA384; 15 Nov 2025 20:27:25 +0000
Received: from rcdn-opgw-4.cisco.com (rcdn-opgw-4.cisco.com [72.163.7.165])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by alln-l-core-07.cisco.com (Postfix) with ESMTPS id 0E2A0180001FB
	for <linaro-mm-sig@lists.linaro.org>; Sat, 15 Nov 2025 20:27:25 +0000 (GMT)
X-CSE-ConnectionGUID: 9IGLtmi+SbWDArDZBSRfYQ==
X-CSE-MsgGUID: OwvumJ/eRDCics6ueVBrMQ==
X-IronPort-AV: E=Sophos;i="6.19,307,1754956800";
   d="scan'208";a="61701058"
Received: from mail-dm5pr08cu00407.outbound.protection.outlook.com (HELO DM5PR08CU004.outbound.protection.outlook.com) ([40.93.13.103])
  by rcdn-opgw-4.cisco.com with ESMTP/TLS/TLS_AES_256_GCM_SHA384; 15 Nov 2025 20:27:23 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=y/Zfi6W5LuTTMhUxXAydYPEJj3UhQ/r7u8BdXcIgbkAPXVDgR/f0IlAeGZ4ZbthcdIkoDOQyTtXRRMXX+0xQGGTlAn4kVUhcSjtcSsono/lh9PItyxzjlA5c8AvTJ75yG5gdnNyACHBSOkWBUCfQ4xma5G5OnNkAKaYcymBUnYa7hkvOhtt5GbI07swmSEGQF2J+6X4+BMq19WQ3fNOhUkFr5cq34QZSx70pee6VqP8x3MZvi9oGeoFf8eyqxsOSYU2fWL1Ka2ULZESAzihOOLjEb2W7vnJJYHk30FUp3H3Dd0+dd18SMk+IdkU7u1li8QZwnzgQA/orW6dXQNLlYw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MFw/Z1Sf8SjzDqIL5mUOFLjLDVfmbv7DCp/A06Y2PGI=;
 b=ejqVQ290Ii4mWw5iKhsOXD8PBvwwHu8O7BnuT7/J6DKsLxVg0KfJzWz33QUM9JTsFUzE6PDEnzszsnM0pIdnOXc72br0NOy9MsyBDdYZqp46yDbHfUWtnjkw+FQU+s52nWUJhTon5oCWQVGbz+4NcjtTFjOyALWSqdYFY8RkKoavntXken2PlB4pIsNJnjNWVFAYP/l5rpVRD8EpU5o6oGDpOwwfPm4mMmacc9IopIJz2ymCEKxCCVK+/y5pmwaq9DfNUhm8dsb/LwWFvTRCeEzeoxpDdhC87EClZ+DS6dfNnEWkpJc8MqBbvJ3/RiqstVlUC5FCdNlNiJMSKyloCQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cisco.com; dmarc=pass action=none header.from=cisco.com;
 dkim=pass header.d=cisco.com; arc=none
Received: from SJ0PR11MB5896.namprd11.prod.outlook.com (2603:10b6:a03:42c::19)
 by DS4PPFE70B31BEF.namprd11.prod.outlook.com (2603:10b6:f:fc02::5a) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9320.19; Sat, 15 Nov
 2025 20:27:20 +0000
Received: from SJ0PR11MB5896.namprd11.prod.outlook.com
 ([fe80::2081:bcd4:cb3e:e2dd]) by SJ0PR11MB5896.namprd11.prod.outlook.com
 ([fe80::2081:bcd4:cb3e:e2dd%4]) with mapi id 15.20.9320.018; Sat, 15 Nov 2025
 20:27:19 +0000
From: "Karan Tilak Kumar (kartilak)" <kartilak@cisco.com>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>, Corey Minyard
	<corey@minyard.net>, =?iso-8859-2?Q?Christian_K=F6nig?=
	<christian.koenig@amd.com>, "Dr. David Alan Gilbert" <linux@treblig.org>,
	Alex Deucher <alexander.deucher@amd.com>, Thomas Zimmermann
	<tzimmermann@suse.de>, Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
	Rob Clark <robin.clark@oss.qualcomm.com>, Matthew Brost
	<matthew.brost@intel.com>, Ulf Hansson <ulf.hansson@linaro.org>, Aleksandr
 Loktionov <aleksandr.loktionov@intel.com>, Vitaly Lifshits
	<vitaly.lifshits@intel.com>, Manivannan Sadhasivam <mani@kernel.org>, Niklas
 Cassel <cassel@kernel.org>, Calvin Owens <calvin@wbinvd.org>, Vadim Fedorenko
	<vadim.fedorenko@linux.dev>, Sagi Maimon <maimon.sagi@gmail.com>, "Martin K.
 Petersen" <martin.petersen@oracle.com>, Hans Verkuil
	<hverkuil+cisco@kernel.org>, Casey Schaufler <casey@schaufler-ca.com>, Steven
 Rostedt <rostedt@goodmis.org>, Petr Mladek <pmladek@suse.com>, Viacheslav
 Dubeyko <Slava.Dubeyko@ibm.com>, Max Kellermann <max.kellermann@ionos.com>,
	"linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"openipmi-developer@lists.sourceforge.net"
	<openipmi-developer@lists.sourceforge.net>, "linux-media@vger.kernel.org"
	<linux-media@vger.kernel.org>, "dri-devel@lists.freedesktop.org"
	<dri-devel@lists.freedesktop.org>, "linaro-mm-sig@lists.linaro.org"
	<linaro-mm-sig@lists.linaro.org>, "amd-gfx@lists.freedesktop.org"
	<amd-gfx@lists.freedesktop.org>, "linux-arm-msm@vger.kernel.org"
	<linux-arm-msm@vger.kernel.org>, "freedreno@lists.freedesktop.org"
	<freedreno@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
	<intel-xe@lists.freedesktop.org>, "linux-mmc@vger.kernel.org"
	<linux-mmc@vger.kernel.org>, "netdev@vger.kernel.org"
	<netdev@vger.kernel.org>, "intel-wired-lan@lists.osuosl.org"
	<intel-wired-lan@lists.osuosl.org>, "linux-pci@vger.kernel.org"
	<linux-pci@vger.kernel.org>, "linux-s390@vger.kernel.org"
	<linux-s390@vger.kernel.org>, "linux-scsi@vger.kernel.org"
	<linux-scsi@vger.kernel.org>, "linux-staging@lists.linux.dev"
	<linux-staging@lists.linux.dev>, "ceph-devel@vger.kernel.org"
	<ceph-devel@vger.kernel.org>, "linux-trace-kernel@vger.kernel.org"
	<linux-trace-kernel@vger.kernel.org>
Thread-Topic: [PATCH v3 20/21] scsi: snic: Switch to use %ptSp
Thread-Index: AQHcVK6i2TuKalB1aEOcW1L+o6TUn7T0MoDA
Date: Sat, 15 Nov 2025 20:27:19 +0000
Message-ID: 
 <SJ0PR11MB58960101609D15FB8F6FB5B2C3CBA@SJ0PR11MB5896.namprd11.prod.outlook.com>
References: <20251113150217.3030010-1-andriy.shevchenko@linux.intel.com>
 <20251113150217.3030010-21-andriy.shevchenko@linux.intel.com>
In-Reply-To: <20251113150217.3030010-21-andriy.shevchenko@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR11MB5896:EE_|DS4PPFE70B31BEF:EE_
x-ms-office365-filtering-correlation-id: 06dc7afe-7be7-41d7-220d-08de24856052
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: 
 BCL:0;ARA:13230040|7416014|376014|366016|1800799024|921020|38070700021;
x-microsoft-antispam-message-info: 
 =?iso-8859-2?Q?UTyLHl4BJYTK4mtPS91Sw2Srl0NHvlfMZaTqLxu2rUWxwfXqFudlc+5TWZ?=
 =?iso-8859-2?Q?BJrEBNZocoITs1OavCRqzXqvbXtC3nyiTs+X6BNCP++7KlQ2g2MJnYpALp?=
 =?iso-8859-2?Q?Bn5YPtijrc89YM4uqb1zvNiGQUKCmcJm5aV9n2jDlaisDBGoiOEdehli0Z?=
 =?iso-8859-2?Q?AiBZgIYvmeuLyJ94TRvdhfcWNgAInVk2bzv3iJn+ETi2yjnYFqeJDEsP/c?=
 =?iso-8859-2?Q?52tSR8uLyZ/cTHCDYdEy2M4TMyDvk7xp0fRxtDf6gySeGMeb9hFUl3m94o?=
 =?iso-8859-2?Q?9QGxesrQwqKEd/FjIbfevU9AIIu/4425oQt60PEDl2KHxaaeh+AA/kE+If?=
 =?iso-8859-2?Q?cTIhv+ekBi5Kio8han64MSlNeDN+sR6xKhQ/jxgIlLI9yNDFUyww8nWAm5?=
 =?iso-8859-2?Q?SxG/facdPQxoPEpca86hn/+obDhPgWbR/ztj7tbF7ANig0cXm/9lKdnZoZ?=
 =?iso-8859-2?Q?e2S/yQsrsL8JID1eQiuiQr7psiOVeOBrtmr5hP9t6gIIVMZnZvIcwbi1Dc?=
 =?iso-8859-2?Q?pIvEJrA62KfIEsG0lGAYmYo4C0gZHqFgr7DWsaVfEAJWKIQEw+NVLL06fR?=
 =?iso-8859-2?Q?kxKmQM6BCA0FLcSlIScOrAAOBXrkQx8CDVbtdiiK6WgcSEAZeGneow5obu?=
 =?iso-8859-2?Q?DAj3Um0LuFxhd4vwv0VnU/9xHqXWAgIWM8XtzAwyS//bRDdCRnV1M1Ynt3?=
 =?iso-8859-2?Q?a5G+dYsTHrt3OFCJQcrYObQ6i3mZy/rMEXFoSyhPJXNNEdgWxwoB1HncUE?=
 =?iso-8859-2?Q?4rYNimG0/N/xCyPNM8ep24M113OR2BqbeCl3DNYllfbQxGN78FCOYN6ZIE?=
 =?iso-8859-2?Q?phsDl0tQWTOljwdp7051kUzoU0wbE9PpBzs61KFHlB25iEfK2WgEBoV82H?=
 =?iso-8859-2?Q?C3yaXZ0BCTPUNLjRuQmgvzHU5ng4f8VDQtXXPfR+oYzmwJKohYU9q+EL+t?=
 =?iso-8859-2?Q?p41Xg0+NxjykvmlvZM0im3m1zsEQ6O7xp9jzLSW3CSy7Ug4BD8U/f3loX6?=
 =?iso-8859-2?Q?m2dgZ7IV42D8gpPaSgZGxQfxdjuNZF06eztZWNwwtTbG2xJCCy5kJDjABj?=
 =?iso-8859-2?Q?kprDaZzeCplxAQW8xfkkmstWs5hIltTmdYlLszIG41MjqxWZJZpClawbb1?=
 =?iso-8859-2?Q?XipTfYbbjUUTJ5AY/cJ94Ocn6B1jSeJph/3BbItNRMvxRi6ONwCwbBDbP+?=
 =?iso-8859-2?Q?Le6I4IDVHcH5ofHexkpBJuMrroWBuSTjhDDNC3TqJdl72rmfZgLyVoS77N?=
 =?iso-8859-2?Q?yU/NIXbFlb8l9dK8q5jipLd1/FVk4Pp2P60jy+9m9cVnFbtvQjhXDypzeb?=
 =?iso-8859-2?Q?Ko1fH/QTTvV8pcNWJXq7fLf1O2d3JWe1yLLsUfK2TmQq0D5l5DpbB890yC?=
 =?iso-8859-2?Q?BVF/Ar5qTiLG7xggV8j4UXRb++gCvrDvk/yLsnEeOoqoE6pmrgwYAC6qZd?=
 =?iso-8859-2?Q?7sl4WiSn6wVEF9onXMgQmhjZwpqInrPFVmYPD5v5xlZBo9t8R0x2wBdi0r?=
 =?iso-8859-2?Q?1cJFwkDZ8sMDxKKKjLHjDI1tR9ldHAmzEmiKNR0GMuTz2ixBFx6wGgLXzl?=
 =?iso-8859-2?Q?wRoYHekrIzXtWBvjBDW4wBo0MryqgrcAtLVl4aPMAV4isfK9tw=3D=3D?=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ0PR11MB5896.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(7416014)(376014)(366016)(1800799024)(921020)(38070700021);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-2?Q?mKPbxCR50Zo/kBjFEIBIzbg6Es+ioxMMbEP7y4nJHK5XxBuKmBIhsyNe+c?=
 =?iso-8859-2?Q?P2PSImE1GXaPLwYEl2o0/N61ZqojPjfvrKsOv95iPU39dTSM2smMfyKa+b?=
 =?iso-8859-2?Q?yJ4MGTfyQcIrBV8ERN3vhUzyykJsgm9hEjRp0sYKTEOshqL4DV0ZfF0XIg?=
 =?iso-8859-2?Q?gSDYhrSwytejuBS2OhEKMlIRkHHQ7vytYCaFWfly2CZuaC6WJXN+qiqsDq?=
 =?iso-8859-2?Q?1wx+Flmo+eU+kxwC2S6ohnAeGzoxOeATpzP8czrMmvNgNv2SUtLjE6cpa6?=
 =?iso-8859-2?Q?CclM+6tyecZ4BTj7JPQNb+6McoBOVK2q7+LBl8VLvNUQ7Auam18+LneqCQ?=
 =?iso-8859-2?Q?OdOlDAEMcBPZg8du9cjYXV5ziDfXS8eYRmiGGpRe07zxj+E8FoJ6/CTVMd?=
 =?iso-8859-2?Q?7Kgi/HmvzryfBpo19AiuIOsdQYexfBhlJrLeDouh2L4yI08/Bbbl/kF8S5?=
 =?iso-8859-2?Q?+h6QuqJAMGwbkVFi3H1iqPsWXwLhY+gBMTbRuAnRl3CW/Yqzn1g39aa01o?=
 =?iso-8859-2?Q?cSQBDMI/SLuz65WdsanquiGJtbc/0CizuwL73kKQEb3Npn7di05o36xFWv?=
 =?iso-8859-2?Q?DEHcIldFhQXWwU2/gi5S2mXbMZmMCcyxEChQZkp0IE5lY0kODGyWfdDf2y?=
 =?iso-8859-2?Q?bETAGONsgtujjymUy1NAzor3kNZfB5tXwvpdVhrcAXo6LgPM0rFNGD6A58?=
 =?iso-8859-2?Q?6e/TskoSTgrkkg2uQDl2fzAYuGSIWLRUOariSlHuDDWemN2wBqBA0MUTPl?=
 =?iso-8859-2?Q?hgWCGKJIeDmhFv0/Y6bb+DT1H8rfdgxFfpEsh0+GSrBLTQhdDNi1t12f6f?=
 =?iso-8859-2?Q?XvROYBBSf7yzbEeHNW061lBKryfZqrvEHoMQuxPZKog/eOcdils30zwWnx?=
 =?iso-8859-2?Q?b/g6Qe2gspFfKmOdFOxepWKUsWsbnn8706go1E0uxXQTSvmXBcWwXBiYOd?=
 =?iso-8859-2?Q?XQcuKAqoZHHqw9Fb33/Qls/MseykH+NwDBNjX8o7TzR42pQKLf0HRYYGmb?=
 =?iso-8859-2?Q?0TLbowvsUzqn8Lnw42QWD5zzs9U80/mBCiHgHGcw1sFZXpgtC7b35d9BMt?=
 =?iso-8859-2?Q?zmA+oMzsghS3CdaIpJDV6n6mkI4QAlzbJ3RtlkXKbZ9eyBsA+YLQxaQq7p?=
 =?iso-8859-2?Q?HlVl87dlyRvwiXVa6gN4AxQQFclSPqONjcJ0ONO8DnDed4HSKwTNi5Ck1a?=
 =?iso-8859-2?Q?L2SYeW3kbJ41H7lF8WtreIUTJlevxAXf9H3833F5uA/caq+ev/Kf0FdDGK?=
 =?iso-8859-2?Q?yzS1iLutsB5PRhD1boh2gNU8RNC+6uPW1HLm0zHdUv6O4FqR3bbk/cLXOO?=
 =?iso-8859-2?Q?11lyG2zvkvia2pfWVROOpk8PgmvBHIHfCsIaDBWk9vXHFIgB+XyRPiaTTS?=
 =?iso-8859-2?Q?bsGblhc1scXXBJm6wDK24/nRbjFauqXawoxqAO16Jnavr6awCe+E0I5Ryf?=
 =?iso-8859-2?Q?nqUSFrJWfmemtxmMsGaUrdB9yWH/b6Zh2b4cYt5w+ekjkzVh5jn9WBJH9E?=
 =?iso-8859-2?Q?Dk9asRPl15WV6Ci7yTnuTI0CQdvVNtek4nLjE5XF2Jr3UX0Z/+U8K7i8QQ?=
 =?iso-8859-2?Q?yimx4UwBS+uDjiCMwzI1l50RwO5DpDjuoKLQabZf9rzmCxWZaarV19F+IU?=
 =?iso-8859-2?Q?RR+FiRm8NFYq8q/t4x9gOYsXV9u/TNMndx?=
MIME-Version: 1.0
X-OriginatorOrg: cisco.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5896.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 06dc7afe-7be7-41d7-220d-08de24856052
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Nov 2025 20:27:19.8090
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 5ae1af62-9505-4097-a69a-c1553ef7840e
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 6sGSzNOwK5N2JX7LP+uBMy+DCipcCcM2IKRDSemuaKx2VgJ+Cpek7Aeyqj1K9YjSnc1FgC1NdcbLcIoAPUC6Og==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS4PPFE70B31BEF
X-Outbound-SMTP-Client: 72.163.7.165, rcdn-opgw-4.cisco.com
X-Outbound-Node: alln-l-core-07.cisco.com
X-Spamd-Bar: --------
X-MailFrom: kartilak@cisco.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: PAX5LHS6G4CFCAUHSO5AXWRW4TL6EXAM
X-Message-ID-Hash: PAX5LHS6G4CFCAUHSO5AXWRW4TL6EXAM
X-Mailman-Approved-At: Thu, 16 Apr 2026 14:57:03 +0000
CC: Rasmus Villemoes <linux@rasmusvillemoes.dk>, Sergey Senozhatsky <senozhatsky@chromium.org>, Jonathan Corbet <corbet@lwn.net>, Sumit Semwal <sumit.semwal@linaro.org>, Gustavo Padovan <gustavo@padovan.org>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Dmitry Baryshkov <lumag@kernel.org>, Abhinav Kumar <abhinav.kumar@linux.dev>, Jessica Zhang <jesszhan0024@gmail.com>, Sean Paul <sean@poorly.run>, Marijn Suijten <marijn.suijten@somainline.org>, Konrad Dybcio <konradybcio@kernel.org>, Lucas De Marchi <lucas.demarchi@intel.com>, =?iso-8859-2?Q?Thomas_Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Vladimir Oltean <olteanv@gmail.com>, Andrew Lunn <andrew@lunn.ch>, "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, "Narsimhulu Musini (nmusini)" <nmusini@cisco.com>, Paolo Abeni 
 <pabeni@redhat.com>, Tony Nguyen <anthony.l.nguyen@intel.com>, Przemek Kitszel <przemyslaw.kitszel@intel.com>, =?iso-8859-2?Q?Krzysztof_Wilczy=F1ski?= <kwilczynski@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, Rodolfo Giometti <giometti@enneenne.com>, Jonathan Lemon <jonathan.lemon@gmail.com>, Richard Cochran <richardcochran@gmail.com>, Stefan Haberland <sth@linux.ibm.com>, Jan Hoeppner <hoeppner@linux.ibm.com>, Heiko Carstens <hca@linux.ibm.com>, Vasily Gorbik <gor@linux.ibm.com>, Alexander Gordeev <agordeev@linux.ibm.com>, Christian Borntraeger <borntraeger@linux.ibm.com>, Sven Schnelle <svens@linux.ibm.com>, "Satish Kharat (satishkh)" <satishkh@cisco.com>, "Sesidhar Baddela (sebaddel)" <sebaddel@cisco.com>, "James E.J. Bottomley" <James.Bottomley@HansenPartnership.com>, Mauro Carvalho Chehab <mchehab@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Xiubo Li <xiubli@redhat.com>, Ilya Dryomov <idryomov@gmail.com>, Masami 
 Hiramatsu <mhiramat@kernel.org>, Mathieu Desnoyers <mathieu.desnoyers@efficios.com>, Andrew Morton <akpm@linux-foundation.org>, "Gian Carlo Boffa (gcboffa)" <gcboffa@cisco.com>, "Arulprabhu Ponnusamy (arulponn)" <arulponn@cisco.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 20/21] scsi: snic: Switch to use %ptSp
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ESJSTMJJSQY2GFRJC2RDTPYGYU7HL5HC/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [4.99 / 15.00];
	DMARC_POLICY_REJECT(2.00)[cisco.com : SPF not aligned (relaxed), No valid DKIM,reject];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DATE_IN_PAST(1.00)[3642];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	GREYLIST(0.00)[pass,meta];
	FREEMAIL_TO(0.00)[linux.intel.com,minyard.net,amd.com,treblig.org,suse.de,oss.qualcomm.com,intel.com,linaro.org,kernel.org,wbinvd.org,linux.dev,gmail.com,oracle.com,schaufler-ca.com,goodmis.org,suse.com,ibm.com,ionos.com,vger.kernel.org,lists.sourceforge.net,lists.freedesktop.org,lists.linaro.org,lists.osuosl.org,lists.linux.dev];
	FREEMAIL_CC(0.00)[rasmusvillemoes.dk,chromium.org,lwn.net,linaro.org,padovan.org,gmail.com,ffwll.ch,linux.intel.com,kernel.org,linux.dev,poorly.run,somainline.org,intel.com,lunn.ch,davemloft.net,google.com,cisco.com,redhat.com,enneenne.com,linux.ibm.com,HansenPartnership.com,linuxfoundation.org,efficios.com,linux-foundation.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_SPAM(0.00)[0.979];
	RCVD_COUNT_SEVEN(0.00)[7];
	FROM_NEQ_ENVFROM(0.00)[kartilak@cisco.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_GT_50(0.00)[95];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig,cisco];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[SJ0PR11MB5896.namprd11.prod.outlook.com:mid,cisco.com:email,oracle.com:email,intel.com:email,lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email]
X-Rspamd-Queue-Id: BA6A3410762
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Thursday, November 13, 2025 6:33 AM, Andy Shevchenko <andriy.shevchenko@linux.intel.com> wrote:
>
> Use %ptSp instead of open coded variants to print content of
> struct timespec64 in human readable format.
>
> Reviewed-by: Martin K. Petersen <martin.petersen@oracle.com>
> Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
> ---
> drivers/scsi/snic/snic_debugfs.c | 10 ++++------
> drivers/scsi/snic/snic_trc.c     |  5 ++---
> 2 files changed, 6 insertions(+), 9 deletions(-)
>
> diff --git a/drivers/scsi/snic/snic_debugfs.c b/drivers/scsi/snic/snic_debugfs.c
> index 9dd975b36b5b..edf3e5ef28a6 100644
> --- a/drivers/scsi/snic/snic_debugfs.c
> +++ b/drivers/scsi/snic/snic_debugfs.c
> @@ -282,8 +282,8 @@ snic_stats_show(struct seq_file *sfp, void *data)
> jiffies_to_timespec64(stats->misc.last_ack_time, &last_ack_tms);
>
> seq_printf(sfp,
> -                "Last ISR Time               : %llu (%8llu.%09lu)\n"
> -                "Last Ack Time               : %llu (%8llu.%09lu)\n"
> +                "Last ISR Time               : %llu (%ptSp)\n"
> +                "Last Ack Time               : %llu (%ptSp)\n"
> "Ack ISRs                    : %llu\n"
> "IO Cmpl ISRs                : %llu\n"
> "Err Notify ISRs             : %llu\n"
> @@ -298,10 +298,8 @@ snic_stats_show(struct seq_file *sfp, void *data)
> "Queue Ramp Down             : %lld\n"
> "Queue Last Queue Depth      : %lld\n"
> "Target Not Ready            : %lld\n",
> -                (u64) stats->misc.last_isr_time,
> -                last_isr_tms.tv_sec, last_isr_tms.tv_nsec,
> -                (u64)stats->misc.last_ack_time,
> -                last_ack_tms.tv_sec, last_ack_tms.tv_nsec,
> +                (u64) stats->misc.last_isr_time, &last_isr_tms,
> +                (u64) stats->misc.last_ack_time, &last_ack_tms,
> (u64) atomic64_read(&stats->misc.ack_isr_cnt),
> (u64) atomic64_read(&stats->misc.cmpl_isr_cnt),
> (u64) atomic64_read(&stats->misc.errnotify_isr_cnt),
> diff --git a/drivers/scsi/snic/snic_trc.c b/drivers/scsi/snic/snic_trc.c
> index c2e5ab7e976c..6bad1ea9a6a7 100644
> --- a/drivers/scsi/snic/snic_trc.c
> +++ b/drivers/scsi/snic/snic_trc.c
> @@ -56,9 +56,8 @@ snic_fmt_trc_data(struct snic_trc_data *td, char *buf, int buf_sz)
> jiffies_to_timespec64(td->ts, &tmspec);
>
> len += snprintf(buf, buf_sz,
> -                     "%llu.%09lu %-25s %3d %4x %16llx %16llx %16llx %16llx %16llx\n",
> -                     tmspec.tv_sec,
> -                     tmspec.tv_nsec,
> +                     "%ptSp %-25s %3d %4x %16llx %16llx %16llx %16llx %16llx\n",
> +                     &tmspec,
> td->fn,
> td->hno,
> td->tag,
> --
> 2.50.1
>
>

Thanks for the change, Andy.

Acked-by: Karan Tilak Kumar <kartilak@cisco.com>

Regards,
Karan
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
