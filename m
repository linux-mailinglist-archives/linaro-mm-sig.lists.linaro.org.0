Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iKybFtQ/DGqqawUAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 19 May 2026 12:47:48 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id D725A57CC64
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 19 May 2026 12:47:47 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id DFE0D3F829
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 19 May 2026 10:47:46 +0000 (UTC)
Received: from BN1PR04CU002.outbound.protection.outlook.com (mail-eastus2azon11010003.outbound.protection.outlook.com [52.101.56.3])
	by lists.linaro.org (Postfix) with ESMTPS id 1DB5A3F743
	for <linaro-mm-sig@lists.linaro.org>; Mon, 18 May 2026 15:55:54 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=u72INwTA;
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}");
	spf=pass (lists.linaro.org: domain of lizhi.hou@amd.com designates 52.101.56.3 as permitted sender) smtp.mailfrom=lizhi.hou@amd.com;
	dmarc=pass (policy=quarantine) header.from=amd.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ScSr7O28quehO675EXWxi/J+C2MMKX/SfKBJvhzucEJ0d52y2LaxB4PeZAxe/zS+CvKp8WaqcNY8Mn2hvXbSQYhCb41jjGSaM+/WH+AZwJhOr5Dk/0cH3ue7oGHG3EJlYxWux2b70GFHbaYVl7cu+YWbWlidaFffeXQvtS5j4MeJ31p1I9MOJfjh7ZIsd07Ahh6Q0iMhaclQe1WVuTH47fMND3HE+ZnjXO6pOtPYwqcBwEs5hUlQqO5l/z0w1G00e4QpeyuzKNbdfAE3cuRB9+JUmmxQczsz/g4DNRcuieOrAOno0yj/MpjNLejDucdxYQ2jTqRTVNReQ0akKL2Pmg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=H/zKahurwo7ZsQ0Fkij78L336XOJoyyMVYL/lrdBVBA=;
 b=KSaMyJoggstDPS6DulmxOwS2mH7793wUrCuHadrGOSN2xr+mkdBNJeyQol8LTPRH18bLeoPhoqDZoX3AQ7m2UruI1J3N8St6qCzQCZKhnGMouxpXpScPj1px5AbRz6/iPUF6lP9RJ0gdxcbf98uvjCGI/OJTi9bE18Ya0cLRlnrcnsjifD8jqC3XS6KANQbeoL7962wwOSTdYG2GE4v752ZA36Q+l7mOdMLlWDBUkPGJtvcwCC/nv7bErKrtza97W5MkFlvhRnU/7kxjZWPI9WJ9HxCWDJxP2FTHQ4yNgop5yhMlqj2lvYk78mYoESOy0WlVEg0qWGPOogY+rV665g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 165.204.84.17) smtp.rcpttodomain=kernel.org smtp.mailfrom=amd.com; dmarc=pass
 (p=quarantine sp=quarantine pct=100) action=none header.from=amd.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=H/zKahurwo7ZsQ0Fkij78L336XOJoyyMVYL/lrdBVBA=;
 b=u72INwTAq0LGDaO2Gv5CGAVO8y07rYzhyLoNyTN8S4ANeyCvWqkJAEqckJ3avbGiSiLH8hN2f0kRMebkU3UBE5O0x6Y+50RuWeRIrDKyJdW6Qkhx8TdCghxqC9bQSlbczqFQW9FdqIQ91ba2HkCAnA+4sTCmvBlIb6jIFfToP6Y=
Received: from SA0PR13CA0026.namprd13.prod.outlook.com (2603:10b6:806:130::31)
 by DM6PR12MB4388.namprd12.prod.outlook.com (2603:10b6:5:2a9::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.25.24; Mon, 18 May
 2026 15:55:48 +0000
Received: from SN1PEPF000397B4.namprd05.prod.outlook.com
 (2603:10b6:806:130:cafe::57) by SA0PR13CA0026.outlook.office365.com
 (2603:10b6:806:130::31) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.21.48.13 via Frontend Transport; Mon, 18
 May 2026 15:55:48 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 165.204.84.17)
 smtp.mailfrom=amd.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=amd.com;
Received-SPF: Pass (protection.outlook.com: domain of amd.com designates
 165.204.84.17 as permitted sender) receiver=protection.outlook.com;
 client-ip=165.204.84.17; helo=satlexmb07.amd.com; pr=C
Received: from satlexmb07.amd.com (165.204.84.17) by
 SN1PEPF000397B4.mail.protection.outlook.com (10.167.248.58) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.21.48.11 via Frontend Transport; Mon, 18 May 2026 15:55:48 +0000
Received: from SATLEXMB04.amd.com (10.181.40.145) by satlexmb07.amd.com
 (10.181.42.216) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.2.2562.41; Mon, 18 May
 2026 10:55:47 -0500
Received: from satlexmb08.amd.com (10.181.42.217) by SATLEXMB04.amd.com
 (10.181.40.145) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.39; Mon, 18 May
 2026 10:55:47 -0500
Received: from [172.19.71.207] (10.180.168.240) by satlexmb08.amd.com
 (10.181.42.217) with Microsoft SMTP Server id 15.2.2562.41 via Frontend
 Transport; Mon, 18 May 2026 10:55:46 -0500
Message-ID: <0f0dc434-dff9-a6cc-a5a1-2d200eef5905@amd.com>
Date: Mon, 18 May 2026 08:55:41 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>,
	<ogabbay@kernel.org>, <quic_jhugo@quicinc.com>, <mario.limonciello@amd.com>,
	<karol.wachowski@linux.intel.com>
References: <20260515155332.743097-1-lizhi.hou@amd.com>
 <2a5cfc68-61ae-4399-86b3-3e16dfd1e42a@amd.com>
From: Lizhi Hou <lizhi.hou@amd.com>
In-Reply-To: <2a5cfc68-61ae-4399-86b3-3e16dfd1e42a@amd.com>
Received-SPF: None (SATLEXMB04.amd.com: lizhi.hou@amd.com does not designate
 permitted sender hosts)
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN1PEPF000397B4:EE_|DM6PR12MB4388:EE_
X-MS-Office365-Filtering-Correlation-Id: 97dbe1ef-4b27-449d-7135-08deb4f5edb1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|1800799024|36860700016|376014|82310400026|18002099003|22082099003|56012099003|11063799003|4143699003;
X-Microsoft-Antispam-Message-Info: 
	ylyAItKh+0MEQsW/pLh/uDdu/zSeuZ+pUejc3bTP95NyukJ7fuIMRxTK5xlhR+KGglpJnpxBYZKhxPa5PdVsAGyn4zykHb7sV+x9AujmmorNIrQeRf0YwqjBSbaLQIxl8UMm/nDbbViRbhdaUcyNQBhcSiAXWPK2zSU2AKOQLqqXW4hVjZGW0VCEWQHf14fbDpJV8p0tXou0W8YRlEwVigjPj88tAa//Ew4waekk2ZJLtdhVlWU4+DEmeeeIP6p+qlqKa0oyUVMnogUUSUQrbXvgdLrdaVWHJ/ajJTJoyRqcI1cVLe8+lwU++vowQPPaTtmPTaMvDMwsEkrneK++0TJPe+czdxa+dTFwLXORrnPwQOxae191seLHmHQfsVUQiB6K+UDybZDpp09p8hOXu90hWa8pybTN6Icp1OffoBxgv14/o8kqgXDhEiHLEFKqzbx1YT66j/E5f00Pkhzy0D4GRxRIjUaBrkdpgmQQQ9GqR8Nmn2YT8disINUWVkZIy+wQVHBn7PSr4yDXz3OGQPYzOHVS6+H9/1trWCt/ptlpOrsy+NPe395VwoTArTDPt/1v6RRhX9OVwhFBw4heXXjpxqp0luKte3Ka04VV+cTkLUjin/va328FQWmD2Dvp/nRNuD3yVsateWo7D8zz15hEqW877Ld6KqaBs41k/dEGPPhbpVxS15uV01Daxtrog0gu0BDO39zTN25ZDkiYRmp2OUhFjnX+HFd+NDc98XM=
X-Forefront-Antispam-Report: 
	CIP:165.204.84.17;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:satlexmb07.amd.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(1800799024)(36860700016)(376014)(82310400026)(18002099003)(22082099003)(56012099003)(11063799003)(4143699003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	gCMPKi+O3EXKU+IH4cGCHPHcGIOR5gDFWOeEhLHb5UlMGWfG1GevCwylHyTFE6q7VmjsQwS32PI5tnFrZywEHd+yFl8p+Tvns8UAkFoGMRN5rSaiV/EIhB5UMx+R78AJ/7BWAP8Y4avgnphWHkS4FaiDVdZKVSLWisQGQ8ZqqWSfvUkAnOX6i8V+Sto85DYHWWrvTNdhXi186EHKxSr1hvlxwpawgLirZN7tC/g34hvECPfsjq+Pt61Tgfp1mNJRz6iPEfWqHLU22CnrOVtw7LuGc8DuoVet+mevz/KSz+Omen/LDj2r6nRTOA1v2CUOe/wCkczHH9MzPwUhZPicxVWhBS3ndD19GQPfQtQDWSfLDGfeJ0R+3pOmYTpPgjBILTHMxoM84EwjLQ6qY8YvQar4ex2KpE9AI/gsgP86RfAtBrjy5umn8ij1sWdg2EWE
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 May 2026 15:55:48.0315
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 97dbe1ef-4b27-449d-7135-08deb4f5edb1
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=3dd8961f-e488-4e60-8e11-a82d994e183d;Ip=[165.204.84.17];Helo=[satlexmb07.amd.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	SN1PEPF000397B4.namprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR12MB4388
X-Spamd-Bar: ---
X-MailFrom: lizhi.hou@amd.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: ZFHHPDI6YMIGBLK5WLQMVL4TWVMP45B3
X-Message-ID-Hash: ZFHHPDI6YMIGBLK5WLQMVL4TWVMP45B3
X-Mailman-Approved-At: Tue, 19 May 2026 10:46:26 +0000
CC: linux-kernel@vger.kernel.org, linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org, simona@ffwll.ch, max.zhen@amd.com, sonal.santan@amd.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH V1] accel/amdxdna: Remove mmap and export support for ubuf
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ZFHHPDI6YMIGBLK5WLQMVL4TWVMP45B3/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [3.09 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[amd.com : SPF not aligned (relaxed),quarantine];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_DKIM_REJECT(1.00)[amd.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_COUNT_SEVEN(0.00)[8];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[amd.com:mid,amd.com:email,lists.linaro.org:rdns,lists.linaro.org:helo,linaro.org:email];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[lizhi.hou@amd.com,linaro-mm-sig-bounces@lists.linaro.org];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	DKIM_TRACE(0.00)[amd.com:-]
X-Rspamd-Queue-Id: D725A57CC64
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

DQpPbiA1LzE4LzI2IDA0OjQ2LCBDaHJpc3RpYW4gS8O2bmlnIHdyb3RlOg0KPg0KPiBPbiA1LzE1
LzI2IDE3OjUzLCBMaXpoaSBIb3Ugd3JvdGU6DQo+PiBVYnVmIHBhZ2VzIHNob3VsZCBub3QgYmUg
bW1hcGVkIG9yIGV4cG9ydGVkLiBSZW1vdmUgdGhlIHVidWYgbW1hcCBjYWxsYmFjaw0KPj4gYW5k
IHJldHVybiAtRU9QTk9UU1VQUCB3aGVuIGV4cG9ydGluZyB1YnVmIG9iamVjdHMuDQo+Pg0KPj4g
dWJ1ZiB2bWFwIGlzIGFsc28gcmVtb3ZlZCBmb3IgdGhlcmUgaXMgbm90IGEgcmVhbCB1c2UgY2Fz
ZSB5ZXQuDQo+Pg0KPj4gRml4ZXM6IGJkNzJkNGFjZGExMCAoImFjY2VsL2FtZHhkbmE6IFN1cHBv
cnQgdXNlciBzcGFjZSBhbGxvY2F0ZWQgYnVmZmVyIikNCj4+IENjOiBDaHJpc3RpYW4gS29lbmln
IDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+DQo+PiBTaWduZWQtb2ZmLWJ5OiBMaXpoaSBIb3Ug
PGxpemhpLmhvdUBhbWQuY29tPg0KPj4gLS0tDQo+PiAgIGRyaXZlcnMvYWNjZWwvYW1keGRuYS9h
bWR4ZG5hX2dlbS5jICB8ICA5ICsrKysrKystDQo+PiAgIGRyaXZlcnMvYWNjZWwvYW1keGRuYS9h
bWR4ZG5hX2dlbS5oICB8ICAyICsrDQo+PiAgIGRyaXZlcnMvYWNjZWwvYW1keGRuYS9hbWR4ZG5h
X3VidWYuYyB8IDMyIC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0NCj4+ICAgMyBmaWxlcyBj
aGFuZ2VkLCAxMCBpbnNlcnRpb25zKCspLCAzMyBkZWxldGlvbnMoLSkNCj4+DQo+PiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9hY2NlbC9hbWR4ZG5hL2FtZHhkbmFfZ2VtLmMgYi9kcml2ZXJzL2FjY2Vs
L2FtZHhkbmEvYW1keGRuYV9nZW0uYw0KPj4gaW5kZXggMzE5ZDIwNjRmYWZhLi42MDg3MjY0YmEx
YjUgMTAwNjQ0DQo+PiAtLS0gYS9kcml2ZXJzL2FjY2VsL2FtZHhkbmEvYW1keGRuYV9nZW0uYw0K
Pj4gKysrIGIvZHJpdmVycy9hY2NlbC9hbWR4ZG5hL2FtZHhkbmFfZ2VtLmMNCj4+IEBAIC00OTIs
NiArNDkyLDkgQEAgc3RhdGljIHN0cnVjdCBkbWFfYnVmICphbWR4ZG5hX2dlbV9wcmltZV9leHBv
cnQoc3RydWN0IGRybV9nZW1fb2JqZWN0ICpnb2JqLCBpbnQNCj4+ICAgCXN0cnVjdCBhbWR4ZG5h
X2dlbV9vYmogKmFibyA9IHRvX3hkbmFfb2JqKGdvYmopOw0KPj4gICAJREVGSU5FX0RNQV9CVUZf
RVhQT1JUX0lORk8oZXhwX2luZm8pOw0KPj4gICANCj4+ICsJaWYgKGFiby0+cHJpKQ0KPj4gKwkJ
cmV0dXJuIEVSUl9QVFIoLUVPUE5PVFNVUFApOw0KPj4gKw0KPj4gICAJaWYgKGFiby0+ZG1hX2J1
Zikgew0KPj4gICAJCWdldF9kbWFfYnVmKGFiby0+ZG1hX2J1Zik7DQo+PiAgIAkJcmV0dXJuIGFi
by0+ZG1hX2J1ZjsNCj4+IEBAIC03MTYsNiArNzE5LDcgQEAgYW1keGRuYV9nZW1fY3JlYXRlX3Vi
dWZfb2JqZWN0KHN0cnVjdCBkcm1fZGV2aWNlICpkZXYsIHN0cnVjdCBhbWR4ZG5hX2RybV9jcmVh
dGUNCj4+ICAgew0KPj4gICAJc3RydWN0IGFtZHhkbmFfZGV2ICp4ZG5hID0gdG9feGRuYV9kZXYo
ZGV2KTsNCj4+ICAgCXN0cnVjdCBhbWR4ZG5hX2RybV92YV90YmwgdmFfdGJsOw0KPj4gKwlzdHJ1
Y3QgYW1keGRuYV9nZW1fb2JqICphYm87DQo+PiAgIAlzdHJ1Y3QgZHJtX2dlbV9vYmplY3QgKmdv
Ymo7DQo+PiAgIAlzdHJ1Y3QgZG1hX2J1ZiAqZG1hX2J1ZjsNCj4+ICAgDQo+PiBAQCAtNzQyLDcg
Kzc0NiwxMCBAQCBhbWR4ZG5hX2dlbV9jcmVhdGVfdWJ1Zl9vYmplY3Qoc3RydWN0IGRybV9kZXZp
Y2UgKmRldiwgc3RydWN0IGFtZHhkbmFfZHJtX2NyZWF0ZQ0KPj4gICANCj4+ICAgCWRtYV9idWZf
cHV0KGRtYV9idWYpOw0KPj4gICANCj4+IC0JcmV0dXJuIHRvX3hkbmFfb2JqKGdvYmopOw0KPj4g
KwlhYm8gPSB0b194ZG5hX29iaihnb2JqKTsNCj4+ICsJYWJvLT5wcmkgPSB0cnVlOw0KPj4gKw0K
Pj4gKwlyZXR1cm4gYWJvOw0KPj4gICB9DQo+PiAgIA0KPj4gICBzdGF0aWMgc3RydWN0IGFtZHhk
bmFfZ2VtX29iaiAqDQo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9hY2NlbC9hbWR4ZG5hL2FtZHhk
bmFfZ2VtLmggYi9kcml2ZXJzL2FjY2VsL2FtZHhkbmEvYW1keGRuYV9nZW0uaA0KPj4gaW5kZXgg
NGZjNDhhMTE4OWQyLi4xNjJlNTQ5OWY1ZTAgMTAwNjQ0DQo+PiAtLS0gYS9kcml2ZXJzL2FjY2Vs
L2FtZHhkbmEvYW1keGRuYV9nZW0uaA0KPj4gKysrIGIvZHJpdmVycy9hY2NlbC9hbWR4ZG5hL2Ft
ZHhkbmFfZ2VtLmgNCj4+IEBAIC01NCw2ICs1NCw4IEBAIHN0cnVjdCBhbWR4ZG5hX2dlbV9vYmog
ew0KPj4gICANCj4+ICAgCS8qIFRydWUsIGlmIEJPIGlzIG1hbmFnZWQgYnkgWFJULCBub3QgYXBw
bGljYXRpb24gKi8NCj4+ICAgCWJvb2wJCQkJaW50ZXJuYWw7DQo+PiArCS8qIFRydWUsIGlmIEJP
IGlzIG5vdCBleHBvcnRhYmxlICovDQo+PiArCWJvb2wJCQkJcHJpOw0KPiBUaGF0IG1lbWJlciBu
YW1lIGNvdWxkIGJlIGltcHJvdmVkLg0KU3VyZSwgSSB3aWxsIGNoYW5nZSBpdCB0byBwcml2YXRl
X2J1ZmZlci4NCj4NCj4+ICAgfTsNCj4+ICAgDQo+PiAgICNkZWZpbmUgdG9fZ29iaihvYmopICAg
ICgmKG9iaiktPmJhc2UuYmFzZSkNCj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2FjY2VsL2FtZHhk
bmEvYW1keGRuYV91YnVmLmMgYi9kcml2ZXJzL2FjY2VsL2FtZHhkbmEvYW1keGRuYV91YnVmLmMN
Cj4+IGluZGV4IDM3NjkyMTBjNTVjYy4uZGY0YWIyMjVmYmY5IDEwMDY0NA0KPj4gLS0tIGEvZHJp
dmVycy9hY2NlbC9hbWR4ZG5hL2FtZHhkbmFfdWJ1Zi5jDQo+PiArKysgYi9kcml2ZXJzL2FjY2Vs
L2FtZHhkbmEvYW1keGRuYV91YnVmLmMNCj4+IEBAIC04Nyw0MiArODcsMTAgQEAgc3RhdGljIGNv
bnN0IHN0cnVjdCB2bV9vcGVyYXRpb25zX3N0cnVjdCBhbWR4ZG5hX3VidWZfdm1fb3BzID0gew0K
Pj4gICAJLmZhdWx0ID0gYW1keGRuYV91YnVmX3ZtX2ZhdWx0LA0KPj4gICB9Ow0KPiBBcyBwb2lu
dGVkIG91dCBieSB0aGUga2VybmVsIHRlc3Qgcm9ib3QgdGhlIGFtZHhkbmFfdWJ1Zl92bV9vcHMg
c3RydWN0dXJlIGFuZCBhbWR4ZG5hX3VidWZfdm1fZmF1bHQgZnVuY3Rpb24gaXMgbm93IGRlYWQg
Y29kZSwgcGxlYXNlIHJlbW92ZSBhcyB3ZWxsLg0KDQpXaWxsIGZpeCB0aGlzIGFuZCBwb3N0IFYy
IHBhdGNoLg0KDQpUaGFua3MgZm9yIHJldmlld2luZy4NCg0KTGl6aGkNCg0KPg0KPiBBcGFydCBm
cm9tIHRoYXQgbG9va3MgZ29vZCB0byBtZSwNCj4gQ2hyaXN0aWFuLg0KPg0KPj4gICANCj4+IC1z
dGF0aWMgaW50IGFtZHhkbmFfdWJ1Zl9tbWFwKHN0cnVjdCBkbWFfYnVmICpkYnVmLCBzdHJ1Y3Qg
dm1fYXJlYV9zdHJ1Y3QgKnZtYSkNCj4+IC17DQo+PiAtCXN0cnVjdCBhbWR4ZG5hX3VidWZfcHJp
diAqdWJ1ZiA9IGRidWYtPnByaXY7DQo+PiAtDQo+PiAtCXZtYS0+dm1fb3BzID0gJmFtZHhkbmFf
dWJ1Zl92bV9vcHM7DQo+PiAtCXZtYS0+dm1fcHJpdmF0ZV9kYXRhID0gdWJ1ZjsNCj4+IC0Jdm1f
ZmxhZ3Nfc2V0KHZtYSwgVk1fUEZOTUFQIHwgVk1fRE9OVEVYUEFORCB8IFZNX0RPTlREVU1QKTsN
Cj4+IC0NCj4+IC0JcmV0dXJuIDA7DQo+PiAtfQ0KPj4gLQ0KPj4gLXN0YXRpYyBpbnQgYW1keGRu
YV91YnVmX3ZtYXAoc3RydWN0IGRtYV9idWYgKmRidWYsIHN0cnVjdCBpb3N5c19tYXAgKm1hcCkN
Cj4+IC17DQo+PiAtCXN0cnVjdCBhbWR4ZG5hX3VidWZfcHJpdiAqdWJ1ZiA9IGRidWYtPnByaXY7
DQo+PiAtCXZvaWQgKmt2YTsNCj4+IC0NCj4+IC0Ja3ZhID0gdm1hcCh1YnVmLT5wYWdlcywgdWJ1
Zi0+bnJfcGFnZXMsIFZNX01BUCwgUEFHRV9LRVJORUwpOw0KPj4gLQlpZiAoIWt2YSkNCj4+IC0J
CXJldHVybiAtRUlOVkFMOw0KPj4gLQ0KPj4gLQlpb3N5c19tYXBfc2V0X3ZhZGRyKG1hcCwga3Zh
KTsNCj4+IC0JcmV0dXJuIDA7DQo+PiAtfQ0KPj4gLQ0KPj4gLXN0YXRpYyB2b2lkIGFtZHhkbmFf
dWJ1Zl92dW5tYXAoc3RydWN0IGRtYV9idWYgKmRidWYsIHN0cnVjdCBpb3N5c19tYXAgKm1hcCkN
Cj4+IC17DQo+PiAtCXZ1bm1hcChtYXAtPnZhZGRyKTsNCj4+IC19DQo+PiAtDQo+PiAgIHN0YXRp
YyBjb25zdCBzdHJ1Y3QgZG1hX2J1Zl9vcHMgYW1keGRuYV91YnVmX2RtYWJ1Zl9vcHMgPSB7DQo+
PiAgIAkubWFwX2RtYV9idWYgPSBhbWR4ZG5hX3VidWZfbWFwLA0KPj4gICAJLnVubWFwX2RtYV9i
dWYgPSBhbWR4ZG5hX3VidWZfdW5tYXAsDQo+PiAgIAkucmVsZWFzZSA9IGFtZHhkbmFfdWJ1Zl9y
ZWxlYXNlLA0KPj4gLQkubW1hcCA9IGFtZHhkbmFfdWJ1Zl9tbWFwLA0KPj4gLQkudm1hcCA9IGFt
ZHhkbmFfdWJ1Zl92bWFwLA0KPj4gLQkudnVubWFwID0gYW1keGRuYV91YnVmX3Z1bm1hcCwNCj4+
ICAgfTsNCj4+ICAgDQo+PiAgIHN0YXRpYyBpbnQgcmVhZG9ubHlfdmFfZW50cnkoc3RydWN0IGFt
ZHhkbmFfZHJtX3ZhX2VudHJ5ICp2YV9lbnQpDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8t
bW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBs
aW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
